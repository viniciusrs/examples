puts "Strings"
puts "Em ruby string iniciadas com aspas simples são literais ou seja"
puts 'Ela ira ignorar caracteres espiciais como `` e \n'
puts "Strings usando aspas duplas interpretam os comandos como \n"
puts 'E são usadas para fazer interpolacao com #{}'
puts "-----------------------------\n\n"

puts "Exemplo com aspas\nduplas"
puts 'Exemplo com aspas\nsimples'
puts "-----------------------------\n\n"

puts "Interpolando uma string"

def multiplicar(num1, num2)
  return "#{num1} multiplicado por #{num2} é igual a #{num1 * num2}"
end

puts multiplicar(10, 11)
puts "-----------------------------\n\n"

puts "Strings e seus metodos"
puts "Como a string também é um objeto de uma classe ela possui\nseus proprios metodos"
puts "Quando utilizar um metodo a string nao sera modificado ao menos que o metodo\npossua o indicador '!' no final\n\n"

puts "Exemplo usando metodos não destrutivos lstrip e capitalize"
nome = " tunico"
puts nome.lstrip.capitalize
puts "#{nome}\n\n"

puts "Exemplo com os mesmos metodos com ! no final"

puts nome.lstrip!.capitalize!
puts nome
puts "-----------------------------\n\n"

puts "É possível também substituir um caracter na string usando []"
nome[1] = 'o'
puts nome
puts "-----------------------------\n\n"

puts "Tambem e possivel usa o %Q{} para criar uma string com quebra de linha"

puts varias_linhas = %Q{ Esse é uma integer
                    sem quebra de linha}

puts "Agora vamos usar o metodo lines para percorrer as linhas e o\nsub! para corrigir o texto"

varias_linhas.lines do |linhas|
  linhas.sub!('integer', 'string')
  linhas.sub!('sem', 'com')
  puts linhas.strip!
end
puts "-----------------------------\n\n"

puts "Documentacao com mais metodos"
puts 'https://ruby-doc.org/core-2.2.0/String.html'

puts "-----------------------------\n\n"
puts "Symbols"

puts "Simbolos são strings imutaveis usadas geralmente para representar algo"
puts "Por exemplo o nome de um metodo"
