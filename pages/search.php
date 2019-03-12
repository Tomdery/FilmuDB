<?php $table="";

 if(isset($_POST['searchFilm'])) {

    $results = search ($_POST['search'],$dsn, $user, $pass, $options);

 if($results!=null){

   $table.='<table class="table table-responsive table-bordered">';

foreach ($results as $data) 
   {
   $table.= '<tr>'; 
       
   $table.= "<td>{$data['filmo_id']}</td>";
   $table.= "<td>{$data['pavadinimas']}</td>";  
   $table.= " <td>{$data['aprasymas']}</td>";   
   $table.= "<td>{$data['zanras']}</td>";    
   $table.= '</tr>'; 
     
   }
   $table.= '</table> ';  
   
 }
 else {
$table ="<div><h4> Filmas nerastas </h4></div>";
 }
    
 
 }
 
?>

   
<form action="" method="POST">
<div class="col-sm-3">
<input type="text" name="search" class="form-control" placeholder="Įveskite savo filmą">
<br>
<button type = "submit" class="btn btn-primary" name="searchFilm">Ieškoti</button>
</div>
    

<?=$table?>

</form>