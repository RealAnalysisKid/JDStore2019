# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.new
u.email = "detective_boys@hotmail.com"
u.password = "111111"
u.password_confirmation = "111111"

u.is_admin = true
u.save

Product.create!(title: "决断的演算",
  description: "统计学书籍",
  price: 134,
  quantity: 3,
  image: open("https://images-cn-4.ssl-images-amazon.com/images/I/51AbcO5J8DL._SX398_BO1,204,203,200_.jpg")
)

Product.create!(title: "推理的迷宫",
  description: "逻辑悖论",
  price: 27,
  quantity: 31,
  image: open("https://images-cn.ssl-images-amazon.com/images/I/51PplcfYRkL.jpg")
)

Product.create!(title: "Wild Ride",
  description: "企业用数据发展",
  price: 104,
  quantity: 100,
  image: open("https://images-cn.ssl-images-amazon.com/images/I/51-SRPs2EfL._SX325_BO1,204,203,200_.jpg")
)

Product.create!(title: "故事",
  description: "编辑秘籍",
  price: 43,
  quantity: 190,
  image: open("https://images-cn.ssl-images-amazon.com/images/I/31rYSVuqX9L.jpg")
)

Product.create!(title: "生活用品",
  description: "睡衣",
  price: 99,
  quantity: 1,
  image: File.open("/Users/realanalysis/pictures/Snip20190326_4.png")
)


Product.create!(title: "生活用品",
  description: "书籍",
  price: 430,
  quantity: 300,
  image: File.open("/Users/realanalysis/pictures/帅.jpeg")
)
