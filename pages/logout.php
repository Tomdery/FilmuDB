<?php

session_start();
$_SESSION["username"]=$value;
unset($_SESSION["username"]);

?>