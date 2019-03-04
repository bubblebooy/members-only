# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(name:  "ExampleUser",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar")

User.create!(name:  "Cat",
            email: "cat@meow.com",
            password:              "123456",
            password_confirmation: "123456")
User.create!(name:  "dog",
             email: "woof@bark.net",
             password:              "goodboy",
             password_confirmation: "goodboy")

User.create!(name:  "Max",
            email: "max@fake.com",
            password:              "password",
            password_confirmation: "password")


Post.create!( title: "Example Title",
              body: "Example post body with example post words. Writen by an example user",
              user_id:"1")
Post.create!( title: "cat best",
              body: "cats are better then dogs. dog sucks.",
              user_id:"2")
Post.create!( title: "dog best",
              body: "dogs are better then cats. cat sucks. dog goodboy",
              user_id:"3")
Post.create!( title:"I made this",
              body: "I made this web site as part of The Odin Project. This is Project2: Members Only! You can only see the author of post if you are logged in",
              user_id:"4")
Post.create!( title:"goodboy",
              body:"my password incase I forget",
              user_id:"3")
Post.create!( title: "woof",
              body: "woof bark bark woof. ARH-WOOOOOOOOOOOOOOOOOOOO",
              user_id:"3")
Post.create!( title: "meow",
              body: "meow",
              user_id: "2")
Post.create!( title: "cat activity log: 1 ",
              body: "spent 8 hours lying in sun spot",
              user_id: "2")
Post.create!( title: "hacker",
              body: "you can go to /users/new to make make anccount and login",
              user_id: "2")
