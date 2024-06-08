<?php
include('Connection.php');

class UpcomingTrainingsModel {
    /**
     * Obteniendo los datos de la tabla parcelas
     * @return \mysqli_result|bool
     */
    public function getUpcomingTrainigs() {
        $query = "SELECT * FROM `upcoming_trainings` AS ut WHERE ut.date > NOW()";
        $connection = Connection::startConnection();
        $result = mysqli_query($connection, $query);
        mysqli_close($connection);
        return $result;
    }
}
