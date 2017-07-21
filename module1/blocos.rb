puts "Blocks"
puts "Convencoes: em blocos que utilizam somente uma linha use {}"
puts "Em blocos que utilizam mais de uma linha use 'do' e 'end'"
puts "-----------------------------\n\n"

puts "Exemplo uma linha"

repetir = 2

repetir.times { |i| puts "O index vale #{i} que é menor que 2" if i < 2}

puts "Obs *O valor dentro do pipe sera o index"
puts "-----------------------------\n\n"

puts "Exemplo varias linhas"

repetir.times do |i|
  if i < 2
    puts "o index vale #{i} que é menor que 2"
  end
end
puts "-----------------------------\n\n"

puts "Blocks podem ser passado como parametros para seus metodos"
puts "Ha 2 maneiras de fazer isso uma maneira implicita e outra explicita"
puts "-----------------------------\n\n"

puts "Exemplo da maneira implicita"
puts "Voce deve verificar se o block foi passado como parametro usando block_given? dentro da seu metodo"
puts "E usar o yield para chamar o block dentro do metodo"

def exemplo_bloco_implicito()
  return "Nenhum bloco passado no parametro" unless block_given?
  yield
  yield
end

puts exemplo_bloco_implicito()
exemplo_bloco_implicito { puts "Usando bloco como parametro implicito" }
puts "-----------------------------\n\n"

puts "Exemplo maneira explicita"
puts "Voce deve declarar o nome do parametro dentro do metodo com & antes do nome"
puts "E chamar esse bloco dentro do metodo com o metodo .call"

def exemplo_bloco_explicito(&bloco)
  return "Nenhum bloco" if bloco.nil?
  bloco.call
  bloco.call
end

puts exemplo_bloco_explicito()

exemplo_bloco_explicito { puts "Usando bloco como parametro Explicito" }
