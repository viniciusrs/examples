puts "Ranges"
puts "Ranges sao usadas para expressar sequencias naturais como 1 a 20 ou de A a Z"
puts "Ao usar 2 pontos todos items sao inclusos ex 1..10, 1 e 10 serao includos na range"
puts "Ao usar 3 pontos o ultimo item é excluido ex 1...10, o 10 sera excluido"
puts "-----------------------------\n\n"

puts "Exemplo transforamando uma range em array usando metodo to_a"

range = 1..10

puts range.to_a.inspect

puts range

puts "Metodo include? retorna um boolean se o numero e incluso na range"

puts range.include?(2)

puts "Metodo max verifica o tamanho da range"

puts range.max
puts "-----------------------------\n\n"

puts "Exemplo usando range dentro de um case"

idade =  50

case idade
  when 0..12 then puts "Bebe"
  when 13..99 then puts "bebezin"
  else puts "morto"
end
