<?php
include('Connection.php');

class MVPModel {
    /**
     * Obteniendo los datos de la tabla parcelas
     * @return \mysqli_result|bool
     */
    public function getAllMVPs() {
        $query = "SELECT * FROM `mvps`";
        $connection = Connection::startConnection();
        $result = mysqli_query($connection, $query);
        mysqli_close($connection);
        return $result;
    }
}
