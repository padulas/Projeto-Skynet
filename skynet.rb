#Versão Inicial Skynet 2019
#ruby 2.5.5p157 (2019-03-15 revision 67260) [x86_64-linux-gnu]
#Script para consulta de informações sobre domínios nacional/internacional
#Criado por Daniel Gomes - padulas@hotmail.com

#Declarando as variáveis de "comandos"
comandos = ['mx', 'ns', 'txt', 'soa', 'a']

#Declarando filtros para uso do "Whois".

whoisbr = "'changed|expires|provider|status'"
whoiscom = "'Registry Expiry Date:|Domain Name:|Updated Date:|Creation Date:|Registrar:'"

#Colhendo informações:
puts "\n"
puts "Informe um domínio:"
puts "\n"

#Declarando a variável "dominio"
dominio = gets.chomp
puts "\n"

#Exibe opções ao usuário
puts "Agora escolha uma opção de consulta:"
puts "\n"
puts "FERRAMENTAS DNS:"
puts "1 - MX"
puts "2 - DNS"
puts "3 - TXT"
puts "4 - SOA"
puts "5 - A"
puts "\n"
puts "FERRAMENTAS DE REDE:"
puts "6 - Check Port TCP/UDP"
puts "7 - Whois Nacional"
puts "8 - Whois Internacional"
puts "\n"
puts "FERRAMENTAS DE SI"
puts "9 - CVE's consulting"
puts "10 - Check Malware"
puts "11 - checagem de portas"

#Escolha de opção a ser pesquisada
puts "Escolha uma opção:"

#Declarando a variável "opcao"
opcao = gets.chomp.to_i   
puts "\n"

#Opcoes estrutura de controle
	case opcao
when 1
	system "nslookup -type=#{comandos[0]} #{dominio}"

when 2
	system "nslookup -type=#{comandos[1]} #{dominio}"

when 3
	system "nslookup -type=#{comandos[2]} #{dominio}"

when 4
	system "nslookup -type=#{comandos[3]} #{dominio}"

when 5
	system 'host #{dominio} |grep address*'

when 6
	"Informe uma porta TCP/UDP"
end

#Declarando variável "portas da opcao "8""
portas = gets.chomp.to_i
	system "nmap -p #{portas} #{dominio}"

	case opcao 

when 7

#OBS: Importante definir a variável "opcao conforme: opcao = "'palavras_entre_aspas_simples dentro de aspas duplas'"
	
	system "whois #{dominio} |grep -E #{whoisbr}"

when 8
	system "whois #{dominio} |grep -E #{whoiscom}"

when 9
	system "nmap -Pn --script vuln #{dominio}"

when 10
	system "nmap -sV --script=http-malware-host #{dominio}"

when 11
	system "Instalar ferramentas"
end

#Fim de estrutura condicional
"Consulta concluida!!!"
"Compartilhe o conhecimento!!!"
puts "\n"

"OBS: Caso a opcao 9-10 apresente erro instale o NMAP com os seguintes comandos:"
"Distribuição Debian e derivados:"
"#apt update -y ; apt install nmap -y"

"Distribuição Redhat Fedora e derivados"
"###############################################################################"

#Fim de código