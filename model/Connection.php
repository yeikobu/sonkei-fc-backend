<?php
class Connection {
    /**
     * Conexión a la base de datos
     * @return \mysqli|bool
     */
    public static function startConnection() {
        $server = "127.0.0.1";
        $user = "root";
        $password = "";
        $db = "sonkei-fc";
        $connection = mysqli_connect($server, $user, $password, $db);

        //retornamos la conexión para que pueda ser reusada
        return $connection;
    }
}
