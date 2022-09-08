class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/books' do
    review = Book.all
    review.to_json(include: :author)
  end

  post "/books" do
    new_book = Book.create(title: params[:title], description: params[:description], publisher: params[:publisher], category_id: params[:category_id])

    if params[:author_id]
      author_instance = Author.find_by(id: params[:author_id])
      new_book.author = author_instance
      new_book.save
    end
    new_book.save
    new_book.to_json(include: :author)
  end

  put '/books/:id' do 
    book = Book.find_by(id: params[:id])
    book.update(title: params[:title]) if params[:title]
    book.update(description: params[:description]) if params[:description]
      book.to_json(include: :author)
  end

  delete '/books/:id' do 
    book = Book.find_by(id: params[:id])
    book.destroy
    book.to_json
  end

  post '/authors' do
    new_author = Author.create(name: params[:name], city: params[:city])
    new_author.to_json
  end

  get '/authors' do
    review = Author.all
    review.to_json   
  end

  post "/book/author/:book_id/:author_id" do
    book = Book.find_by(id: params[:book_id])
    author_instance = Author.find_by(id: params[:author_id])
    book.author = author_instance
    book.save
    book.to_json(include: :author)
  end

  get '/categories' do
    category = Category.all
    category.to_json   
  end

  post '/categories' do
    new_category = Category.create(category_name: params[:category_name])
    new_category.to_json
  end


end
