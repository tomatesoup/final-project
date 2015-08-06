# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.new(username: "shannon_andrea", email: "shannon@example.com", password: "12345678", password_confirmation: "12345678")
user2 = User.new(username: "eliza_sj", email: "eliza@example.com", password: "12345678", password_confirmation: "12345678")
user3 = User.new(username: "maegan_bourke", email: "maegan@example.com", password: "12345678", password_confirmation: "12345678")
user4 = User.new(username: "thuglife_maria", email: "maria@example.com", password: "12345678", password_confirmation: "12345678")