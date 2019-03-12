<?php

$data = NULL;

try {
    $stmt = $pdo->query('SELECT * FROM zanrai');
}
catch (Expeption $e) {
    echo "Klaida: Negaliu gauti duomenų iš DB";
    exit;
}

$genres = $stmt->fetchAll();



if(isset($_POST['submit'])){
    try {
        $stmt = 'SELECT * FROM filmai INNER JOIN zanrai on filmai.zanro_id = zanrai.id  WHERE zanrai.id = :id';
        $query = $pdo->prepare($stmt);
        $query->execute(array(
             ':id' => $_POST['zanras']
        ));
    }
    catch (Expeption $e) {
        echo "Klaida: Negaliu gauti duomenų iš DB";
        exit;
    }
    
    $data = $query->fetchAll();
    $pdo = null;
}


?>
<form method = "POST">
<div class="col-sm-3">
        <select name="zanras" class="form-control">
                <option>Pasirinkite žanrą</option>
                    <?php foreach ($genres as $genre):?>
                        <option value="<?=$genre['id']?>"><?=$genre['zanras'];?></option>
                    <?php endforeach;?>
        </select>
        <br>
            <button type="submit" class="btn btn-success" name="submit">Ieškoti</button>
        </div>
</form>
<br>

<?php if($data != NULL):?>
<div>
<table class="table table-bordered table-responsive table-striped">
    <?php foreach ($data as $item):?>
    <tr>
        <td><?=$item['filmo_id'];?></td>
        <td><?=$item['pavadinimas'];?></td>
        <td><?=$item['aprasymas'];?></td>
        <td><?=$item['zanras'];?></td>

    </tr>
    <?php endforeach;?>
</table>
</div>
    <?php endif;?>