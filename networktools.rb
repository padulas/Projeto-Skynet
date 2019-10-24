#Ferramenta de checagem de host

#Checagem de portas
#Whois Resumido

puts "Informe um domínio:"
dominio = gets.chomp
opcao = ['changed|expires|provider|status']


system ("whois #{dominio} |grep -E #{opcao}")










