<?php
include('Connection.php');

class PlayersModel {
    /**
     * Obteniendo los datos de la tabla parcelas
     * @return \mysqli_result|bool
     */
    public function getPlayers() {
        $query = "SELECT * FROM `players`";
        $connection = Connection::startConnection();
        $result = mysqli_query($connection, $query);
        mysqli_close($connection);
        return $result;
    }
}
