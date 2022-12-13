<?php
    //das wird unser super Datenbank-Connector 

    $conn = mysqli_connect("localhost","root","","matratzenfinder");
    
    if(!$conn)
    {
        exit("Verbindungsfehler: ".mysqli_connect_error());
    }
    
?>