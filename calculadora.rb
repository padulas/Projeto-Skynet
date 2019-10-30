
#Calculadora:
puts "Sua mais nova calculadora em Ruby"
puts "\n"

puts "Informe o primeiro número"
#Entrada de dados

#Declarando vaviável 1
n1 = gets.chomp.to_i

puts "Informe um segundo número"

#Declarando variável 2
n2 = gets.chomp.to_i

puts "\n"
puts "Selecione qual operação a ser feita"
puts "\n"
puts "1 - Soma"
puts "2 - Subtração"
puts "3 - Multiplicação"
puts "4 - Divisão"
puts "5 - Sair do programa"
puts "\n"
puts "Escolha uma opcao"
puts "\n"

opcao = gets.chomp.to_i

case opcao

when 1
    resultado = n1 + n2
    
when 2
    resultado = n1 - n2
    
when 3
    resultado = n1 * n2
    
when 4
    resultado = n1 / n2
    
when 5
    exit
end

puts "E o resultado de seu cálculo é: #{resultado}"

