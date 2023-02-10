# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

usernames = ["brian_c", "joseph_p", "jeremy_f"]
emails = ["brian@gmail.com", "joseph@gmail.com", "jeremy@gmail.com"]
passwords = ["password1", "password2", "password3" ]

brian = User.create!(username: usernames[0], password: passwords[0], email: emails[0])
joseph = User.create!(username: usernames[1], password: passwords[1], email: emails[1])
jeremy = User.create!(username: usernames[2], password: passwords[2], email: emails[2])

brian.articles.create!([
    {
        title: "First article title",
        description: "First article description."
    },
    {
        title: "Another one",
        description: "Let's write some random stuff here."
    },
    {
        title: "And another article title",
        description: "I like to eat my coffee and drink my chicken."
    }
])

joseph.articles.create!([
    {
        title: "Hi there",
        description: "Hello world! my name is joseph."
    },
    {
        title: "Test test test",
        description: "Testing testing one two three one two three"
    },
    {
        title: "And another article title",
        description: "hi, i want to eat."
    }
])

jeremy.articles.create!([
    {
        title: "Jeremy here",
        description: "Hey everyone this is Jeremy."
    },
    {
        title: "Foody article",
        description: "Hi everyone, I like food, do you like food too?"
    },
    {
        title: "Bye Bye Bye",
        description: "I like that song bye bye bye, but I forgot who sings it..."
    }
])