<?php
include_once $_SERVER['DOCUMENT_ROOT'].'/kjankowski/results/result_posts.php'; 
?>
<?php include('header.php') ?>
<main class="container  mt-5" style="text-align: center;">
    <h1 class="h2">Podsumowując</h1>
    <br>

    <p>Bardzo prostu system zarządzania treścią, który posiada podstawową funkcjonalność oraz skromny szablon.
        Nie posiada natomiast walidacji, przez co niestety można dodać do bazy danych puste pola. Niemniej cała reszta
        działa prawidłowo, a przynajmniej powinno.</p>
    <p>Panel administratora działa po uprzednim zalogowaniu się.</p>
    <p>Panel administratora umożliwia między innymi:</p>
    <ul class="list-group mx-auto mt-3 text-justify" style="max-width: 500px;">
        <li class="list-group-item active">&#8226; dostęp do panelu administratora po zalogowaniu,</li>
        <li class="list-group-item">&#8226; ustawienie brandu strony, który jest wyświetlany w tytule stron oraz w
            nawigacji,
        </li>
        <li class="list-group-item active">&#8226; ustawienie tytułu i meta opisu strony głównej,</li>
        <li class="list-group-item">&#8226; ustawienie języka strony,</li>
        <li class="list-group-item active">&#8226; indeksowanie strony głównej i podstron z wpisami,</li>
        <li class="list-group-item">&#8226; ustawienie h1 na stronie głównej,</li>
        <li class="list-group-item active">&#8226; ustawienie opisu pod h1 na stronie głównej,</li>
        <li class="list-group-item">&#8226; ustawienie obrazka wraz z tekstem alternatywnym, na stronie głównej,</li>
        <li class="list-group-item active">&#8226; wstawienie i edycje treści w kolumnach na stronie głównej,</li>
        <li class="list-group-item">&#8226; ustawienie kolejności elementów w nawigacji,</li>
        <li class="list-group-item active">&#8226; dodanie, edytowanie i usuwanie wpisów na bloga</li>



    </ul>


</main>
<?php include('footer.php'); ?>