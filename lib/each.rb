puts "配列系"
puts "deleteメソッド"
# 配列内の値を消したい
a = [1,2,3,4,5]
a.delete(2)
puts "---putsを使った---"
puts a
puts "---pを使った---"
p a
puts "---printを使った---"
print a

puts "配列の一部を抜き出す"
a = [1,2,3,4,5]
p a[0..2]
puts a[2]

puts "n以上m以下、n以上m未満の判定をシンプルに"
def liquid?(temperature)
  (1...100).include?(temperature)
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)

puts "配列の要素を取得したい"
puts "0番目から3つの数を抜き出す"
a = [1,2,3,4,5]
p a[0,3]
puts "添字にマイナスを使って3番目から順に3つの数を抜き出す"
p a[-3,3]
p a[-1,3]
puts "lastを使う。最後のn個の要素を抜き出す"
p a.last
p a.last(2)

puts "和集合、差集合、積集合"
a = [1,2,3]
b = [3,4,5]
p a & b

require 'set'

a = Set.new([1,2,3])
b = Set.new([3,4,5])
p a | b
p a - b
p a & b

puts '配列の加工系'
puts '多重代入で残りの要素を配列として受けとる'
e,f = 100,200
p e
p f
e,*f = 100,200,300
p e
p f
puts '一つの配列を複数の引数として展開する'
a= []
a.push(1)
p a
a.push(2,3)
p a
b = [4,5]
a.push(b)
p a
c = [6,7]
a.push(*c)
p a

puts '可変長引数を使った挨拶メソッド'
def greeting(*names)
  "#{names.join('と')},こんにちは！"
end

puts greeting('田中')
puts greeting('田中','鈴木')
puts greeting('田中','鈴木','斎藤','中田','奥寺','山崎','二階堂','越前','山内')

puts '文字列を配列に変換する'

p 'Ruby,Java,Perl,PHP'.split(',')


puts "ブロック系"

puts "delete_ifメソッド"
# 奇数の数だけ消す処理
a = [1,2,3,1,2,3]
a.delete_if do |n|
  n.odd?
end
p a

puts "map/collectメソッド"
# 各要素でブロックを評価した結果を新しい配列を作成する。(値を10倍にしてそれを新しい配列に入れる)
numbers = [1,2,3,4,5]
new_numbers = numbers.map{|n| n*10}
puts new_numbers

puts "select/find_all_/rejectメソッド"
# 各要素でブロックを評価した結果の戻り値を新しい配列として作成する
numbers = [1,2,3,4,5,6]
even_numbers = numbers.select {|n| n.even?}
puts even_numbers

puts "find/detectメソッド"
#各要素でブロックを評価した結果の最初の戻り値を新しい配列として作成する
numbers = [1,2,3,4,5,6]
even_number = numbers.find {|n| n.even?}
puts even_number

puts "inject/reduceメソッド"
#畳み込み演算を行う(配列の数、全部足す)cherryのp97
numbers = [1,2,3,4]
sum_each = 0
numbers.each {|n| sum_each += n}
puts sum_each

sum_inject = numbers.inject(0){|result, n| result + n}
puts sum_inject

puts "添字付きの繰り返し処理"
fruits = ['apple','orange','melon']
fruits.each_with_index {|fruit, i| puts "#{i}: #{fruit}"}

puts "添字を0以外の数値から開始させる繰り返し処理"
fruits = ['apple','orange','melon']
fruits.each.with_index(1) {|fruit, i| puts "#{i}: #{fruit}"}
