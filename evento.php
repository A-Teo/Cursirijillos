<!DOCTYPE HTML>
<?php

    include_once 'cabecera.php';
    include '/models/MCurso.php';
?>
<body>
    <h1>SIS 2</h1>
    
    <div>
        <table border="3px">
            <thead>
                <th>Curso</th>
                <th>Fecha Inicio</th>
                <th>Fecha Final</th>
                <th>Anadir Curso</th>
            </thead>
            <?php
                include '/models/MEvento.php';
                $var = new Evento();


                $idEvento = 5;
                $curso1 = new Curso("Curso1", 1, "7/7/2014", "7/7/2014");
                $curso2 = new Curso("Curso2", 1, "7/8/2014", "7/9/2014");
                $curso3 = new Curso("Curso3", 1, "7/9/2014", "7/9/2014");

                $list = array($curso1, $curso2, $curso3);

                foreach ($list as $item) {
                    //$url = "evento.php";
                    echo "<tr>            
                            <td>$item->nombreCurso</td>    
                            <td>$item->fechaInicio</td>
                            <td>$item->fechaFinal</td>
                            <td>
                                <input type='checkbox'>
                            </td>
                        </tr>";
                }
            ?>
            
            <button> Guardar </button>
            
        </table>
    </div>
</body>
