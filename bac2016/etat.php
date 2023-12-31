<?php
require ("connxion.php");
$conn=mysqli_connect($server,$username,$password,$bd)or die("probleme de connxion au serveur ou ala base de donnees");
$sql="SELECT idpiece,titre ,libelle,datespectacle";
$res=mysqli_query($conn,$sql);
echo(" <center> <table>");
echo("<tr><td><b>idpiece</b></td></tr>");
echo("<tr><td><b>titre</b></td></tr>");
echo("<tr><td><b>libelle</b></td></tr>");
echo("<tr><td><b>datespectacle</b></td></tr>");
while($tab=mysql_fectch_array($res)){
    echo ("<tr><td>$tab[0]</td>");
    echo  ("<td>$tab[1]</td>");
    echo  ("<td>$tab[2]</td></tr>");
}
echo("</table></center> <br>");

?>
