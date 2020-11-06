<?php
include('session.php');
include_once $_SERVER['DOCUMENT_ROOT'].'/kjankowski/results/result_menu.php'; 

if(isset($_POST['Dokumentacja1'])){
    $poz = mysqli_real_escape_string($conn, $_POST['Dokumentacja']);
    $query = "UPDATE menu SET menu_poz='$poz' WHERE menu_name = 'Dokumentacja'";
    mysqli_query($conn, $query);    
}
if(isset($_POST['Blog1'])){
    $poz = mysqli_real_escape_string($conn, $_POST['Blog']);
    $query = "UPDATE menu SET menu_poz='$poz' WHERE menu_name = 'Blog'";
    mysqli_query($conn, $query);    
}
if(isset($_POST['Home1'])){
    $poz = mysqli_real_escape_string($conn, $_POST['Home']);
    $query = "UPDATE menu SET menu_poz='$poz' WHERE menu_name = 'Home'";
    mysqli_query($conn, $query);    
} ?>

<?php include('admin-head.php') ?>
<div class="container-fluid">
    <?php include('admin-nav.php') ?>
    <div class="container col-4 my-5">
        <h2 class="mb-5">Kolejność elementów menu</h2>
        <?php foreach ($menu2 as $el): ?>
        <form style="width: 500px;" action="<?php $_SERVER['PHP_SELF'] ?>" method="POST">
            <div class="form-group">
                <label for="<?php echo $el["menu_name"] ?>"><b><?php echo $el["menu_name"] ?></b> – Aktualna pozycja:
                    <b><?php echo $el["menu_poz"] ?>.</b>
                </label>
                <select class="form-control" name="<?php echo $el["menu_name"] ?>" id="<?php echo $el["menu_name"] ?>">
                    <?php for ($i=1; $i <= count($menu) ; $i++) : ?>
                    <option><?php echo $i?></option>
                    <?php endfor; ?>
                </select>
            </div>
            <button class="btn btn-primary" type="submit" name="<?php echo $el["menu_name"]."1" ?>">Ustaw</button>

        </form>
        <br>
        <?php endforeach; ?>
        <br>
        <div style="width: 500px;" class="alert alert-warning" role="alert">
            <b>UWAGA!</b> Jeżeli ustawiłeś, a aktualna pozycja się nie zmieniła – spróbuj odświeżyć stronę.
        </div>
        <div style="width: 500px;" class="alert alert-danger" role="alert">
            <b>UWAGA!</b> Każda pozycja musi posiadać swój jeden unikalny numer! Jeżeli się powtarza, zmień ASAP!
        </div>
    </div>
</div>