<?php

try {

    $baglanti = new PDO("mysql:host=localhost;dbname=yorka_tekstil", "root", "");
    $baglanti->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $baglanti->exec("set names utf8mb4");
} catch (PDOException $e) {
    die($e->getMessage());
}



?>