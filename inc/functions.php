<?php

function toDatabase ($dsn, $user ,$pass,$options){
    
    try {
      
           $pdo = new PDO($dsn, $user ,$pass,$options);
         }
         catch (Exception $e) {
           echo "Prisijungimas prie duomenų bazės negalimas";
           echo $e->getMessage();
        exit;
      }
      return $pdo;
   }


function search ($searchResult, $dsn, $user, $pass, $options){
  $pdo = toDatabase($dsn, $user, $pass, $options);
  $search="%".$searchResult."%";
  $sql ="SELECT filmai.filmo_id, pavadinimas, aprasymas, zanrai.zanras from filmai inner join zanrai on filmai.zanro_id=zanrai.id WHERE pavadinimas like :search;";
  $stmt = $pdo->prepare($sql);
  $stmt->bindParam(':search',$search, PDO::PARAM_STR);
  $stmt->execute();
  $results = $stmt->fetchall();
  $pdo = null;
  return $results;
}

?>