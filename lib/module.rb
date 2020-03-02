module Loggable
  private

  def log(text)
    puts "[LOG] #{text}"
  end
end


class Product
  include Loggable
  def title
    log 'title is called'
    'A great movie'
  end

  # private

  # def log(text)
  #   puts "[LOG] #{text}"
  # end
end

class User
  include Loggable
  def name
    log 'name is called'
    'Alice'
  end

    # private

    # def log(text)
    #   puts "[LOG] #{text}"
    # end
end

product = Product.new
product.title
user = User.new
user.name

# product.log 'public?'

# モジュールの特異メソッドとしてsqrtメソッドを利用する
a = Math.sqrt(2)
puts a

class Calculation
  include Math
   #ミックスインとしてMathモジュールのsqrtメソッドを使う
  def calc_sqrt(n)
    sqrt(n)
  end
end

calculation = Calculation.new
puts calculation.calc_sqrt(2)

#Kernelモジュールのメソッドはモジュール関数になっているため、特異メソッドとして呼び出せる
Kernel.puts "Hello"