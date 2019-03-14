<?php

session_start();

if ($_SESSION['username'] == "admin") {
    echo "Sveiki";
}
else {
    header('location: ?page=login');
}

try {
    $stmt = $pdo->query('SELECT * FROM zanrai');
}
catch (Expeption $e) {
    echo "Klaida: Negaliu gauti duomenų iš DB";
    exit;
}

$genres = $stmt->fetchAll();
$pdo = null;

if(isset($_POST['submit'])){
    try {
        if(!empty($_POST['pavadinimas']) || !empty($_POST['aprasymas']) || !empty($_POST['premjeros_data'])){
            $pdo = new PDO($dsn, $user, $pass, $options);

            $stmt = "INSERT INTO filmai (pavadinimas, aprasymas, premjeros_data, zanro_id) VALUES(:pavadinimas, :aprasymas, :premjeros_data, :zanras)";
            $query = $pdo->prepare($stmt);
            $query->execute(array(
                 ':pavadinimas' => $_POST['pavadinimas'],
                ':aprasymas' => $_POST['aprasymas'],
                ':premjeros_data' => $_POST['premjeros_data'],
                ':zanras' => $_POST['zanras']
            ));
            header('location: ?page=all-films');
        }
        else{
            echo '<p style="color:red;">Klaida. Užpildyti ne visi laukeliai.</p>';
        }

    }
    catch (Expection $e) {
        echo "Negaliu pridėti naujo įrašo";
        echo $e->getMessage();
        exit;
    }
}


?>

<form method="POST">
<div class="col-sm-3">
    <label>Filmo pavadinimas</label><input type="text" name="pavadinimas" class="form-control" placeholder="Įveskite filmo pavadinima">
</div>

<div class="col-sm-3">
    <label>Aprašymas</label>
    <textarea name="aprasymas" class="form-control" cols="51" rows="3" placeholder="Įveskite aprašymą"></textarea>
</div>

<div class="col-sm-3">
    <label>Premjeros data</label>
    <input type="text" class="form-control" name="premjeros_data" placeholder="Įveskite premjeros data">
</div>

<div class="col-sm-3">
    <label>Žanras</label>
    <select name="zanras" class="form-control">
            <option>Pasirinkite žanrą</option>
            <?php foreach ($genres as $genre):?>
            <option value="<?=$genre['id']?>"><?=$genre['zanras'];?></option>
            <?php endforeach;?>
        </select>
</div>
<br>
<div class="col-sm-3">
    <button type="submit" class="btn btn-success" name="submit">Pridėti</button>
</div>

</form>