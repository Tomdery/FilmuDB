<?php

include "inc/links.php";

if (isset($_GET['page']))
{

    foreach ($links as $value => $key){
        switch($_GET['page']) {
            case $value:
                include 'pages/' . $value . '.php';
                break;
        }
    }

}
else {
    include "pages/home.php";
}
