<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <title>Acme Corporation</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- CSS customizado -->
    <link href="<?=$u?>assets\css\custom.css" rel="stylesheet"> 
</head>
<body>
    <div class="container bg-cinza shadow-lg p-3 mb-5 rounded">
        <header class="border-bottom">
            <div class="px-3 py-2 text-white">
                <div class="container">
                    <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                    <a href="<?=$u?>" class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none">
                        <img height="100" src="<?=$u?>assets\images\Acme-corp.webp" alt="Acme Corporation">
                    </a>

                    <ul class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small">
                        <li>
                            <a href="#" class="nav-link text-secondary">
                                <img height="55" src="assets\images\shopping-cart.png" alt="Carrinho">
                            </a>
                        </li>                    
                    </ul>
                    </div>
                </div>
            </div>
        </header>