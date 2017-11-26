Category.delete_all
Category.create!([
  {name: "food"},
  {name: "junk food"},
  {name: "equipment"},
  {name: "indoor equipment"},
  {name: "outdoor equipment"},
  {name: "healthy food"}
])
Image.delete_all


Product.delete_all

Product.create!([
  {name: "xbox", price: "300.99", description: "gaming hype!!"},
  {name: "Starbucks Coffee", price: "7.99", description: "freshly brewed"},
  {name: "Bike", price: "210.99", description: "a really sleek and fast bike, you will love it! They are available in red, green, black, blue, gray, purple, orange, yellow, white, and tie dye"},
  {name: "skyrim", price: "60.0", description: "rpg game"},
  {name: "mug", price: "5.0", description: "for coffee or tea"},
  {name: "oblivion", price: "40.0", description: "elder scrolls game from 2006"},
  {name: "tennis racket", price: "100.0", description: "very accurate, light weight"},
  {name: "lays potato chips", price: "4.99", description: "crunchy"},
  {name: "teddy bear", price: "22.0", description: "cute and cuddly"},
  {name: "o'douls", price: "12.0", description: "non-alcoholic beer"},
  {name: "Big Mac", price: "6.99", description: "very healthy, not"},
  {name: "drone", price: "400.0", description: "spy on your neighbors!"},
  {name: "Bananas", price: "10.0", description: "very ripe and tasty bananas"}
])
Supplier.delete_all

User.delete_all
User.create!([
  {name: "sammy", email: "sammy@gmail.com", password_digest: "$2a$10$YWaJ58wrrlw//0/dsFt1AuPlN/s7/3wQlfRzIen3Rb/lOZ5D1yVkO", admin: false},
  {name: "obama", email: "obama@gmail.com", password_digest: "$2a$10$Snpx50nFUnjl6JB5.TMm6OX2mR74JD5aMfWIU31uqLHAZyNXImIza", admin: false},
  {name: "dave", email: "letterman@gmail.com", password_digest: "$2a$10$N9QZztZOLFvQvjLucVdxIObPsKa5AuZUUJm.fqH7Ra8wdUYy1A042", admin: false},
  {name: "ebineezer", email: "scrooge@gmail.com", password_digest: "$2a$10$1zTnsTyNXxMHxFYJoz7p8.ebVDjix/QkWBlbI5fyquGfO/oxOqfPS", admin: false},
  {name: "justin", email: "jskord@gmail.com", password_digest: "$2a$10$OKW0IdIGxdqG5RuiKm1WUOMKBJBPTLz/7N78PdaT80BDL8v7Tp.1e", admin: true}
])
