User.destroy_all
Product.destroy_all

product_list = [
  ["Wallet", "Travando’s Wallet offers 7 card pockets: 1 easy-access front pocket and 6 inner pockets. The slim wallet is ideal for carrying business cards, credit and debit cards, bills etc.", 27.99,  "https://i.imgur.com/hexP4i1.jpg"],
  ["Smartwatch", "Samsung Gear S Smartwatch, White 4GB (AT&T)",299.99, "https://i.imgur.com/3gSGAog.jpg"],
  ["Sunglasses", "Bluetooth links, easy to operate, can receive wireless calls on the glasses. A sound passed through directly to the auditory nerve bones, will not cause damage to the ear canal and eardrum, to maximize the protection of hearing.",99.99, "https://i.imgur.com/VjnDyJQ.jpg"],
  ["Overwatch Action Figure", "Stylized collectable stands 6 inches tall, perfect for any Overwatch fan!",19.55, "https://i.imgur.com/nCQkHba.jpg"],
  ["Game Console", "Built-in 168 classic games . It will take you back to your childhood",19.99, "https://i.imgur.com/X9DV2J5.jpg"],
  ["Walkie Talkies ", "One-to-one and one-to-more communication function allow more walkie talkie can communicate on same channel",14.99, "https://i.imgur.com/V8dN6lx.jpg"],
  ["Magnet Building Blocks", "Creative and hot puzzle for enhancing assembly ability. Improve intelligence and imagination.",19.99, "https://i.imgur.com/XiC71Hi.png"],
  ["Millenium Falcon Bottle Opener", "Made in a galaxy far away", 3.99, "https://i.imgur.com/qVTibiK.jpg"],
  ["Slime", "Your order includes a dozen of glow in the dark slime, in 4 different neon colors.",19.99, "https://i.imgur.com/dWf5RWR.png"],
  ["Spiral Liquid Bubbler Timer ", "Our crystal clear sensory liquid bubblers consists of colorful mineral oil and water. When turned upside down the bubbly droplets ‘spiral down’ to the bottom.",8.87, "https://i.imgur.com/g1ECc2b.jpg"],
  ["Dinosaurs ", "12 Boxed Sizeable 7” dinosaurs Includes Book with history of each dinosaur will inspire imaginative play and curiosity about science.",19.99, "https://i.imgur.com/Yk0z0EP.jpg"],
  ["Codenames", "Game for ages 8+",8.53, "https://i.imgur.com/a4n1fRL.jpg"],
  ["MegaScope", "Be the neighborhoods intelligence agent with this exclusive periscope and megaphone combination",38.79, "https://i.imgur.com/hAyC7hX.png"],
  ["Magic 8 Ball", "The original Magic 8 Ball novelty toy has all the answers to your deepest questions!",8.50, "https://i.imgur.com/TJUrHzt.jpg"],
  ["Etch A Sketch", "Left knob draws left and right; right knob draws up and down. Turn both knobs together for angles and curves!",9.99, "https://i.imgur.com/0EFqLe6.jpg"],
  ["Slinky", "Stretches like an accordion, bounces and walks down steps",19.99, "https://i.imgur.com/fnEjfgb.jpg"],
  ["Glo-Gloves", "These LED Light Up Gloves are made from soft cotton which is very comfortable to wear even for a long time.",12.99, "https://i.imgur.com/pxjOEcf.jpg"],
  ["Pizza Cutter", "The lightsaber handle is modeled after Darth Vaders iconic weapon of choice",12.95, "https://i.imgur.com/T96hDrq.jpg"],
  ["Terrarium", "Experience the wonder of nature with the Grow N' Glow Terrarium! This kit allows you to craft, plant, water and grow your own terrarium tabletop garden.",5.99, "https://i.imgur.com/kLmiQ45.jpg"],
  ["Colored Pencils", "Feature thick, intensely colored cores for smooth, rich laydown",4.44, "https://i.imgur.com/BC8YpjZ.jpg"],

]

product_list.each do |productname, desc, cost, imgurl|
  Product.create( name: productname, description: desc, price: cost, image: imgurl )
end

user_list = [
  [ "admin@admin.com", "password", true ],
  [ "user@user.com", "password", false ],
]
user_list.each do |usr_email, pswrd, role|
  User.create!( email: usr_email, password: pswrd, admin: role )
end

p "Created #{Product.count} products"
p "Created #{User.count} users"
