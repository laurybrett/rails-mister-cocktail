# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

require "json"
require "open-uri"
require_relative "../app/models/ingredient"

# TODO: Write a seed to insert 10 posts in the database fetched from the Hacker News API.
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# ONLY THE 10 FIRST
drinks = open(url).read
# on recupère les 30 valeurs {"stringredient1: "lihght rum"} de la key "drinks"
ingredients_first = JSON.parse(drinks)["drinks"]
ingredients_first.each do |ingredient_hash|
  # post_id = post.to_i
  create_fake_list = Ingredient.new(name: ingredient_hash["strIngredient1"])
  create_fake_list.save
end
