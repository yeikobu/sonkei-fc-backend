<?php
include('Connection.php');

class CarrouselModel {
    /**
     * Obteniendo los datos de la tabla parcelas
     * @return \mysqli_result|bool
     */
    public function getPhotos() {
        $query = "SELECT * FROM `carrousel_images`";
        $connection = Connection::startConnection();
        $result = mysqli_query($connection, $query);
        mysqli_close($connection);
        return $result;
    }
}
