<!DOCTYPE html>
<?php   
    include_once 'cabecera.php';
?>
<body>
    
    <h1><strong>Cursirijillos</strong></h1>
    
    <div>
        <table border="3px">
            <thead>
                <th>Evento</th>
                <th>Fecha Inicio</th>
                <th>Fecha Final</th>
            </thead>
            <?php
                include '/models/MEvento.php';
                $var = new Evento();
                $list = $var->get_Eventos();
                foreach ($list as $item) {
                    $url = "evento.php";
                    echo "<tr>            
                            <td><a href=$url>$item->nombreEvento</a></td>    
                            <td>$item->fechaInicio</td>
                            <td>$item->fechaFinal</td>
                        </tr>";
                }
            ?>
        </table>
    </div>
</body>