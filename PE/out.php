<?php
session_start();
if(isset($_SESSION["idUtente"])){
    session_destroy();
}
header("Location: {$_SERVER['HTTP_REFERER']}");
exit;
?>
