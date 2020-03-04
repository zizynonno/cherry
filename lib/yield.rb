#yieldにブロックが渡されたかどうかはblock_given?メソッドで確認する。
def greeting
  puts "good morning"
  if block_given?
    yield
  end
  puts "good evening"
end

greeting

puts "---------"

greeting do
  puts "hello"
end

puts "---------"

def greeting2
  puts 'おはよう'
  text = yield 'こんにちは'
  puts text
  puts 'こんにちは'
end

greeting2 do |text|
  text * 2
end

