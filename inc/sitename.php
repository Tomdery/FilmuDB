<?php

include "inc/links.php";

if (isset($_GET['page']))
{

    foreach ($links as $value => $key){
        switch(htmlspecialchars($_GET['page'])) {
            case $value:
                $siteName = $key;
                break;
        }
    }

}
else {
    $siteName = "Pagrindinis puslapis";
}