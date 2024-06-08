<?php
include '../model/PlayersModel.php';
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Headers: Content-Type");

class PlayersController {
    /**
     * Obtiene las parcelas desde la base de datos y las muestra con un echo en formato JSON
     */
    public function getPlayers() {
        // Crear una instancia del modelo
        $playersModel = new PlayersModel();

        // Obtener los datos del modelo
        $result = $playersModel -> getPlayers();

        // Crear un arreglo para almacenar los datos
        $players = array();

        // Verificar si la consulta fue exitosa
        if ($result) {
            // Recorrer los resultados y agregarlos al arreglo
            while ($row = mysqli_fetch_assoc($result)) {
                $players[] = $row;
            }
        } else {
            //mostrar un error 500 si la consulta falla, ya que sería error en el servidor
            http_response_code(500);
            echo "Error al obtener las imagenes.";
            return;
        }

        $json = json_encode($players);

        // Le indicamos al header que la respuesta será en formato JSON
        header('Content-Type: application/json');
        echo $json;
    }
}

//Creamos una nueva instancia del controlador y llamamos al método para obtener los servicios
$controller = new PlayersController();
$controller -> getPlayers();