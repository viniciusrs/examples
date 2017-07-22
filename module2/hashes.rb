puts "Hashes"
puts "Hashes sao uma colecao de indices com referencias de objetos"
puts "Criadas com {} ou Hash.new"
puts "Tambem conhecidas como arrays associativos"
puts "A chave do indice pode ser qualquer coisa nao somente um inteiro como em um array"

puts "-----------------------------\n\n"

puts "Exemplo de um Hash"

livro = { "autor" => "Tunico", "tema" => "poemas", "paginas" => 520}

puts livro

puts "Usando metedo length para ver o tamanho do hash"

puts livro.length

puts "Acessando o autor do livro pelo chave 'autor'"

puts livro['autor']

puts "Adicionando mais uma propriedade e valor"

livro["fonte"] = "arial"

puts "Percorrendo todo o novo hash usando metodo each_pair 2 parametros a chave e o valor"

livro.each_pair do |chave, valor|
  puts "chave: #{chave} valor: #{valor}"
end
puts "-----------------------------\n\n"

puts "Se voce tentar acessar uma chave que nao existe nil sera retornado"

puts "Exemplo usando Hash.new passando parametro 0 como padrao"

frequencia_palavra = Hash.new(0)

sentenca = "Teste teste um um"
sentenca.split.each do |palavra|
  frequencia_palavra[palavra.downcase] += 1
end

puts frequencia_palavra
puts "-----------------------------\n\n"

puts "é possivel usar symbols como chave de sua hash com a sintaxe symbol: ao inves de :symbol"

carro = {cor: "azul", marca: "gm"}

carro[:modelo] = "corsa"

puts carro
puts "-----------------------------\n\n"

puts "Tambem e possivel usar um Hash como parametro de um metodo"

def cores(cor = {principal: "azul", fundo: "vermelho"})
  unless cor[:principal] && cor[:fundo]
    puts "nil"
  else
    puts "A cor principal é #{cor[:principal]} e o fundo é #{cor[:fundo]}"
  end
end

puts cores({:principal => "roxo", :fundo => "preto"})
puts "-----------------------------\n\n"

puts "Ao tentar usar uma hash sem atribuir para uma variavel ruby confundira com um bloco"
puts "Para resolver isso voce pode usar sua hash dentro de parenteses"
puts "Ou nao utilizar chaves ex"

puts ({:isso => "e uma hash fora de uma variavel"})

puts isso: "tambem e um hash"
