User.destroy_all
Product.destroy_all

product_list = [
  ["blue man", "Illustration", "https://i.imgur.com/2q7koU5.jpg", "https://i.imgur.com/dqINJvm.jpg", "Created using Procreate app on iPad"],
  ["PP Cluster bags", "Packaging", "https://i.imgur.com/wxVZq0E.jpg", "https://i.imgur.com/supvCxq.jpg", "Foil pouch packaging for pretzel clusters."],
  ["Refocus", "Packaging", "https://i.imgur.com/tU8ogLl.jpg", "https://i.imgur.com/Y5vw7uu.jpg", "Six can designs for Refocus beverages."],
  ["PP Cluster tubes", "Packaging", "https://i.imgur.com/fTZvyh7.jpg", "https://i.imgur.com/FMNw1a0.jpg", "Three designs for Pretzel Perfection"],
  ["Motorola TalkAbout", "Ad", "https://i.imgur.com/li0MFn2.jpg", "https://i.imgur.com/w1sE6Ut.jpg", "Print ad for Motorola"],
  ["Montanye Ranch", "Logo", "https://i.imgur.com/MaIUaNo.jpg", "https://i.imgur.com/oJeoXHt.jpg", "designs for marketing material"],
  ["Hunting the West", "Magazine", "https://i.imgur.com/ocTk27w.jpg", "https://i.imgur.com/cg3bpNg.jpg", "Art Director for Hunting the West magazine"],
  ["Dragon", "Illustration", "https://i.imgur.com/Yai58Vz.jpg", "https://i.imgur.com/F7OpLKU.jpg", "Created using Procreate app on iPad"],
  ["Crowd", "Illustration", "https://i.imgur.com/SPniNrW.jpg", "https://i.imgur.com/7RjSxdV.jpg", "Created using Procreate app on iPad"],
  ["Hillsboro Library", "Logo", "https://i.imgur.com/6RN5Omo.jpg", "https://i.imgur.com/oZYE3dX.jpg", "Design for Library Foundation of Hillsboro"],
  ["Creepy Cat", "Illustration", "https://i.imgur.com/LHskiGN.jpg", "https://i.imgur.com/yaUEQNS.jpg", "Created using Procreate app on iPad"],
  ["Product Illustrations", "Illustration", "https://i.imgur.com/LO5P6nX.jpg", "https://i.imgur.com/SrT6ZIB.jpg", "Illustrations for product manual"]
]


product_list.each do |projname, cat, imgurl, imgurlsm, desc|
  Product.create( name: projname, description: cat, image: imgurl, price: imgurlsm, description: desc )
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
