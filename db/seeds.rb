# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  
# レビューコメント生産用データ
  User.create!(name: "ファンA", password: "1234567", id: 1)
  User.create!(name: "ファンB", password: "1234567", id: 2)

  10.times do
    Review.create!(asmr: "ppomo", title: "ありがとう", body: "素晴らしいです!", user_id: 1)
    Review.create!(asmr: "hatomugi", title: "ありがとう", body: "素晴らしいです!", user_id: 1)
    Review.create!(asmr: "cham", title: "ありがとう", body: "素晴らしいです!", user_id: 1)
    Review.create!(asmr: "muki", title: "ありがとう", body: "素晴らしいです!", user_id: 1)
    Review.create!(asmr: "umino", title: "ありがとう", body: "素晴らしいです!", user_id: 1)
    Review.create!(asmr: "jae", title: "ありがとう", body: "素晴らしいです!", user_id: 1)
  end
