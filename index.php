<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Skynet</title>
<meta http-equiv=”Content-Type” content=”text/html; charset=utf-8″>
</head>
<body>

<center><img src="locaweb.png"></center>


        <br>
        <hr></hr>
        <center><img src="">
        <!FORMULÁRIO>
<hr></hr>

<font color="red" face="verdana" size="2"> <b><p>SISTEMA DE ANÁLISE DE HOST</b></p></font>


<font color="red" face="verdana" size="2"> <b><p>Informe um domínio/host:</b></p></font>



<!CAMPOS DE DADOS>
<form>

<?php $dominio = (!empty($_GET['dominio']) ? $_GET['dominio'] : ''); ?>
<input class="input" type="text" value="<?php echo $dominio; ?>" placeholder="dominio..." name="dominio">

<?php $portas = (!empty($_GET['portas']) ? $_GET['portas'] : ''); ?>
<input class="input" type="text" value="<?php echo $portas; ?>" placeholder="porta(as) 80 / 80-443" name="portas">

         <input type="submit" name="Submit" value="buscar">

                </form>

        <h4><b><h3 style="color:red;">RESULTADO:</b></h3>

<?php

echo "<p><b>DNS:</p></b>";
$output = shell_exec("nslookup -type=ns $dominio |grep nameserver |grep -v '1.1.1.1#53'");
echo "<pre>$output</pre>";

echo "<p><b>MX:</p></b>";
$output = shell_exec("nslookup -type=mx $dominio |grep 'mail exchanger' |grep -v '1.1.1.1#53'");
echo "<pre>$output</pre>";

echo "<p><b>TXT:</b></p>";
$output = shell_exec("nslookup -type=txt $dominio |grep text |grep -v '1.1.1.1#53'");
echo "<pre>$output</pre>";

echo "<b>'.' tipo 'A':</b>";
$output = shell_exec("nslookup -type=a $dominio |grep Address |grep -v '1.1.1.1#53'");
echo "<pre>$output</pre>";

echo "<b>STATUS DE PORTAS:</b>";

if ($portas == null){

$output = shell_exec("nmap $dominio |grep -E 'PORT|tcp|udp'");
echo "<pre>$output</pre>";
}
else
{
$output = shell_exec("nmap -p $portas $dominio |grep -E 'tcp|udp' |grep -v 'Nmap done: 1 IP address (1 host up) scanned in'");
echo "<pre>$output</pre>";
}
echo "<a href='https://nmap.org/man/pt_BR/man-port-scanning-basics.html'>Saiba mais sobre Status de portas</a>";
echo "";
echo "<p>ECHO/REPLY-PING</p>";
$output = shell_exec("ping -c 5 $dominio");
echo "<pre>$output</pre>";

echo "<b>INFORMAÇÕES WHOIS:</b>";

$br = "|grep -iE 'person|e-mail|changed|expires|provider|status|owner|ownerid|nsstat' |grep -v '% provider, contact handle (ID), CIDR block, IP and ASN.' --color";
$int = "|grep -E 'Registry Expiry Date:|Domain Name:|Updated Date:|Creation Date:|Registrar:' --color";

$termo = '.br';
$pattern = '/' . $termo . '/';//Padrão a ser encontrado na string $dominio

if (preg_match($pattern, $dominio)) {

 $output = shell_exec("whois $dominio $br");
echo "<pre>$output</pre>";

} else {
  $output = shell_exec("whois $dominio $int");
echo "<pre>$output</pre>";

}
?>




<br>
                <br>
                </center>

</body>
</html>
