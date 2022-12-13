<?php
    $gruppe;
    $matratze;
    include('second.php');

    

    if(isset($_POST['180x200'])) {
        $size1= $_POST['180x200'];
        include('connector.php');

        $gibMirDieMatratze2 = 'SELECT `groeße` FROM matratzen WHERE groeße="'.$size1.'"';
        $query2 = mysqli_query($conn, $gibMirDieMatratze2);
        $result2 = mysqli_fetch_assoc($query2);
        $matratze2 = $result2['groeße'];
        $matratze = $matratze1.$matratze2;
        mysqli_close($conn);
    } else {
        header("Location:http://localhost/matratzenfinder/second.php");
   }
?>

<html>
    <head>
    <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h1>Matratze:</h1>
        <?php            
            echo("<p>".$matratze."</p>");
        ?>
    </body>
</html>