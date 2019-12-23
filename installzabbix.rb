#Instalador do Zabbix versão: 
#Script Criado por Daniel Gomes - Cloud Locaweb

puts "Instalando o Zabbix monitoramento"
puts "\n"
#Atualizando sistemas de pacotes
system "yum update -y"

#Instalando repositórios do EPEL
puts "Em seguida vamos instalar o repositório adicional Epel."
system "yum -y install epel-release"

#Limpando repositórios utilizados no processo de instalação"
puts "Limpando repositórios utilizados"
system "yum clean all"

#Instalando ferramentas essenciais TCPDUMP, TELNET e 
puts "Instalando ferramentas essenciais"
system "yum -y install vim htop tcpdump telnet -y"

#Promovendo alterações no SELINUX
puts "Alterando arquivo de configuração: vim /etc/selinux/config"
system "sed -i 's/SELINUX=enforcing/SELINUX=disabled/g'"

#Instalando serviços PHP - HTTPD - MARIADB
system "yum -y install httpd php php-pdo php-mysql mariadb-server"
system "systemctl start httpd.service"
system "systemctl enable httpd.service"

#Habilitando o serviço do MARIADB para inicializar junto ao sistema operacional
system "systemctl enable mariadb.service"
system "systemctl start mariadb.service"

#Necessário reiniciar o servidor para aplicar as configurações.
puts "Reinicie seu servidor para aplicar algumas configurações"

#Adicionar segundo script a inicialização do sistema para continuar o processo de instalação.
#system "ruby /root/script2.rb"







