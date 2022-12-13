<!DOCTYPE html>
<html>
    <head>
        <title>Matratzenfinder</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <span class="matratzenfinder">
            <div>
                <h1>Für wen soll die Matratze sein?</h1>
            </div>
            <form class="altersgruppe" method="post" action="second.php">
                <input type="checkbox" id="gruppeAdult" name="gruppeAdult" value="adult">
                <label for="gruppeAdult">Erwachsene</label>
                <input type="checkbox" id="gruppeChild" name="gruppeChild" value="children">
                <label for="gruppeChild">Kinder</label>
                <input type="submit" value="weiter">
            </form>
        </span>
    </body>
</html>