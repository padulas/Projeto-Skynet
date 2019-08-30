#Ferramenta de checagem de host

#Checagem de portas
#Whois Resumido
#
#

puts "Informe um domínio:"
dominio = gets.chomp

cmd = system (whois #{dominio} |grep -E 'changed|expires|provider|created|status'






