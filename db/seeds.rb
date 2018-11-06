# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([
  {parent_id: nil, name: "Category 1"},
  {parent_id: nil, name: "Category 2"},
  {parent_id: 1, name: "Category 1.1"},
  {parent_id: 3, name: "Category 1.1.1"},
  {parent_id: 1, name: "Category 1.2"},
  {parent_id: 4, name: "Category 1.1.1.0"},
  {parent_id: 5, name: "Category 1.2.1"},
  {parent_id: 2, name: "Category 2.1"}
])
