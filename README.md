# README

Hi! You are probably evaluating my code skills if you are reading this file!

This is a test for an internship application that I've applied to, and in this README, I'll document everything that is required for the test.

First, make sure you have Ruby installed on your machine, because we'll be using Ruby on Rails.

## Getting started 🏳️

First clone this repo in your current folder:

```bash
git clone https://github.com/Leonardo-Mazzuca/ummani-blog .
```
Or if you want to create in a new folder use just: 

```bash
git clone https://github.com/Leonardo-Mazzuca/ummani-blog 
```

  after you must use 
  
```bash
bundle install
```

Next, you'll need to create the database by running a couple of commands.

First, create the database:
  
```bash
 rails db:create
```
  
Once this is done, you'll need to run all migrations:

```bash
rails db:migrate
```

Finally to populate the database with default data, use

```bash
rails db:seed
```

If you want sign in with some of the default data, try to use:

```ruby
user = User.create(
  email: "johndoe@gmail.com",
  password: "johndoe123",
  password_confirmation: "johndoe123"
)
```

## Running the app 🏃‍♂️

After all the previous steps are completed, you'll be able to run the app

```bash
rails s
```

Then try to access the app running at http://localhost:3000 !

  



