#Ferramenta de checagem de host

#Checagem de portas

puts "Informe um domínio:"
dominio = gets.chomp
grepwhois = ['changed', 'expires', 'provider', 'status']

cmd = system("whois #{dominio} |grep -E #{grepwhois [0, 1]}")





