<?php


try {
    $stmt = $pdo->query('SELECT * FROM filmai INNER JOIN zanrai on filmai.zanro_id = zanrai.id');
}
catch (Expeption $e) {
    echo "Klaida: Negaliu gauti duomenų iš DB";
    exit;
}

$data = $stmt->fetchAll();

$pdo = null;
?>
<table class="table table-bordered table-responsive table-striped">
    <?php foreach ($data as $item):?>
    <tr>
        <td><?=$item['filmo_id'];?></td>
        <td><?=$item['pavadinimas'];?></td>
        <td><?=$item['aprasymas'];?></td>
        <td><?=$item['zanras'];?></td>
        <td>
            <a href="?page=delete&id=<?=$item['filmo_id'];?>">Ištrinti</a>
            <a href="?page=update&id=<?=$item['filmo_id'];?>">Keisti</a>
        </td>
    </tr>
    <?php endforeach;?>
</table>