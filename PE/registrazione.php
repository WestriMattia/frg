<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
            integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous">
        </script>
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="mystylee.css">
<title>Registrazione</title>
    </head>
    <body class="corpo">
    <center>

    <nav class="navbar" style="background-color: black; ">
      <div id="mySidenav" class="sidenav"> <a href="javascript:void(0)" class="closebtn lin" onclick="closeNav()">&times;</a>
      
      <?php

session_start();
if (isset($_SESSION['idUtente'])) {
  $nomeh=$_SESSION["nome"];
    echo '
    <a class="lin" href="index.php">Home</a>
    <a class="lin" href="shop.php">Shop</a>
    <a class="lin" href="cart.php">Carrello</a>
    <a class="lin" href="chi-siamo.php">Chi Siamo</a>
    <a class="lin" href="terminiEcondizioni.php">Termini e condizioni</a>
    <a class="lin" href="policy.php">Politica sulla privacy</a>
    <a class="lin" href="contattaci.php">Contattaci</a>
    <a class="lin" href="easterEgg/index.php">Spray</a>'; 
    if($_SESSION["moderatore"]==1){
    echo '<a class="lin" href="admin.php">Admin</a>';
    }
    echo'<footer class="lin, soca">Account di '?><?php echo"$nomeh";?><?php echo'
    <a class="lin" href="out.php">Logout</a></footer>
    
    ';
} else {
    echo '
    <a class="lin" href="index.php">Home</a>
    <a class="lin" href="shop.php">Shop</a>
    <a class="lin" href="chi-siamo.php">Chi Siamo</a>
    <a class="lin" href="terminiEcondizioni.php">Termini e condizioni</a>
    <a class="lin" href="policy.php">Politica sulla privacy</a>
    <a class="lin" href="contattaci.php">Contattaci</a>
    <a class="lin" href="easterEgg/index.php">Spray</a>
    <footer class="lin, soca">
    <a class="lin" href="accesso.php">Accedi</a>
    <a class="lin" href="registrazione.php">Registrati</a></footer>
    ';
}
?>
      </div>

      


      <span onclick="openNav()">
        <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="white" class="bi bi-list" viewBox="0 0 16 16">
          <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
        </svg>
      </span>

        <a href="index.php">
          <img src="images/logo.png" class="logo" >
          </a>

        <a href="cart.php">
          <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="white" class="bi bi-cart3" viewBox="0 0 16 16">
            <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
          </svg>
        </a>
        
    </nav>

        <div  class="registra">
        <h1 class="titolo">Registrazione</h1>
            <form action="registrazione.php" method="post" class="signin">
                    <div class="form-group">
                    <label for="inputEmail4">Email</label>
                    <input type="email" class="form-control" id="inputEmail4" name="email" required>
                    </div>
                    <div class="form-group">
                    <label for="inputPassword4">Password</label>
                    <input type="password" class="form-control" id="inputPassword4" name="password" required>
                    </div>
                <div class="form-group">
                    <label for="inputAddress">Indirizzo</label>
                    <input type="text" class="form-control" id="inputAddress" name="indirizzo" required>
                </div>
                <div class="form-group ">
                    <label for="inputAddress2">Telefono</label>
                    <input type="number"  class="form-control" id="inputAddress2" name="telefono" required>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                    <label for="inputCity">Nome</label>
                    <input type="text" class="form-control" id="inputCity" name="nome" required>
                    </div>
                    <div class="form-group col-md-6">
                    <label for="inputZip">Cognome</label>
                    <input type="text" class="form-control" id="inputZip" name="cognome" required>
                    </div>
                </div>
                <br>
            <a href="accesso.php"  style="font-family: 'Roboto', sans-serif;">Se possiedi un account accedi</a>  <br><br>
                <button type="submit" class="btn btn-primary">Registrati</button>
                <br><br>

            <?php
            
    if (!empty($_POST)) {
        $nome = $_POST["nome"];
        $cognome = $_POST["cognome"];
        $indirizzo = $_POST["indirizzo"];
        $telefono = $_POST["telefono"];
        $password = $_POST["password"];
        $email = $_POST["email"];
        $permessi = 0;


        require_once('connessione.php');
        $result = $mysql ->query("select email from login where email = '$email'");
        if ($result->num_rows >=1) {
           echo "<p style='color:red'>Utente già presente</p>";
        }else {
          if(isset($_SESSION["idUtente"])){
            session_destroy();
            session_start();
        }
            $result = $mysql ->query("insert into login(nome,cognome,indirizzo,telefono,password,email, moderatore) values ('$nome','$cognome','$indirizzo','$telefono','$password','$email', '$permessi')");
            $result = $mysql ->query("select idUtente from login where email = '$email' and password = '$password'");
            if ($result->num_rows ==1) {
                $row = $result->fetch_assoc();
            $_SESSION["idUtente"] = $row["idUtente"];
            $_SESSION["nome"] = $nome;
            $_SESSION["moderatore"] = $permessi;
          }

            
        }
      
    }
?>

</form> 
        </div>
        <footer>
<div class="footer-top">
  <div class="container">
    <div class="row">
      <div class="col-md-4">
        <h3>Informazioni</h3>
        <ul>
          <li><a href="chi-siamo.php">Chi siamo</a></li>
          <li><a href="terminiEcondizioni.php">Termini e condizioni</a></li>
          <li><a href="policy.php">Politica sulla privacy</a></li>
          <li><a href="contattaci.php">Contattaci</a></li>
        </ul>
      </div>
      <div class="col-md-4">
        <h3>Categorie</h3>
        <ul>
          <li><a href="shop.php">Abbigliamento</a></li>   
          <li><a href="easterEgg/index.php">Spray</a></li>
        </ul>
      </div>
      <div class="col-md-4">
        <h3>Seguici</h3>
        <ul class="social-icons">
          <li><a href="https://www.instagram.com/davideapolito_/" class="fa fa-instagram">Instagram</a></li>
          <li><a href="https://www.facebook.com/davide.apolito/" class="fa fa-facebook">Facebook</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<div class="footer-bottom">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <p>&copy; 2023 PSYCHEDELIC-EYE. Tutti i diritti riservati.</p>
      </div>
      <div class="col-md-6">
        <p class="text-right">Realizzato da <a href="#">MATTIA VESTRI & DAVIDE APOLITO</a></p>
      </div>
    </div>
  </div>
</div>
</footer>
    </center>
    
    </body>
    
<script src="myscript.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
  integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
  integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
  integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</html>