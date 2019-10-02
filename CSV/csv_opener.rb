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

arr.each do |hash|
  rows[hash.keys.first] << hash
end

rows.each do |key, value|
  value.uniq! {|e| e['number']}
  value.map do |hash|
    hash.each {|k,v| hash[k] = v.to_i}
  end
  value.map! {|s| s.values.first}
  calls_hash[key] = value.sum
end

print calls_hash
