# README

Hi! You are probably rating my code skills if you are reading this file!

So this is a test from an internship application that i've applied, and in this README i'll
document everything that is required from the test github.

First, make sure that you have ruby installed on your machine, because we're going to
use ruby on rails.

## Getting started 🏳️

First clone this repo:

```bash
git clone https://github.com/Leonardo-Mazzuca/ummani-blog
```

  after you must use 
  
```bash
bundle install
```

And then you'll have to create the database, so 
you have to run a couple commands.

First, you should create the database 
  
```bash
 rails db:create
```
  
  
Once this is done, you'll need to run all migrations:

```bash
rails db:migrate
```

And finally to populate the database with default data, you'll
use:

```bash
rails db:seed
```

If you want sign in with some of the default data, you should try:

```ruby
user = User.create(
  email: "johndoe@gmail.com",
  password: "johndoe123",
  password_confirmation: "johndoe123"
)
```

## Running the app 🏃‍♂️

After all the last steps are done, you'll be able to run the app

```bash
rails s
```

And then try to access the app running at http://localhost:3000 !

  



