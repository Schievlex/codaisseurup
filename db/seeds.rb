Photo.delete_all
Category.delete_all
Event.delete_all
Profile.delete_all
User.delete_all



hobby = Category.create!(name: "Hobby")
it = Category.create!(name: "IT")
art = Category.create!(name: "Art")
work_skill = Category.create!(name: "Work Skill")
cooking = Category.create!(name: "Cooking")
sports = Category.create!(name: "Sports")





jiamei = User.create!(email:"wu_jiamei@outlook.com", password:"123456")
may = User.create!(email: "supermeitje@gmail.com", password:"123456")
chuday = User.create!(email: "chuday123456@gmail.com", password:"123456")
alex = User.create!(email: "alex888@gmail.com", password: "123456")



event = Event.create!(
name: "Codaisseur Open Evening",
description:"Introduction to Beginner Bootcamp and Traineeship",
location:"Amsterdam Singel 542",
price: 10,
capacity: 80,
includes_food: false,
includes_drinks: true,
starts_at: "07/04/2017 19:00",
ends_at: "07/04/2017 20:30",
user: jiamei,
categories: [it,work_skill]
 )

 event2 = Event.create!(
 name: "Painting Lessons",
 description:"Vermeer and Van Gogh",
 location:"Amsterdam Van Gogh Museum",
 price: 20,
 capacity: 20,
 includes_food: false,
 includes_drinks: true,
 starts_at: "07/04/2017 19:00",
 ends_at: "07/04/2017 20:30",
 user: chuday,
 categories: [art]
  )

  event3 = Event.create!(
  name: "Chinese Food Festival",
  description:"Learn Chinese Food Develpement and Try to Cook Mapo Tofu",
  location:"Amsterdam Fulu Madarijn Restaurant",
  price: 25,
  capacity: 50,
  includes_food: true,
  includes_drinks: true,
  starts_at: "07/04/2017 19:00",
  ends_at: "07/04/2017 20:30",
  user: may,
  categories: [cooking],
  )

# Photos
photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/daun7eksg/image/upload/v1499347503/vincent-van-gogh-self_ubeaau.jpg", event: event2)
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/daun7eksg/image/upload/v1499347504/Van-Gogh-self2_ubtnc6.jpg", event: event2)
photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/daun7eksg/image/upload/v1499346841/young_woman_water_jug.jpg", event: event2)
