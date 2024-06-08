<?php
include('Connection.php');

class CarrouselModel {
    /**
     * Obteniendo los datos de la tabla parcelas
     * @return \mysqli_result|bool
     */
    public function getPhotos() {
        $query = "SELECT * FROM `carrousel_images`";
        $streamConnection = Connection::startConnection();
        $res = mysqli_query($streamConnection, $query);
        mysqli_close($streamConnection);

        // Verificando si la consulta fue exitosa antes de devolver el resultado
        if ($res) {
            return $res;
        } else {
            echo "Error";
            return false;
        }
    }
}
