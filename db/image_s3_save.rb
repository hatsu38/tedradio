require "csv"

talk_csv = "db/talk.csv"
count = 0

CSV.foreach(talk_csv, headers: true) do |data|
  break if count > 10
  c = Talk.new
  c.thumnail= data[4]
  c.save!
  count = count + 1
end
