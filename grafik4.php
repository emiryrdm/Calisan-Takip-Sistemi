<?php
 $con = mysqli_connect('localhost','root','','yorka_tekstil');
mysqli_set_charset($con, 'utf8');
?>
<!DOCTYPE HTML>
<html>
<head>
 <meta charset="utf-8">
 <title>Grafik-4</title>
 <script type="text/javascript" src="https://www.google.com/jsapi"></script>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <link rel="icon" type="image/x-icon" href="https://media-exp1.licdn.com/dms/image/C4E0BAQFL462ZHj9jgA/company-logo_200_200/0/1650283830184?e=2147483647&v=beta&t=vN-mJcnwbd4XFyvqnGgA_ysj1Pt8yvCeMV7jdbgxz-Q">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script type="text/javascript">
 google.load("visualization", "1", {packages:["corechart"]});
 google.setOnLoadCallback(drawChart);
 function drawChart() {
 var data = google.visualization.arrayToDataTable([

 ['Çalışan','Gün'],
<?php 
			$query = "SELECT concat(personeller.ad,' ',personeller.soyad) AS ad_soyad, (izinler_2022.ocak)+(izinler_2022.subat)+(izinler_2022.mart)+(izinler_2022.nisan)+(izinler_2022.nisan)+(izinler_2022.mayis)+(izinler_2022.haziran)+(izinler_2022.temmuz)+(izinler_2022.agustos)+(izinler_2022.eylul)+(izinler_2022.ekim)+(izinler_2022.kasim)+(izinler_2022.aralik) AS toplam FROM izinler_2022,personeller
      WHERE personeller.personel_id=izinler_2022.calisan_id
      GROUP BY personeller.personel_id
      ORDER BY (izinler_2022.ocak)+(izinler_2022.subat)+(izinler_2022.mart)+(izinler_2022.nisan)+(izinler_2022.nisan)+(izinler_2022.mayis)+(izinler_2022.haziran)+(izinler_2022.temmuz)+(izinler_2022.agustos)+(izinler_2022.eylul)+(izinler_2022.ekim)+(izinler_2022.kasim)+(izinler_2022.aralik) ASC
      LIMIT 5";

			 $exec = mysqli_query($con,$query);
			 while($row = mysqli_fetch_array($exec)){

			 echo "['".$row['ad_soyad']."',".$row['toplam']."],";
			 }
			 ?> 
 
 ]);

 var options = {
 title: '2022 Yılında En Az İzin Kullanan 5 Çalışan ',
  pieHole: 0.1,
          pieSliceTextStyle: {
            color: 'black',
          },
          legend: 'none'
 };
 var chart = new google.visualization.ColumnChart(document.getElementById("columnchart12"));
 chart.draw(data,options);
 }
	
    </script>

</head>
<body>
 <div class="container-fluid">
 <div id="columnchart12" style="width: 100%; height: 500px;"></div>
 </div>

</body>
</html>