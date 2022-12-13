<?php
    $gruppe;

    $matratze;

    if(isset($_POST['gruppeAdult'])) {
        $gruppe = $_POST['gruppeAdult'];
        include('connector.php');

        $gibMirDieMatratze = 'SELECT `matratze` FROM matratzen WHERE gruppe="'.$gruppe.'"';
        $query = mysqli_query($conn, $gibMirDieMatratze);
        $result = mysqli_fetch_assoc($query);
        $matratze1 = $result['matratze'];
        mysqli_close($conn);
    } else {
        header("Location:http://localhost/matratzenfinder/first.php");
   }
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Matratzenfinder</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <span class="matratzenfinder">
            <div>
                <h1>Matratzengröße</h1>
            </div>
            <form class="altersgruppe" method="post" action="abfrage.php">
                <input type="checkbox" id="140x200" name="140x200" value="140x200">
                <label for="140x200">140x200</label>
                <input type="checkbox" id="180x200" name="180x200" value="180x200">
                <label for="180x200">180x200:</label>
                <input type="submit" value="weiter">
            </form>
        </span>
    </body>
</html>