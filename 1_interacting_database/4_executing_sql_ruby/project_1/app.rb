require "pg"
require "pry"
require 'pry-doc'

db = PG.connect(dbname: "185_1")

result = db.exec "SELECT * from films;"

# binding.pry
puts "Finished!"
# random = "hello"
# puts "the end";
# pp result.values

# p result.fields
# p result.ntuples

# result.each do |tuple|
#   p tuple
#   puts "#{tuple["title"]} came out in #{tuple["year"]}"
# end

# result.each_row do |row|
#   p row
# end

p result[2]

p result.field_values("duration")

p result.column_values(4)
