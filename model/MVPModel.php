<?php
include('Connection.php');

class MVPModel {
    /**
     * Obteniendo los datos de la tabla parcelas
     * @return \mysqli_result|bool
     */
    public function getAllMVPs() {
        $query = "
            SELECT p.id, p.name, p.img, mvps.category, mvps.award
            FROM players AS p, mvps
            where p.id = mvps.player_id;
        ";
        $connection = Connection::startConnection();
        $result = mysqli_query($connection, $query);
        mysqli_close($connection);
        return $result;
    }
}