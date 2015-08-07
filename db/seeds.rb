# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "shannon_andrea", email: "shannon@example.com", password: "12345678", password_confirmation: "12345678")
User.create(username: "eliza_sj", email: "eliza@example.com", password: "12345678", password_confirmation: "12345678")
User.create(username: "maegan_bourke", email: "maegan@example.com", password: "12345678", password_confirmation: "12345678")
User.create(username: "thuglife_maria", email: "maria@example.com", password: "12345678", password_confirmation: "12345678")