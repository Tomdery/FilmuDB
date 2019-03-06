<?php


include "inc/links.php";

if (isset($_GET['page']))
{

    foreach ($links as $value => $key){
        switch(htmlspecialchars($_GET['page'])) {
            case $value:
                include 'pages/' . $value . '.php';
                $siteName = $key;
                break;
        }
    }

}
else {
    include "pages/home.php";
}
