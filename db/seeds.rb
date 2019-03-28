# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



  User.create! {name: "ファンA" password: "123456"}
  User.create! {name: "ファンB" password: "123456"}


  10.times do |i|
    Review.create(asmr: "ppomo", title: "ありがとう#{i}", body: "素晴らしいです!#{i}, user_id: 1)
    Review.create(asmr: "hatomugi", title: "ありがとう#{i}", body: "素晴らしいです!#{i}, user_id: 1)
    Review.create(asmr: "cham", title: "ありがとう#{i}", body: "素晴らしいです!#{i}, user_id: 1)
    Review.create(asmr: "muki", title: "ありがとう#{i}", body: "素晴らしいです!#{i}, user_id: 2)
    Review.create(asmr: "umino", title: "ありがとう#{i}", body: "素晴らしいです!#{i}, user_id: 2)
    Review.create(asmr: "jae", title: "ありがとう#{i}", body: "素晴らしいです!#{i}, user_id: 2)
  end
