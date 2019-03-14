<?php

session_start();
$error = "";

if(isset($_POST['submit'])) {
try {
    $stmt = 'SELECT * FROM users WHERE username=:username AND password=:password';
    $query = $pdo->prepare($stmt);
    $query->execute(array(
         ':username' => $_POST['username'],
         ':password' => $_POST['password']
        ));

         if ($_POST['login'] == "admin" && $_POST['password'] == "admin"){
            $_SESSION['username'] = "admin";
        }
        else {
            $error = "Neteisingi prisijungimo duomenys";
        }

}
catch (Expeption $e) {
    echo "Klaida: Negaliu gauti duomenų iš DB";
    exit;
    }
}


?>

<form method="POST">
    <input type="text" class="form-control" name="login" placeholder="Login">
    <input type="text" class="form-control" name="password" placeholder="Password">
    <button type="submit" class="btn btn-success" name="submit">Prisijungti</button>
</form>