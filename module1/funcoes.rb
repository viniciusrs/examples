puts "Funcoes em ruby sempre sera um metodo"
puts "O return sempre será na ultima linha caso não seja declarado"

def exemplo1()
  puts "Este é o retorno do primeiro exemplo"
end

exemplo1()
puts "-----------------------------\n\n"

puts "Não é necessario declarar o tipo do parametro que o metodo recebe"

def exemplo2(valor)
  soma = 5
  return puts "O valor é 0 não foi possível somar" if valor == 0
  puts "o total é #{soma + valor}"
end

exemplo2(0)
exemplo2(3)
puts "-----------------------------\n\n"

puts "Methodos expressivos"

puts "Para dizer que o metodo retorna um boolean voce pode usar ? na declaracao do metodo"

def posso_dividir?(numero)
  return false if numero == 0
  true
end

puts "Exemplo 1 posso dividir por 0 ? #{posso_dividir?(0)}"
puts "Exemplo 2 posso dividir por 2 ? #{posso_dividir?(2)}"

puts "-----------------------------\n\n"

puts "Argumentos padrões"
puts "Em ruby voce pode passar um valor padrão para um argumento ex:"

def fatorial(n)
  n == 0? 1 :   n * fatorial(n - 1)
end

puts "Exemplo metodo sem valor padrao - fatorial de 0 é #{fatorial(0)} e de 3 é #{fatorial(3)}"

def fatorial_com_valor_padrao(n = 5)
  n == 0? 1 : n * fatorial_com_valor_padrao(n - 1)
end

puts "Exemplo de fatorial com valor padrão 5 - sem parametro #{fatorial_com_valor_padrao} com parametro 3 #{fatorial_com_valor_padrao(3)}"
puts "-----------------------------\n\n"

puts "Usando o Splat voce pode passar um array de parametros que não são obrigatorios usando * antes do parametro\n\n"

def splat(parm1, parm2, *params)
  return params
end

puts "Os primeiros parametros são obrigatorios se tentar executar o methodo\nsem passa-los ira gerar um erro"
puts "'wrong number of arguments (given 0, expected 2+)'"
puts "Exemplo deixando o splat vazio o resultado é: #{splat(1,2)}"
puts "Exemplo passando alguns parametros #{splat(1,2,3,4,5)}"
