puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Book", price: 10)
product2 = Product.create(name: "Pen", price: 15)
product3 = Product.create(name: "Pencil", price: 5)
product4 = Product.create(name: "Ruber", price: 2)
product5 = Product.create(name: "Cellotape", price: 3)

puts "Creating reviews..."


# Create Reviews Here
review1 = Review.create(start_rating: 5, comment: "Wonderfull product!", product_id: product1.id, user_id: user1.id)
review2 = Review.create(start_rating: 3, comment: "Fair deal, it breaks easily!", product_id: product3.id, user_id: user2.id)
review3 = Review.create(start_rating: 5, comment: " Amaizing product!", product_id: product2.id, user_id: user3.id)
review4 = Review.create(start_rating: 4, comment: "Nice product!", product_id: product5.id, user_id: user1.id)

puts "Seeding done!"