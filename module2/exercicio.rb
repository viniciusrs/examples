puts "Pegue 23 numeros de um range de 0 a 10000"

array = (1..10000).to_a.sample(23)

puts array.inspect

puts "Selecione somente elementos que sejam dividos por 3"
puts "Nao seja menor que 5000"

puts array.select {|num| num % 3 == 0}.reject {|num| num < 5000}.sort.reverse.inspect
