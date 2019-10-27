
#Versão Inicial Skynet 2019

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
puts "\n"
puts "Informe um domínio:"
puts "\n"

#Declarando a variável dominio
dominio = gets.chomp
puts ""

#Oferecendo opcoes:
puts "Agora escolha uma opção de consulta:"
puts ""
puts "FERRAMENTAS DNS:"
puts "1 - MX"
puts "2 - DNS"
puts "3 - TXT"
puts "4 - SOA"
puts "5 - A"
puts ""
puts "FERRAMENTAS DE REDE:"
puts "6 - Check Port TCP/UDP"
puts "7 - Whois Nacional"
puts "8 - Whois Internacional"
puts ""
puts "FERRAMENTAS DE SI"
puts "9 - CVE's consulting"
puts "10 - Check Malware"
puts "11 - Instalar Aplicações"

#Escolha de opção a ser pesquisada
puts "Escolha uma opção:"

opcao = gets.chomp.to_i   
puts ""

if opcao == 1
	system "nslookup -type=#{comandos[0]} #{dominio}"

elsif opcao == 2
	system "nslookup -type=#{comandos[1]} #{dominio}"

elsif opcao == 3
	system "nslookup -type=#{comandos[2]} #{dominio}"

elsif opcao == 4
	system "nslookup -type=#{comandos[3]} #{dominio}"

elsif opcao == 5
	system "host #{dominio} |grep address*"

elsif opcao == 6
	puts "Informe uma porta TCP/UDP"
	portas = gets.chomp.to_i
	system "nmap -p #{portas} #{dominio}"

elsif opcao == 7
	
#Importante definir a variável "opcao conforme: opcao = "'palavras_entre_aspas_simples dentro de aspas duplas'"
	
	system "whois #{dominio} |grep -E #{whoisbr}"

elsif opcao == 8
	system "whois #{dominio} |grep -E #{whoiscom}"

elsif opcao == 9
	system "nmap -Pn --script vuln #{dominio}"

elsif opcao == 10
	system "nmap -sV --script=http-malware-host #{dominio}"

elsif opcao == 11
	system "yum install nmap"

end

#Fim das condições if,elsif,else

puts "Consulta concluida!!!"
puts "Compartilhe o conhecimento!!!"

#Fim de código