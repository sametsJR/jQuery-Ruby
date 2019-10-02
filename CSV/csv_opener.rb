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

arr = []
calls_hash = {}

data.each do |hash|
  list = {}
  list[hash.values.last] = hash.values[2]
  list['number'] = hash.values[1]
  arr << list
end

print arr
