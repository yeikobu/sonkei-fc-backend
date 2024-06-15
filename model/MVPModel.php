<?php
include('Connection.php');

class MVPModel {
    /**
     * Obteniendo los datos de la tabla parcelas
     * @return \mysqli_result|bool
     */
    public function getAllMVPs() {
        $query = "
            SELECT p.id, p.name, p.img, mvps.category, mvps.award, mvps.mvp_date AS date
            FROM players AS p, mvps
            WHERE p.id = mvps.player_id
            ORDER BY mvps.mvp_date DESC
        ";
        $connection = Connection::startConnection();
        $result = mysqli_query($connection, $query);
        mysqli_close($connection);
        return $result;
    }
}