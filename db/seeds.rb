# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

speaker_csv = "db/speaker.csv"
bigcategory_csv = "db/bigcategory.csv"
smallcategory_csv = "db/smallcategory.csv"
talk_csv = "db/talk.csv"

CSV.foreach(speaker_csv, headers: true) do |data|
  Speaker.create(
    name: data[0],
  )
end

CSV.foreach(bigcategory_csv, headers: true) do |data|
  Bigcategory.create(
    name: data[0],
  )
end

CSV.foreach(smallcategory_csv, headers: true) do |data|
  Smallcategory.create(
    name: data[0],
    bigcategory_id: data[3],
  )
end

CSV.foreach(talk_csv, headers: true) do |data|
  Talk.create(
    title: data[2],
    summary: data[3],
    sentence: data[11],
    thumbnail: data[4],
    hp: data[5],
    taketime: data[6],
    date: data[7],
    bigcategory_id: data[14],
    smallcategory_id: data[13],
    speaker_id: data[12],
  )
end
