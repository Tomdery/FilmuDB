<?php

$id = $_GET['id'];

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
        $pdo = new PDO($dsn, $user, $pass, $options);

        $stmt = "UPDATE filmai SET pavadinimas=:pavadinimas, aprasymas=:aprasymas, premjeros_data=:premjeros_data, zanro_id=:zanras 
        WHERE filmai.filmo_id=:id";
        $query = $pdo->prepare($stmt);
        $query->execute(array(
             ':pavadinimas' => $_POST['pavadinimas'],
            ':aprasymas' => $_POST['aprasymas'],
            ':premjeros_data' => $_POST['premjeros_data'],
            ':zanras' => $_POST['zanras'],
            ':id' => $id
        ));
    }
    catch (Expection $e) {
        echo "Negaliu pridėti naujo įrašo";
        echo $e->getMessage();
        exit;
    }

    header('location: ?page=all-films');
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
<div class="col-sm-3">
    <button type="submit" class="btn btn-success" name="submit">Pridėti</button>
</div>

</form>