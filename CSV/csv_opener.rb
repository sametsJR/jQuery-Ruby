require 'csv'

file_name = "Test - Some name (1).csv"

data = Array.new

CSV.foreach(file_name, {headers: true}) do |row|
  data << row.to_hash
end

print data
