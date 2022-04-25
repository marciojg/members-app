# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Group.create([
  { name: 'Group1' },
  { name: 'Group2' },
  { name: 'Group3' },
])

Member.create([
  { name: 'Member1', age: 3, group: Group.first },
  { name: 'Member2', age: 34, group: Group.first },
  { name: 'Member3', age: 33, group: Group.first },
  { name: 'Member12', age: 3, group: Group.first },
  { name: 'Member22', age: 34, group: Group.second },
  { name: 'Member33', age: 33, group: Group.second },
  { name: 'Member111', age: 3, group: Group.first },
  { name: 'Member222', age: 34, group: Group.first },
  { name: 'Member333', age: 33, group: Group.third }
])
