puts "ハッシュ系"

puts "要素の追加、変更、取得"
puts "追加"
currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
puts currencies
currencies['italy']= 'euro'
puts currencies
puts "変更"
currencies['japan']= '円'
puts currencies
puts "取得"
puts currencies['india']
puts currencies['france']

puts "hashを配列で取り出す"
puts "ブロック引数2つ"
currencies.each do |key, value|
  puts "#{key} : #{value}"
end
puts "ブロック引数1つ"
currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key} : #{value}"
end