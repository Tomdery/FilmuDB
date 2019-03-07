<form method="POST">
<div class="col-sm-4">
    <h2>Ar tikrai norite ištrinti šį filmą ?</h2>
    <button name="yes" class="btn btn-primary">Taip</button>
    <button name="no" class="btn btn-danger">Ne</button>
</div>
</form>

<?php

if(isset($_POST['yes'])){
    $id = $_GET['id'];
    
    try {
        $stmt = "DELETE FROM filmai WHERE filmo_id=:id";
        $stm = $pdo->prepare($stmt);
        $stm->bindParam(':id', $id, PDO::PARAM_INT);
        $stm->execute();
    }
    catch (Expeption $e) {
        echo "Klaida: Negaliu gauti duomenų iš DB";
        exit;
    }
    
    $pdo = null;    

    header('location: ?page=all-films');
}
else if(isset($_POST['no'])){
    header('location: ?page=all-films');
}

