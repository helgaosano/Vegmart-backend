puts "Deleting old data..."
Category.destroy_all
Product.destroy_all
Consumer.destroy_all
Cart.destroy_all

puts "Creating categories"
Category.create(name: "vegetables")
Category.create(name: "fruits")
Category.create(name: "dairy products")

puts "Creating products"
Product.create(image_url: "https://thumbs.dreamstime.com/b/green-avocado-cut-half-isolated-white-background-fresh-whole-seed-as-package-design-element-60968285.jpg" , name: "Organic Avocado", description: "Nutritious and healthy for delicous salad, smoothies, scrambles and avocado dips.", price: 1200, quantity: "1.5Kgs", category_id: 2)
Product.create(image_url: "https://thumbs.dreamstime.com/b/fresh-strawberry-white-background-strawberry-117646241.jpg", name: "Strawberry", description:"Has a juicy texture, sweetness and vitamins. Excellent aroma for salads and smoothies", price: 1200, quantity: "2Kgs", category_id: 2)
Product.create(image_url: "https://thumbs.dreamstime.com/b/romaine-lettuce-14549964.jpg", name: "Romaine Lettuce", description: "Crisp, dark green and stiff leaves rich in minerals and fibre content. It can be server with salads", price: 2000, quantity: "1Kg", category_id: 1 )
Product.create(image_url: "https://media.istockphoto.com/id/589435514/photo/fresh-red-apples-with-a-slice-on-white-background.jpg?s=612x612&w=0&k=20&c=IXFTzvq4A78p8SdK-DOirMeQ4kaIxbL8x2oIhG4zEqc=" , name: "Natural Red Apple", description: "Red fruit with unbelievable taste providing you with a nutritious beverage.", price: 3500, quantity: "4Kgs", category_id: 2)
Product.create(image_url: "https://media.istockphoto.com/id/465095412/photo/heap-of-carrots-isolated-on-a-white-background.jpg?s=612x612&w=0&k=20&c=S_-g9Bgio7tO2MWYdfZZkWlit4CVSFcvvkuBd4AyeN8=" , name: "Carrot Vegetable", description: "Root vegetable rich in vitamin A, vitamin K and calcium for healthy bones and good eyesight.", price: 3000, quantity: "3Kgs", category_id: 1)
Product.create(image_url: "https://thumbs.dreamstime.com/b/bowl-ghee-butter-isolated-white-225067720.jpg" , name: "Natural Ghee Bowl", description: "Nutritious and healthy dairy, great source of energy for the body, heart health and brain.", price: 1200, quantity: "1Kg", category_id: 3)
Product.create(image_url: "https://thumbs.dreamstime.com/b/bowl-greek-yogurt-fresh-berries-isolated-white-background-79866682.jpg", name: "Greek Yoghurt Bowl", description: "Typically thicker dairy yoghurt which is high in protein and supports healthy body composition. ", price: 4500, quantity: "2kgs", category_id: 3)
Product.create(image_url: "https://thumbs.dreamstime.com/b/broccoli-flowers-5854716.jpg", name: "Broccoli", description:"Thick stems and florets offer a csrip texture, with the earthy, peppery flavor", price: 2500, quantity: "2kgs", category_id: 1 )
Product.create(image_url: "https://thumbs.dreamstime.com/b/green-apple-leaf-slice-isolated-white-ripe-background-clipping-path-45471482.jpg" , name: "Green Apples", description: "Juicy, crisp and light yellow fresh. Excellent for eating, salads and preserved pies.", price: 3400, quantity: "2Kgs", category_id: 2 )
Product.create(image_url: "https://thumbs.dreamstime.com/b/tasty-tomatos-10666921.jpg" , name: "Tomatoes", description: "Tomatoes are great in salads and preserved pies. High fibre content and vitamins", price: 4500, quantity: "3Kgs", category_id: 1)
Product.create(image_url: "https://thumbs.dreamstime.com/b/butter-17156909.jpg" , name: "Organic Dairy Butter", description: "Creamy product sourced from dairy rich in vitamin D and calcium for strong immunity.", price: 1500, quantity: "1Kg", category_id: 3)
Product.create(image_url: "https://thumbs.dreamstime.com/b/organic-cucumber-slices-18938851.jpg" , name: "Cucumber", description: "Super nutritious and hydrating culinary vegetable with major nutrients and vitamins.", price: 6000, quantity: "4Kgs", category_id: 1)
Product.create(image_url: "https://thumbs.dreamstime.com/b/blueberries-bowl-25932046.jpg" , name: "Blueberry", description: "Juicy and sweet flavored fruit usedin salads and fruit juices. Provides vitamins.", price: 2500, quantity: "2Kgs", category_id: 2)
Product.create(image_url: "https://thumbs.dreamstime.com/b/oranges-7643209.jpg" , name: "Oranges", description: "Juicy and sweet flavored fruit super great in fruit drinks. Rich in vitamins", price: 1800, quantity: "3Kgs", category_id: 2)
Product.create(image_url: "https://thumbs.dreamstime.com/b/blue-cheese-wedge-18319707.jpg" , name: "Blue Cheese", description: "Delicious burst of flavour with a creamy interior made from organic milk and cream.", price: 2500, quantity: "2Kgs", category_id: 3)




puts "Creating consumers"
Consumer.create(name: "Caren", email_address: "caren@gmail.com", password_digest: "1234")
Consumer.create(name: "Kim", email_address: "kim@yahoo.com", password_digest: "4567")
Consumer.create(name: "May", email_address: "may@nutriconsultancy.org", password_digest: "12345")

puts "Creating carts"
Cart.create(consumer_id: 1, product_id:1)
Cart.create(consumer_id: 1, product_id:2)
Cart.create(consumer_id: 2, product_id:1)
Cart.create(consumer_id: 3, product_id:2)
Cart.create(consumer_id: 2, product_id:3)
Cart.create(consumer_id: 3, product_id:4)
Cart.create(consumer_id: 2, product_id:5)

puts "✅ Done seeding!"