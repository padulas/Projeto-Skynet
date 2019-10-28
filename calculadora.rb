
#Calculadora:
#Declarando variáveis - N1 e N2
puts "Sua mais nova calculadora em Ruby"
puts "\n"
puts "Informe o primeiro número"

#Entrada de dados
#Declarando variáveis:

#Declarando vaviável 1
N1 = gets.chomp
puts "Informe um segundo número"

#Declarando variável 2
N2 = gets.chomp

puts "\n"
puts "Selecione qual operação a ser feita"
puts "\n"
puts "1 - Soma"
puts "2 - Subtração"
puts "3 - Multiplicação"
puts "4 - Divisão"
puts "5 - Sair do programa"

puts "Escolha uma opcao"

opcao = gets.chomp

case opcao

when 1
    N1 + N2
    resultado = N1 + N2

when 2
    N1 - N2
    resultado = N1 - N2

when 3
    N1 * N2
    resultado = N1 * N2

when 4
    N1 / N2
    resultado = N1 / N2

when 5
    exit
end

puts "#{resultado}"

