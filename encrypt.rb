require "digest"

puts "Введите слово или фразу для шифрования:"
user_input = STDIN.gets.chomp

puts "Каким способом зашифровать?"
puts "1. MD5"
puts "2. SHA1"

encrypt = STDIN.gets.to_i

until encrypt.between?(1, 2)
  puts "Выберите 1 или 2"
  encrypt = STDIN.gets.to_i
end

puts "Вот что получилось:"

case encrypt
when 1 then puts Digest::MD5.hexdigest(user_input)
when 2 then puts Digest::SHA1.hexdigest(user_input)
end