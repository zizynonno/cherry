puts '情報の個数。日付＆値段'
n = gets.to_i
sum = 0
n.times do |a|
   input = gets
   array = input.split
   digit_str = array[0]
   digit_int = digit_str[9..10].to_i
   price = array[1].to_i

   if digit_int == 1
    point = price * 0.05
    sum = sum + point
   elsif digit_int == 5
    point = price * 0.03
    sum = sum + point
   elsif digit_int == 3
    point = price * 0.02
    sum = sum + point
   else
    point = price * 0.01
    sum = sum + point
   end
end

puts "#{sum.floor}ポイント"

