puts "Controle de fluxo"
puts "-----------------------------\n\n"


a = 5
puts "A Variavel a foi declarado e seu valor é #{a}"
puts "-----------------------------\n\n"


puts "Usando if/elsif/else"

if a == 3
  puts "a é igual 3"
elsif a == 5
  puts "a é igual 5"
else
  puts "a não é igual a nada"
end
puts "-----------------------------\n\n"


puts "Usando unless"

unless a == 6
  puts "A não é igual a 6"
end
puts "-----------------------------\n\n"

puts "Usando while enquanto a >= 3"

while a >= 3
  puts "A variavel a é #{a}"
  a -= 1
end
puts "Valor fora do loop é #{a}"
puts "-----------------------------\n\n"

puts "Usando Until até que a >= 6"

until a >= 5
  puts "A variavel a é #{a}"
  a += 1
end
puts "Valor fora do loop é #{a}"
puts "-----------------------------\n\n"

puts "Exemplo de codigo inline"

vezes_2 = 2
vezes_2 *= 2 while vezes_2 <
 100
puts "Valor fora do loop é #{vezes_2}"
puts "Imprima somente se o valor for 128" if vezes_2 == 128
puts "-----------------------------\n\n"

puts "O que é true ou false em ruby!\n "

puts "0 é true ?" if 0
puts "'false' é true ?" if "false"
puts "false é false" if false
puts "String vazia é true ?" if ""
puts "'nil' é true ?" if "nil"
puts "nil é true ?" if nil
puts "somente nil e false são false em ruby"

puts "Usar uma string na verificacao ira gerar um erro pois uma string sempre sera true\n 'warning: string literal in condition'"
puts "-----------------------------\n\n"

puts "Quando usar ===\n"
puts "Para verificar uma regEx por ex: /est/ === teste"

if /est/ === "teste"
  puts "est existe dentro da palavra teste\n\n"
end

puts "Para verificar se as strings são iguais ex: 'teste' === 'teste'"

if  "teste" === "teste"
  puts "'teste' é igual a 'teste'\n\n"
end

puts "Para verificar o tipo da variavel ex: Integer === 5"

if Integer === 5
  puts "5 é integer"
end
puts "-----------------------------\n\n"

puts "Usando case e when"

puts "Mostrar o nome que foi encontrado (case usa === para comparar strings)"

nome = "Tunico"

case nome
  when "toni"
    puts "toni"
  when "tunico"
    puts "tunico"
  when "Tunico"
    puts "Tunico"
  else
    puts "Nenhum nome encontrado"
  end
puts "-----------------------------\n\n"

puts "Usando for"

puts "Imprima 1..2"

for i in 1..2
  puts i
end
