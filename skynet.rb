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
	require 'colorize'

puts "\n"

puts "Informe um domínio:".white #Declarando a variável "dominio"
dominio = gets.chomp

puts "\n"
puts "\n"

#Exibe opções ao usuário
	require 'colorize'
puts "Agora escolha uma opção de consulta:".white
puts "\n"
require 'colorize'
	puts "FERRAMENTAS DNS:".white
require 'colorize' 
	puts "1.white require 'colorize' - MX".yellow
require 'colorize'
	puts "2 - DNS".yellow
require 'colorize'
	puts "3 - TXT".yellow
require 'colorize'
	puts "4 - SOA".yellow
require 'colorize'
	puts "5 - A".yellow
require 'colorize'
	puts "\n"
require 'colorize'
	puts "FERRAMENTAS DE REDE:".white
require 'colorize'
	puts "6 - Check Port TCP/UDP".yellow
require 'colorize'
	puts "7 - Whois Nacional".yellow
require 'colorize'
	puts "8 - Whois Internacional".yellow
puts "\n"
require 'colorize'
	puts "FERRAMENTAS DE SI".white
require 'colorize'
	puts "9 - CVEs consulting".yellow
require 'colorize'
	puts "10 - Check Malware".yellow
require 'colorize'
	puts "11 - checagem de portas".yellow
puts "\n"

#Escolha de opção a ser pesquisada
require 'colorize'
puts "Escolha uma opção:".white

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
	system "host #{dominio} |grep address*"

when 6
require 'colorize'
	puts 'Informe uma porta TCP/UDP'.gold
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

puts "\n"
#Fim de estrutura condicional
puts "\n"
puts "\n"
puts "\n"
require 'colorize' 
	puts '                                        Consulta concluida!!!'.white
require 'colorize' 
	puts "                                     Compartilhe o conhecimento".white
puts "\n"

require 'colorize'
	puts '           OBS: Caso a opcao 9-10 apresente erro instale o NMAP com os seguintes comandos:'.red
puts "\n"

require 'colorize'
	puts ' ################################################################################################'.yellow
   require 'colorize'
    puts '#                                 Distribuição Debian e derivados:                               #'.white
require 'colorize'
	puts '#                               apt update -y ; apt install nmap -y                              #'.yellow             

require 'colorize'
	puts '#                              Distribuição Redhat Fedora e derivados                            #'.white
require 'colorize'
	puts '#                                  yum update -y ; install nmap -y                               #'.yellow
require 'colorize'
	puts '#              Caso sua versão seja acima da versão 30 considere o uso do seguinte comando:      #'.white
require 'colorize'
	puts '#                                  dnf uptate -y ; dnf install nmap -y"                          #'.yellow
require 'colorize'
	puts ' ################################################################################################'.yellow
puts "\n"

	system "ruby skynet.rb"

#Fim de código