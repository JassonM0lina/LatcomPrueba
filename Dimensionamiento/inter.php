<!doctype html>
<html>
<head>
<meta charset="utf-8">
</head>

<body>

<?php
    require("connection_inter.php");
    $connection =  mysqli_connect($host,$user,$pass);
    
    if (mysqli_connect_errno()) {
        echo "cannot connect with the BBDD";
        exit();
    }
    
    mysqli_select_db($connection,$db) or die ("Cannot found the BBDD");
    
    echo "Succesful connection with the interval_latcom database." . PHP_EOL ;
    echo "<br>";
    echo "Information of host: " . mysqli_get_host_info($connection) . PHP_EOL;
    echo "<br>";
    
    mysqli_set_charset($connection,"utf8");
    
    $iddays = "SELECT * FROM DAYS";
    $res_day = mysqli_query($connection,$iddays);
    
    while($row_days = mysqli_fetch_array($res_day)){
        $days[] = array($row_days['id_days']=>$row_days['name_day'],);        
    };
    //echo json_encode($days);
    foreach($days as $key=>$value){
        
        switch (implode("",$value)){
            case "monday":
                $eval_day[]=$key+1;
                break;
            case "wednesday":
                $eval_day[]=$key+1;
                break;
            case "thrusday":
                $eval_day[]=$key+1;
                break;
            case "sunday":
                $eval_day[]=$key+1;
                break;           
        }

    };
    
    for ($j=0;$j<count($eval_day);$j++){
        $int_day = $eval_day[$j];
        
        $idtime_date = "SELECT ID_TIME_DATE FROM DAYS INNER JOIN TIME_DATE ON 
                        DAYS.ID_DAYS = TIME_DATE.FKID_DAYS WHERE ID_DAYS = $int_day";
        $res_time_date = mysqli_query($connection,$idtime_date);
        
        while($row_time_date = mysqli_fetch_array($res_time_date)){
            $time_date[] =array( $row_time_date['ID_TIME_DATE']);
        };
        
        //echo json_encode($time_date);
        $int_td1 = implode(" ",$time_date[0]);
        $int_td2 = implode(" ",end($time_date));

        $erlang = "SELECT * FROM erlang WHERE fkid_time_date BETWEEN $int_td1 AND $int_td2";
        $res_erlang = mysqli_query($connection,$erlang );
        while($row_erlang = mysqli_fetch_assoc($res_erlang)){
            $ag_vol[] = $row_erlang['vol'];
            $ag_tcp[] = $row_erlang['tcp']; 
        };
        /*
        echo json_encode($ag_tcp);
        echo json_encode($ag_vol);
        */   
        for ($i=0;$i<count($time_date);$i++){
            $mul = ceil(($ag_vol[$i]*$ag_tcp[$i]/60)/30);           
            $ide = implode(" ",$time_date[$i]);
            //echo $ide."<br>";           
            $update = "UPDATE ERLANG SET AGENTS=$mul WHERE fkid_time_date=$ide";
            $res_update = mysqli_query($connection,$update);
        }
    }     
    mysqli_close($connection); 
?>

</body>
</html>