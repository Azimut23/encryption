require 'digest'

puts 'Введите слово или фразу для шифрования:'
user_string = STDIN.gets.chomp

puts 'Каким способом зашифровать:'
puts '1. MD5'
puts '2. SHA1'
encrypt_method = STDIN.gets.to_i

until encrypt_method.between?(1, 2)
  puts 'Выберете доступный метод шифрования:'
  encrypt_method = STDIN.gets.to_i
end

if encrypt_method == 1
  result = Digest::MD5.hexdigest(user_string)
elsif encrypt_method == 2
  result = Digest::SHA1.hexdigest(user_string)
end

puts 'Вот что получилось:'
puts result
