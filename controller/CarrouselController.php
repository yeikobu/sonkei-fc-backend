<?php
include '../model/CarrouselModel.php';
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Headers: Content-Type");

class CarrouselController {
    /**
     * Obtiene las parcelas desde la base de datos y las muestra con un echo en formato JSON 
     */
    public function getPhotos() {
        // Crear una instancia del modelo
        $carrouselModel = new CarrouselModel();

        // Obtener los datos del modelo
        $result = $carrouselModel -> getPhotos();

        // Crear un arreglo para almacenar los datos
        $photos = array();

        // Verificar si la consulta fue exitosa
        if ($result) {
            // Recorrer los resultados y agregarlos al arreglo
            while ($row = mysqli_fetch_assoc($result)) {
                $photos[] = $row;
            }
        } else {
            //mostrar un error 500 si la consulta falla, ya que sería error en el servidor
            http_response_code(500);
            echo "Error al obtener las imagenes.";
            return;
        }

        $json = json_encode($photos);

        // Le indicamos al header que la respuesta será en formato JSON
        header('Content-Type: application/json');
        echo $json;
    }
}

//Creamos una nueva instancia del controlador y llamamos al método para obtener los servicios
$controller = new CarrouselController();
$controller -> getPhotos();