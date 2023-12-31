<?php
$list1=$_POST["list1"];
$list2=$_POST["list2"];
require ("connxion.php");
$conn=mysql_connect($server,$username,$password,$bd)or die("probleme de connxion au serveur ou ala base de donnees");
$sql="SELECT*from salle where (list1='$list1') and (list2='$list2');";
$res=mysql_query($conn,$sql);
if (mysql_num_rows($res)==0)
   echo "Salle non diponible";
else{
$sql="SELECT*from piece where (list1='$list1') and (list2='$list2');";
$res=mysql_query($sql)or die (mysql_error());
if (mysql_num_rows()==1)
echo " Piece deja programmee ";
}else{
$sql="INSERT into piece values ('$list1', '$list2')";
$res=mysql_query($sql)or die (mysql_error());
if (mysql_affected_rows()!=-1)
echo "Ajout effectue avec succes";
}
mysql_close();
?>