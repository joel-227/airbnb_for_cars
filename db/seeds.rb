# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all
User.destroy_all

user_one = User.create!(email: "joelkoh2012@gmail.com", password: "123123")
user_two = User.create!(email: "mark@gmail.com", password: "456456")
Car.create!(user: user_one, price: 999.99, model: "Toyota", license: "90F", age: 3)
Car.create!(user: user_one, price: 399.99, model: "Honda", license: "70C", age: 4)
Car.create!(user: user_one, price: 499.99, model: "Mercedes", license: "44A", age: 5)
Car.create!(user: user_one, price: 799.99, model: "Ford", license: "32C", age: 1)
Car.create!(user: user_one, price: 299.99, model: "Ferrari", license: "68D", age: 2)


Car.create!(user: user_two, price: 1999.99, model: "Car A", license: "74E", age: 1)
Car.create!(user: user_two, price: 1399.99, model: "Car B", license: "32X", age: 1)
Car.create!(user: user_two, price: 1499.99, model: "Car C", license: "54L", age: 4)
Car.create!(user: user_two, price: 1799.99, model: "Car D", license: "77V", age: 5)
Car.create!(user: user_two, price: 1299.99, model: "Car E", license: "30S", age: 8)