<!DOCTYPE html>
<html>
    <head>  <title> </title>    </head>
    <body>
        <?php
            // Configuration de la connexion à la base de données
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "mon_projet_licence";

            // Connexion à la base de données
            $conn = new mysqli($servername, $username, $password, $dbname);

            // Vérifier la connexion
            if ($conn->connect_error) {
                die("Échec de la connexion : " . $conn->connect_error);
            }
        ?>

    </body>
</html>