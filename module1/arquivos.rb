puts "Files"
puts "Como ler e escrever arquivos"
puts "-----------------------------\n\n"

File.foreach('C:/Users/vicin/examples/module1/arquivo.txt') do |linha|
  puts linha
  p linha
  p "#{linha.chomp} usando metodo chomp para remover \n"
  p linha.split
  puts "Usando metodo split para transformar em um array"
end
puts "-----------------------------\n\n"

puts "Usando begin e rescue para verificar uma exceção"

begin

  File.foreach('arquivo_invalido.txt') do |linha|
    puts linha
  end

rescue Exception => e
  puts e
  puts "Erro arquivo invalido"
end
puts "-----------------------------\n\n"

puts "Outra maneira é usando o metodo exist? da classe File para verificar se o\narquivo existe"

if File.exist?('C:/Users/vicin/examples/module1/arquivo.txt')

  File.foreach('C:/Users/vicin/examples/module1/arquivo.txt') do |linha|
    puts linha
  end
end
puts "-----------------------------\n\n"

puts "Para escrever em um arquivo voce deve usar o metodo open da classe File"
puts "Passando o primeiro parametro que é o arquivo e o segundo parametro que é o 'w' de write"

File.open('C:/Users/vicin/examples/module1/arquivo.txt', 'w') do |arquivo|
  arquivo.puts "Primeira linha"
  arquivo.puts "Mais uma linha"
end
