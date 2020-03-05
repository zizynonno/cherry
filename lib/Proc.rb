def greeting(arrange_proc)
  puts 'おはよう'
  text = arrange_proc.call('こんにちは')
  puts text
  puts 'こんばんは'
end

repeat_proc = Proc.new { |text| text * 2 }
greeting(repeat_proc)

#Procの処理を呼び出す方法
add_proc = Proc.new {|a,b| a + b}
puts add_proc.call(20,30)
puts add_proc.yield(20,30)
puts add_proc.(20,30)
puts add_proc[20,30]
puts add_proc === [20,30]

reverse_proc = Proc.new{|s| s.reverse}
puts ['Ruby', 'Java', 'Perl'].map(&reverse_proc)