Category.create!([
  {name: "food"},
  {name: "junk food"},
  {name: "equipment"},
  {name: "indoor equipment"},
  {name: "outdoor equipment"},
  {name: "healthy food"}
])
CategoryProduct.create!([
  {product_id: 1, category_id: 5},
  {product_id: 1, category_id: 3},
  {product_id: 2, category_id: 1},
  {product_id: 2, category_id: 6},
  {product_id: 4, category_id: 4},
  {product_id: 4, category_id: 3},
  {product_id: 8, category_id: 1},
  {product_id: 8, category_id: 6},
  {product_id: 10, category_id: 1},
  {product_id: 10, category_id: 2},
  {product_id: 11, category_id: 1},
  {product_id: 11, category_id: 2},
  {product_id: 12, category_id: 3},
  {product_id: 12, category_id: 4},
  {product_id: 13, category_id: 3},
  {product_id: 13, category_id: 4},
  {product_id: 14, category_id: 3},
  {product_id: 14, category_id: 4},
  {product_id: 15, category_id: 3},
  {product_id: 15, category_id: 5}
])
Image.create!([
  {url: "http://www.bikesdirect.com/products/dawes/images/lt-sport-red-xiv-2100.jpg", product_id: 1},
  {url: "http://dreamatico.com/data_images/bike/bike-3.jpg", product_id: 1},
  {url: "https://peopledotcom.files.wordpress.com/2016/08/banana-800.jpg", product_id: 2},
  {url: "http://compass.xbox.com/assets/d3/0c/d30cbe5c-abdb-4c47-9833-510c1a47fe0f.jpg?n=XboxOne_Controller_product_2_960x540.jpg", product_id: 4},
  {url: "https://c.s-microsoft.com/sv-se/CMSImages/Xbox_Vanilla_1012_540x304_EN_US.jpg?version=8cd68b4f-fe79-7359-0747-b254cd75c1b6", product_id: 4},
  {url: "http://forthemommas.com/wp-content/uploads/2015/08/starbucks-coffee-coupons.jpg", product_id: 8},
  {url: "http://www.fritolay.com/images/default-source/blue-bag-image/lays-sour-cream-onion.tmb-.png?sfvrsn=1", product_id: 10},
  {url: "https://metvnetwork.s3.amazonaws.com/iqZfU-1457975544-248-lists-header.jpg", product_id: 10},
  {url: "http://www.fritolay.com/images/default-source/default-album/how-we-make-lays2a9a37e0cc54631c95cbff00000d71c6.png?sfvrsn=0", product_id: 10},
  {url: "http://www.chewboom.com/wp-content/uploads/2016/01/Big-Mac-Family.jpg", product_id: 11},
  {url: "http://aht.seriouseats.com/images/20110512-big-mac-burger-lab-18.jpg", product_id: 11},
  {url: "http://static2.businessinsider.com/image/57011f4052bcd022008ba7cd-1190-625/mcdonalds-has-unveiled-its-hugest-big-mac-ever.jpg", product_id: 11},
  {url: "http://www.geforce.com/sites/default/files-world/screenshots/elder-scrolls-v-skyrim/screenshot-8.jpg", product_id: 12},
  {url: "http://www.hitpromo.net/imageManager/show/7124_white.jpg", product_id: 13},
  {url: "https://s.candybanana.com/images/1da8/oblivion_game_of_the_year_edition_6.jpg", product_id: 14},
  {url: "http://cliparts.co/cliparts/pco/dLb/pcodLb5ri.jpg", product_id: 15},
  {url: "http://cdn3-www.wholesomebabyfood.momtastic.com/assets/uploads/2015/04/banana-for-baby.jpg", product_id: 2},
  {url: "http://bikes.urbanoutfitters.com/images/gallery_aristotle_mixte.jpg", product_id: 1},
  {url: "http://compass.xbox.com/assets/23/0d/230dc52a-8f0e-40bf-bbd1-c51fdb8371e3.png?n=Homepage-360-UA_Upgrade-big_1056x594.png", product_id: 4},
  {url: "http://www.slate.com/content/dam/slate/blogs/moneybox/2015/02/18/starbucks_coffee_subscription_how_to_get_the_chain_s_small_lot_coffee_beans/89765584-starbucks-coffee-cup-and-beans-are-seen-in-this-photo.jpg.CROP.cq5dam_web_1280_1280_jpeg.jpg", product_id: 8},
  {url: "https://s-media-cache-ak0.pinimg.com/originals/43/c5/f8/43c5f839a8ac9aac9a40f03397edac3b.jpg", product_id: 16},
  {url: "https://www.gianteagle.com/ProductImages/PRODUCT_NODE_406/18200007842.jpg", product_id: 17},
  {url: "http://geekongadgets.com/wp-content/uploads/2016/09/Drone.jpg", product_id: 18}
])
Product.create!([
  {name: "xbox", description: "gaming hype!!", supplier_id: 2},
  {name: "Starbucks Coffee", description: "freshly brewed", supplier_id: 2},
  {name: "Bike", description: "a really sleek and fast bike, you will love it! They are available in red, green, black, blue, gray, purple, orange, yellow, white, and tie dye", supplier_id: 1},
  {name: "skyrim", description: "rpg game", supplier_id: 1},
  {name: "mug", description: "for coffee or tea", supplier_id: 1},
  {name: "oblivion", description: "elder scrolls game from 2006", supplier_id: 2},
  {name: "tennis racket", description: "very accurate, light weight", supplier_id: 1},
  {name: "lays potato chips", description: "crunchy", supplier_id: 1},
  {name: "teddy bear", description: "cute and cuddly", supplier_id: 2},
  {name: "o'douls", description: "non-alcoholic beer", supplier_id: 2},
  {name: "Big Mac", description: "very healthy, not", supplier_id: 2},
  {name: "drone", description: "spy on your neighbors!", supplier_id: 1},
  {name: "Bananas", description: "very ripe and tasty bananas", supplier_id: 1}
])
Supplier.create!([
  {name: "Target", email: "target@gmail.com", phone: "847-090-2323"},
  {name: "Walmart", email: "walmart@gmail.com", phone: "847-443-2323"}
])
User.create!([
  {name: "sammy", email: "sammy@gmail.com", password_digest: "$2a$10$YWaJ58wrrlw//0/dsFt1AuPlN/s7/3wQlfRzIen3Rb/lOZ5D1yVkO", admin: false},
  {name: "obama", email: "obama@gmail.com", password_digest: "$2a$10$Snpx50nFUnjl6JB5.TMm6OX2mR74JD5aMfWIU31uqLHAZyNXImIza", admin: false},
  {name: "dave", email: "letterman@gmail.com", password_digest: "$2a$10$N9QZztZOLFvQvjLucVdxIObPsKa5AuZUUJm.fqH7Ra8wdUYy1A042", admin: false},
  {name: "ebineezer", email: "scrooge@gmail.com", password_digest: "$2a$10$1zTnsTyNXxMHxFYJoz7p8.ebVDjix/QkWBlbI5fyquGfO/oxOqfPS", admin: false},
  {name: "justin", email: "jskord@gmail.com", password_digest: "$2a$10$OKW0IdIGxdqG5RuiKm1WUOMKBJBPTLz/7N78PdaT80BDL8v7Tp.1e", admin: true}
])
