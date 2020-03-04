puts '身長と体重を[170.0 60](cm/kg)のフォーマットで入力'
input = gets
array = input.split

height = array[0].to_f.round(1) /100
weight = array[1].to_f.round(1)

bmi = (weight/(height**2)).round(1)

if bmi < 18.5
  puts '判定: 低体重'
elsif bmi < 25
  puts '判定: 普通体重'
elsif bmi < 30
  puts '判定: 肥満（１度）'
elsif bmi < 35
  puts '判定: 肥満（２度）'
elsif bmi < 40
  puts '判定: 肥満（３度）'
else
  puts '判定: 肥満（４度）'
end
