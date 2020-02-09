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

puts "配列の一部を抜き出す"
a = [1,2,3,4,5]
puts a[0..2]
puts a[2]

puts "n以上m以下、n以上m未満の判定をシンプルに"
def liquid?(temperature)
  (1...100).include?(temperature)
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)
