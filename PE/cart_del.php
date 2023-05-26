<?php
session_start();
require_once("connessione.php");
if (isset($_GET['idCart'])) {
    $idCart = $_GET['idCart'];
$result = $mysql->query("DELETE FROM cart
WHERE idCart=$idCart");
}else {
    echo "<p style='color:red'>Nessun prodotto selezionato :(</p>";
   }
   header("Location:./cart.php"); 
?>

