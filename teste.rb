#Versão Inicial Skynet 2019
##ruby 2.5.5p157 (2019-03-15 revision 67260) [x86_64-linux-gnu]
##Script para consulta de informações sobre domínios nacional/internacional
##Criado por Daniel Gomes - padulas@hotmail.com
##Ferramenta de checagem de host************************

#Checagem de portas
#Whois Resumido
#print "Vamos fazer uma análise:"
#print "Informe um domínio:"
#dominio = gets.chomp
#
##Consulta Whois domínio Nacional / Internacional
puts "Consulta Whois - Estado do domínio nacional / internacional:"
puts "Escolha uma das opções listadas abaixo:"
puts "Domínio Nacional - BR"
puts "Domínio Internacional"
print "("
opcao = gets.chomp
print ")"

#Variável de filtro do whois
br = ['changed|expires|provider|status']
int = ['Registry Expiry Date:|Domain Name:|Updated Date:|Creation Date:|Registrar:']

case opcao == 1
     system "whois #{dominio} |grep -E #{br}"

when opcao == 2
     system "whois #{dominio} |grep -E #{int}"
end

     puts "Consulta DNS"

       puts "Checagem de portas"
       print "Informe uma porta a ser consultada ou um range de portas ex:"
       print "80-443"
       portas = gets.chomp.to_i
       system "nmap -p #{portas} #{dominio}"

          puts "Teste de comunicação ping:"
          puts "Quantos saltos ?"
          system "ping -c #{saltos} #{dominio}"

          require 'colorize'
          puts '                                 Consulta concluida!!!'.white

          require 'colorize'
          puts "                               Compartilhe o conhecimento".white

          puts "\n"
                            require 'colorize'

                                puts ' ################################################################################################'.yellow
                                require 'colorize'
                                    puts '#                                 Distribuição Debian e derivados:                               #'.white
                                    require 'colorize'
                                        puts '#                               apt update -y ; apt install nmap -y                              #'.yellow

                                        require 'colorize'
