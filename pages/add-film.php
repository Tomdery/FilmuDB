<form action="" method="POST">

    <?php
    if(isset($_POST['submit'])){
        foreach ($_POST as $data){
            echo "$data</br>";
        }
    }
    ?>
    <fieldset>
        <label for="pavadinimas">Filmo pavadinimas</label> <input type="text" name="pavadinimas" placeholder="Įveskite filmo pavadinima">
    </fieldset>
    <fieldset>
        <p>Aprašymas </p>
        <textarea name="aprasymas" cols="30" rows="3" placeholder="Įveskite aprašymą"></textarea>
    </fieldset>
    <fieldset>
        <label for="data">Premjeros data</label> <input type="text" name="pavadinimas" placeholder="Įveskite premjeros data">
    </fieldset>
    <fieldset>
        <select name="zanras">
            <option>Veiksmo</option>
            <option>Ne veiksmo</option>
        </select>
    </fieldset>
    <fieldset>
        <button type="submit" name="submit">Pridėti</button>
    </fieldset>
</form>

</form>