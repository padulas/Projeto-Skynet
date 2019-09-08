#Versão Inicial Skynet 2019
#skynet.rb - Build 1.0

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
puts "Informe um domínio:\n"
#Declarando a variável dominio
dominio = gets.chomp
#Oferecendo opcoes:
puts "\nAgora escolha uma opção de consulta:\n"\
puts "FERRAMENTAS DNS:"
puts "1 - MX\n" , "2 - DNS\n", "3 - TXT\n", "4 - SOA\n", "5 - A\n"
puts "FERRAMENTAS DE REDE:"
puts "6 - Check Port TCP/UDP\n", "7 - Whois Nacional\n", "8 - Whois Internacional\n"
puts "FERRAMENTAS DE SI\n", "9 - CVE's consulting\n", "10- Check Malware\n"

#Escolha de opção a ser pesquisada
puts "\nEscolha uma opção:\n"

opcao = gets.chomp.to_i - 1

if opcao >= 0 || opcap < 5
	system "nslookup -type=#{comandos[opcao]} #{dominio}"
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

end

#Fim das condições if,elsif,else

puts ""
puts ""
puts "Consulta concluida!!!"
puts "Compartilhe o conhecimento!!!"

#Fim de código
