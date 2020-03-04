valid_address = /\A[a-zA-Z0-9\#!$%&`'*+\-{|}~^\/=?\.]+@[a-zA-Z0-9][a-zA-Z0-9\.-]+\z/
mail_address = gets

if mail_address =~ valid_address
  puts '「適切なメールアドレスです」'
else
  puts '「不適切なメールアドレスです」'
end
