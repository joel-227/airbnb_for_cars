# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all
User.destroy_all
# <img src="http://loremflickr.com/300/300/${car.brand}%20${car.model}" />
user_one = User.create!(email: "joelkoh2012@gmail.com", password: "123123")
user_two = User.create!(email: "mark@gmail.com", password: "456456")
user_three = User.create!(email: "nigel@gmail.com", password: "789789")
Car.create!(user: user_one, price: 999.99, model: "Toyota", license: "90F", age: 3, image_url: "https://www.hybridcars.com/wp-content/uploads/2017/06/2018_Toyota_Camry_SE_Hybrid_04_DE2157F7770CFDDF5525FE255A3FEDAC0D19815B.jpg")
Car.create!(user: user_one, price: 399.99, model: "Honda", license: "70C", age: 4, image_url: "http://carrental.alltrustleasing.com/car_rental_images/car_rental_singapore_honda_civic.png")
Car.create!(user: user_one, price: 499.99, model: "Mercedes", license: "44A", age: 5, image_url: "https://i.ytimg.com/vi/yEcjjsKtgGc/maxresdefault.jpg")
Car.create!(user: user_one, price: 799.99, model: "Ford", license: "32C", age: 1, image_url: "https://cnet3.cbsistatic.com/img/g1Bi4ZGnzzIYq0CI82zW03A--Tw=/2018/03/16/527ada17-5559-42f5-b904-0af76a21debb/2019-ford-mustang-need-for-green-promo.jpg")
Car.create!(user: user_one, price: 22299.99, model: "Ferrari", license: "68D", age: 2, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Ferrari_Enzo_-_Flickr_-_andrewbasterfield.jpg/1200px-Ferrari_Enzo_-_Flickr_-_andrewbasterfield.jpg")
Car.create!(user: user_one, price: 799.99, model: "Audi", license: "32C", age: 1, image_url: "https://upload.wikimedia.org/wikipedia/commons/6/6f/Audi_R8-10.jpg")
Car.create!(user: user_one, price: 22299.99, model: "Ferrari", license: "68D", age: 2, image_url: "http://4.bp.blogspot.com/_nFhfvUPu-Tc/TFQ-67hiAFI/AAAAAAAAH4Y/9G4BmB72A4k/s1600/gold+plated+ferrari.bmp")
Car.create!(user: user_one, price: 22299.99, model: "BMW", license: "68D", age: 2, image_url: "https://autocarupdates.com/wp-content/uploads/2018/07/2020-bmw-m5-interior-2048-x-1360.jpg")
Car.create!(user: user_one, price: 22299.99, model: "Suburu WRX", license: "68D", age: 2, image_url: "https://i.auto-bild.de/ir_img/2/0/6/2/8/8/5/Subaru-Impreza-WRX-2020-Erste-Infos-1200x800-3954d860ce5e419f.jpg")
Car.create!(user: user_two, price: 1999.99, model: "Nissan", license: "74E", age: 1, image_url: "https://i1.wp.com/2020suvs.com/wp-content/uploads/2019/02/2020-Nissan-Kicks-Redesign.jpg?fit=640%2C416&ssl=1")
Car.create!(user: user_two, price: 1399.99, model: "Mazda", license: "32X", age: 1, image_url: "https://s3.caradvice.com.au/wp-content/uploads/2016/12/2017-Mazda-CX-9-Sport-AWD-1.jpg")
Car.create!(user: user_two, price: 1499.99, model: "Toyota", license: "54L", age: 4, image_url: "https://static.carsdn.co/cldstatic/wp-content/uploads/toyota-supra-2020-02-angle--exterior--front--red--textures-and-patterns--urban.jpg")
Car.create!(user: user_two, price: 1799.99, model: "Honda", license: "77V", age: 5, image_url: "https://st.motortrend.com/uploads/sites/10/2017/10/2018-Honda-CR-V-front-three-quarter-in-motion-01.jpg")
Car.create!(user: user_two, price: 1299.99, model: "Hyundai", license: "30S", age: 8, image_url: "https://images.autojini.net/AJC/50456/vehicles/5093292_48DFC1DF-917A-347B-AC5FC4AE045E83E5_x.jpg")
Car.create!(user: user_two, price: 1799.99, model: "Lamborghini", license: "77V", age: 5, image_url: "https://i.ytimg.com/vi/UOYylE_XgC8/maxresdefault.jpg")
Car.create!(user: user_two, price: 1299.99, model: "Bugatti", license: "30S", age: 8, image_url: "https://icdn8.digitaltrends.com/image/bugatti-chiron-experience-2461-1500x1000.jpg")
Car.create!(user: user_two, price: 1299.99, model: "Volkswagen Beetle", license: "30S", age: 8, image_url: "https://static.cargurus.com/images/site/2013/01/29/23/47/1970_volkswagen_beetle-pic-392403828643806721-1600x1200.jpeg")
Car.create!(user: user_two, price: 1299.99, model: "Mitsubishi", license: "30S", age: 8, image_url: "https://cdn.motor1.com/images/mgl/Lw3oj/s3/mitsubishi-eclipse.jpg")
Car.create!(user: user_three, price: 999.99, model: "Toyota", license: "90F", age: 3, image_url: "https://th.bing.com/th/id/OIP.TXSa6r009j78JE41qeQDygHaE4?pid=Api&rs=1")
Car.create!(user: user_three, price: 399.99, model: "Honda", license: "70C", age: 4, image_url: "https://cartuning.ws/uploads/posts/2019-04/1555171682_honda-civic-eg-blue-1.jpg")
Car.create!(user: user_three, price: 499.99, model: "Mercedes", license: "44A", age: 5, image_url: "https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_600/https://www.dsf.my/wp-content/uploads/2019/09/Mercedes-New-S-Class_1-600x338.jpg")
Car.create!(user: user_three, price: 799.99, model: "Ford", license: "32C", age: 1, image_url: "https://st.motortrend.com/uploads/sites/10/2016/12/2017-ford-focus-se-hatchback-angular-front.png")
Car.create!(user: user_three, price: 21299.99, model: "Ferrari", license: "68D", age: 2, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/LaFerrari_in_Beverly_Hills_%2814563979888%29.jpg/1200px-LaFerrari_in_Beverly_Hills_%2814563979888%29.jpg")
Car.create!(user: user_three, price: 799.99, model: "Lexus", license: "32C", age: 1, image_url: "http://images.cdn.autocar.co.uk/sites/autocar.co.uk/files/styles/gallery_slide/public/images/car-reviews/first-drives/legacy/lexus-rx-450-2015-18_0.jpg?itok=yAySxGk1")
Car.create!(user: user_three, price: 21299.99, model: "BMW", license: "68D", age: 2, image_url: "https://hips.hearstapps.com/amv-prod-cad-assets.s3.amazonaws.com/images/15q2/657945/2016-bmw-7-series-photos-and-info-news-car-and-driver-photo-659442-s-original.jpg")
Car.create!(user: user_two, price: 1299.99, model: "Volkswagen Beetle", license: "30S", age: 8, image_url: "https://media.ed.edmunds-media.com/volkswagen/beetle/2018/oem/2018_volkswagen_beetle_2dr-hatchback_20t-dune_fq_oem_3_1280.jpg")
Car.create!(user: user_two, price: 1299.99, model: "Mitsubishi", license: "30S", age: 8, image_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2020-mistubishi-outlander-sport-2p4-gt-226-1582811398.jpg?crop=0.607xw:0.683xh;0.0561xw,0.317xh&resize=640:*")