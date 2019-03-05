<?php
if(isset($_POST['submit'])){
    try {
        $pdo = new PDO($dsn, $user, $pass, $options);

        $stmt = "INSERT INTO filmai (pavadinimas, aprasymas, premjeros_data) VALUES(:pavadinimas, :aprasymas, :premjeros_data)";
        $query = $pdo->prepare($stmt);
        $query->execute(array(
             ':pavadinimas' => $_POST['pavadinimas'],
            ':aprasymas' => $_POST['aprasymas'],
            ':premjeros_data' => $_POST['premjeros_data']
        ));
    }
    catch (Expection $e) {
        echo "Negaliu pridėti naujo įrašo";
        echo $e->getMessage();
        exit;
    }
}

?>

<form method="POST">
        <p> Filmo pavadinimas</p> <input type="text" name="pavadinimas" placeholder="Įveskite filmo pavadinima">
        <p>Aprašymas</p>
        <textarea name="aprasymas" cols="30" rows="3" placeholder="Įveskite aprašymą"></textarea>
        <p>Premjeros data</p> <input type="text" name="premjeros_data" placeholder="Įveskite premjeros data">
        <p>Žanras</p>
        <select name="zanras">
            <option>Veiksmo</option>
            <option>Ne veiksmo</option>
        </select>
        <button type="submit" name="submit">Pridėti</button>
</form>