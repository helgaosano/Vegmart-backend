# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# puts "Deleting old data..."
# Category.destroy_all
# Product.destroy_all
# Consumer.destroy_all
# Cart.destroy_all

puts "Creating categories"
Category.create(name: "vegetables")
Category.create(name: "fruits")
Category.create(name: "dairy products")

puts "Creating products"
Product.create(image_url: "https://thumbs.dreamstime.com/b/green-avocado-cut-half-isolated-white-background-fresh-whole-seed-as-package-design-element-60968285.jpg" , name: "Organic Avocado", description: "Avocados are nutritious and very healthy in reducing cholesterol. An excellent source of vitamins and minerals. makes a delicous salad, smoothies, scrambles and avocado dips.", price: 1200, quantity: "1.5kgs", category_id: 2)
Product.create(image_url: "https://thumbs.dreamstime.com/b/fresh-strawberry-white-background-strawberry-117646241.jpg", name: "Strawberry", description:"Bright red color fruit with a juicy texture and sweetness. Naturally delivers vitamins and fibers.Excellent aroma for salads and smoothies", price: 1200, quantity: "2kgs", category_id: 2)
Product.create(image_url: "https://thumbs.dreamstime.com/b/romaine-lettuce-14549964.jpg", name: "Romaine Lettuce", description: "Crisp, dark green and stiff leaves rich in minerals and fibre content. It can be server with salads", price: 2000, quantity: "1kg", category_id: 1 )
Product.create(image_url: "https://thumbs.dreamstime.com/b/broccoli-flowers-5854716.jpg", name: "Broccoli", description:"Thick stems and florets offer a csrip texture, with the earthy, peppery flavor", price: 2500, quantity: "2kg", category_id: 1 )
Product.create(image_url: "https://thumbs.dreamstime.com/b/green-apple-leaf-slice-isolated-white-ripe-background-clipping-path-45471482.jpg" , name: "Green Apples", description: "Has mild, sweet flavor. Juicy, crisp and light yellow fresh. Excellent for eating, salads and preserved pies.", price: 3400, quantity: "2kg", category_id: 2 )

puts "Creating consumers"
Consumer.create(name: "Caren", email_address: "caren@gmail.com")
Consumer.create(name: "Kim", email_address: "kim@yahoo.com")
Consumer.create(name: "May", email_address: "may@nutriconsultancy.org")

puts "Creating carts"
Cart.create(consumer_id: 1, product_id:1)
Cart.create(consumer_id: 1, product_id:2)
Cart.create(consumer_id: 2, product_id:1)
Cart.create(consumer_id: 3, product_id:2)
Cart.create(consumer_id: 2, product_id:3)
Cart.create(consumer_id: 3, product_id:4)
Cart.create(consumer_id: 2, product_id:5)

puts "✅ Done seeding!"