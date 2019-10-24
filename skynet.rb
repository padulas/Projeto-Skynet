#cat skynet.rb 33333333333333333
#ruby 2.5.5p157 (2019-03-15 revision 67260) [x86_64-linux-gnu]11111111111111111111111111
#Script para consulta de informações sobre domínios nacional/internacional

#INPUT 
#Colhendo informaçõenes
puts "Informe um domínio:"

#Declarando a variável dominio
dominio = gets.chomp
#Declarando a variável comandos
comandos = ['mx', 'ns', 'txt', 'soa', 'a']


#OUTPUT
#Oferecendo opcoes
puts "Agora escolha uma opção de consulta:"
puts "1 - MX"
puts "2 - DNS"
puts "3 - TXT" 
puts "4 - SOA"
puts "5 - A"
puts "6 - Scanner TCP/UDP"
puts "7 - Whois Nacional"
puts "8 - Whois Internacional"

#Escolha de opção a ser pesquisada
puts "Escolha uma opção:"
opcao = gets.chomp.to_i   

if opcao == 1
	cmd = system("nslookup -type=#{comandos[opcao]} #{dominio}")

elsif opcao == 2
	cmd = system("nslookup -type=#{comandos[opcao]} #{dominio}")

elsif opcao == 3
	cmd = system("nslookup -type=#{comandos[opcao]} #{dominio}")

elsif opcao == 4
	cmd = system("nslookup -type=#{comandos[opcao]} #{dominio}")

elsif opcao == 5
	cmd = system("nslookup -type=#{comandos[opcao]} #{dominio}")

elsif opcao == 6
        cmd = system("nmap #{dominio}")

elsif opcao == 7

end

#Fim das condições if,elsif,else

puts "Consulta concluida!!!"

#Fim de código
