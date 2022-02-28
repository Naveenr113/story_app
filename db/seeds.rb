# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'open-uri'
require 'json'


# Post.delete_all



posts = JSON.parse(File.read(Rails.root.join('db/scratch_87.json')))

posts.each do |post|
  Post.create(
    title: post['title'],
    name:  post['by'],
    url:   post['url'],
    likes: post['likes']
  )
end