puts "Arrays"
puts "Arrays em ruby sao expansiveis e voce pode acessar seus elementos pelo indice usando []"
puts "Voce pode usar numeros negativos e ranges para acessar um indice"
puts "Voce pode ter diversos tipos de objetos dentro do array como Fixnum ou strings"
puts 'Voce pode usar %w{string1 string2} para criar um array de strings'
puts "-----------------------------\n\n"

puts "Exemplo de array com diversos tipos"

array1 = [1, "Tunico", :simbolo]

array1.each do |array|
  puts array.class
end
puts "-----------------------------\n\n"

puts "Criando um array de string"

array2 = %w{Esse e um teste de array}

puts array2.inspect

puts "Usando numero negativo para pegar o ultimo elemento do array -1"

puts array2[-1]

puts "Usando uma range entre 2..4 para pegar os elementos"

puts array2[2..4].inspect

puts "Voce tambem pode usar os metodos .fist e .last para pegar o primeiro e ultimo indice"
puts "-----------------------------\n\n"

puts "Com o metodo .join voce pode transformar uma array em uma string\npassando o parametro que vai ser usado para separar cada indice"

puts array2.join(',')
puts "-----------------------------\n\n"

puts "Modificando um Array"
puts "É possivel adicionar indices a um array usando o metodo push ou o sinal << ex:"

array3 = ["Este"]
puts array3.inspect

array3.push("e", "um", "array")
puts array3.inspect

array3 << "sendo" << "modificado"

puts array3.inspect
puts "-----------------------------\n\n"

puts "Para remover indices podemos usar os metodos pop ou shift"
puts "Exemplo pop remove ultimo indice"
array3.pop

puts array3.inspect

puts "Exemplo do shift remove o primeiro indice"

array3.shift

puts array3.inspect
puts "-----------------------------\n\n"

puts "Para pegar um indice aleatorio do array voce pode usar o metodo sample"
array4 = [1, 4, 3, 2, 7, 6]
puts "Exemplo usando um array #{array4}"
puts array4.sample
puts "\n\n"

puts "Voce pode ordenar crescente usando !sort e decrescente usando reverse!"

puts array4.sort.inspect
puts array4.sort.reverse.inspect
puts "-----------------------------\n\n"

puts "Se voce adicionar um elemento ao indice que ainda nao foi atingido no array"
puts "Ele ira complementar usando nil ex:"

array5 = [1, 2]

array5[4] = 3

puts array5.inspect
puts "-----------------------------\n\n"

puts "Para percorrer um array voce pode usar o metodo each ex:"

array6 = [1, 2, 3, "ola"]

array6.each do |array|
  puts array
end

puts "Voce pode usar select para criar um nome array somente com elementos que passaram na condicao"

array7 = array6.select { |num| num.class == Fixnum }

puts array7.inspect

puts "Voce pode usar o reject junto do select para rejeitar elementos dentro do array exemplo tudo que for par"

array8 = array6.select {|num| num.class == Fixnum }.reject { |num| num.even?}
puts array8.inspect
puts "-----------------------------\n\n"

puts "O metodo map pode ser usado para fazer uma alteracao em cada indice do array"

array9 = [23, 1, 32 ,323 ,31]

puts "Exemplo o array antes de ser multiplicado por 2 é #{array9}"

array9.map! {|num| num * 2}

puts "Apos ser multiplicado usando map #{array9}"
