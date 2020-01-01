puts "\n"
print "INFORME UM DOMÍNIO/HOST: "
puts "\n"

dominio = gets.chomp
puts "\n"

puts "INFORMAÇÕES DO HOST: "
puts "\n"
system "host #{dominio} |grep address --color"
puts "\n"

#Consulta Whois domínio Nacional / Internacional
puts "Consulta Whois - Estado do domínio nacional / internacional:"

#Variável de filtro do whois
br = "|grep -E 'changed|expires|provider|status' |grep -v '% provider, contact handle (ID), CIDR block, IP and ASN.'"
int = "'Registry Expiry Date:|Domain Name:|Updated Date:|Creation Date:|Registrar:'"

   if dominio.include? '.br'
   system "whois #{dominio} #{br}"

   else
   system "whois #{dominio} |grep -E #{int}"

   end

puts "\n"

    puts "CONSULTA DNS:"
    system "nslookup -type=ns #{dominio}"

puts "\n"

    puts "CHECAGEM DE PORTAS:"

       print "Informe uma porta a ser consultada ou um range de portas ex:"
       print "80-443"

       puts "\n"

       portas = gets.chomp.to_i
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
