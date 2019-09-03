#1Versão Inicial Skynet 2019 - Whois corrigido

#cat skynet.rb - Build 1.0
#ruby 2.5.5p157 (2019-03-15 revision 67260) [x86_64-linux-gnu]
#Script para consulta de informações sobre domínios nacional/internacional
#Criado por Daniel Gomes - padulas@hotmail.com

#Declarando variáveis fixas:
#Declarando as variáveis de comandos
comandos = ['mx', 'ns', 'txt', 'soa', 'a']

#Declarando filtros para uso do "Whois".
whoisbr = "'changed|expires|provider|status'"
whoiscom = "'Registry Expiry Date:|Domain Name:|Updated Date:|Creation Date:|Registrar:'"

#Colhendo informações:
puts "Informe um domínio:"

#Declarando a variável dominio
dominio = gets.chomp

#Oferecendo opcoes:
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
	system "nslookup -type=#{comandos[opcao]} #{dominio}"

elsif opcao == 2
	system "nslookup -type=#{comandos[opcao]} #{dominio}"

elsif opcao == 3
	system "nslookup -type=#{comandos[opcao]} #{dominio}"

elsif opcao == 4
	system "nslookup -type=#{comandos[opcao]} #{dominio}"

elsif opcao == 5
	system "nslookup -type=#{comandos[opcao]} #{dominio}"

elsif opcao == 6
	puts "Informe uma porta TCP/UDP"
	portas = gets.chomp.to_i
	system "nmap -p #{portas} #{dominio}"

elsif opcao == 7
	#Importante definir a variável "opcao conforme: opcao = "'palavras_entre_aspas_simples dentro de aspas duplas'"
	system "whois #{dominio} |grep -E #{whoisbr}"

else opcao == 8
	system "whois #{dominio} |grep -E #{whoiscom}"

	
end

#Fim das condições if,elsif,else

puts "Consulta concluida!!!"

#Fim de código
