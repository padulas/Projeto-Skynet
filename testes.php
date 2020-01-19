<?php
$string = "New York";
$x = strtolower($string[1]);
if ($x == "a" || $x == "e" || $x == "i" || $x == "o" || $x == "u") {
echo "É vogal.";
} else {
echo "É consoante";
}
?>