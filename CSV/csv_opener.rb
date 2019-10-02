require 'csv'

file_name = "Test - Some name (1).csv"

data = Array.new

CSV.foreach(file_name, {headers: true}) do |row|
  data << row.to_hash
end

rows = {}

data.uniq {|e| e['Имя клиента в системе']}.each do |row|
  rows[row.values.last] = []
end

print rows
