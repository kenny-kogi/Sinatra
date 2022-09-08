puts "🌱 Seeding spices..."

# Seed your database here
Category.create(category_name: "Literaure")
Category.create(category_name: "Linguistics")
Book.create(title: "River Between", description: "Nice book", publisher: "Longhorn", category_id: 1)
Book.create(title: "River and Source", description: "Awsome book", publisher: "Longhorn", category_id: 2)
Author.create(name: "Keneth", city: "Nairobi")
Book.create(title: "Picky Ponky", description: "Great book", publisher: "Longhorn", category_id: 2, author_id: 1)

puts "✅ Done seeding!"
