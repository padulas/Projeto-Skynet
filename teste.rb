puts "\n"
print "INFORME UM DOMÍNIO/HOST: "
dominio = gets.chomp
puts "\n"
puts "INFORME UMA PORTA OU UM RANGE DE PORTAS"
puts "Ex: PORTA ÚNICA: 80, RANGE DE PORTAS: Ex: 80-443"
portas = gets.chomp
puts "\n"

puts "INFORMAÇÕES DO HOST: "
puts "\n"
system "host #{dominio} |grep address --color"
puts "\n"

#Consulta Whois domínio Nacional / Internacional
puts "Consulta Whois - Estado do domínio nacional / internacional:"

#Variável de filtro do whois

br = "|grep -E 'changed|expires|provider|status|owner|ownerid' |grep -v '% provider, contact handle (ID), CIDR block, IP and ASN.' --color"
int = "'Registry Expiry Date:|Domain Name:|Updated Date:|Creation Date:|Registrar:' --color"

   if dominio.include? '.br'
   system "whois #{dominio} #{br}"

   else
   system "whois #{dominio} |grep -E #{int}"

  end

puts "\n"

    puts "CONSULTA DNS:"
    puts "DNS UTILIZADO PARA CONSULTA:"
    puts "Open-DNS"
    system "nslookup -type=ns #{dominio}"

    puts "LISTAGEM DE PORTAS: "
       system "nmap -p #{portas} #{dominio}"

       puts "\n"

          puts "Teste de comunicação ping:"

          system "ping -c 5 #{dominio}"

       puts "\n"

          require 'colorize'
          puts '                                 Consulta concluida!!!'.white

          require 'colorize'
          puts "                               Compartilhe o conhecimento".white

          puts "\n"
          