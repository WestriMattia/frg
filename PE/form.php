<?php

require_once('connessione.php');
$nome = $_POST['nome'];
$cognome = $_POST['cognome'];
$email = $_POST['email'];
$messaggio = $_POST['messaggio'];

$sql = "INSERT INTO contatto (nome, cognome, email, messaggio) VALUES ('$nome', '$cognome', '$email', '$messaggio')";

if ($conn->query($sql) === TRUE) {
    echo "Messaggio inviato correttamente.
    Il nostro team provvederà a risponderti il prima possibile.";
} else {
    echo "Errore durante l'invio del messaggio. ";
}
?>
