# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
user = User.create(
  email: "johndoe@gmail.com",
  password: "johndoe123",
  password_confirmation: "johndoe123"
)

puts user.errors.full_messages unless user.errors.empty?  

3.times do |i|
  post = Post.create(
    title: "Post #{i+1}",
    body: "Post content #{i+1}",
    user_id: user.id
  )

  puts post.errors.full_messages unless post.errors.empty?  
end