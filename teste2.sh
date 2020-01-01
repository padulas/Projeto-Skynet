#!/bin/bash
# Um script feito para sistemas Linux e UNIX
# que faz monitoramento com o comando PING.

# adicione endereços IP ou hostnames, 
# separados por espaços em branco, para serem
# monitorados pelo script.
HOSTS="google.com.br"

# sem ping request
CONTADOR=1

# envia relatório de email quando...
ASSUNTO="Ping falhou"
EMAIL="daniel.gomes@locaweb.com.br"
for meuhost in $HOSTS
do
    contador=$(ping -v -c $CONTADOR $meuhost | grep 'received' | awk -F',' '{print $2}' | awk '{print $1}')
    if [ $contador -eq 0 ]; then
        echo "O Host: $meuhost está fora do ar (o ping falhou) em $(date) - $ASSUNTO - $EMAIL"
        # se você preferir receber um e-mail, descomente a linha abaixo
        echo "Host : $meuhost  ${NAME[$val]} está fora do ar (o ping falhou) em $(date)" | mail -s "$ASSUNTO" $EMAIL
    fi
done