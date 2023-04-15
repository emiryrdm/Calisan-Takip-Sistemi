<?php
 $con = mysqli_connect('localhost','root','','yorka_tekstil');
mysqli_set_charset($con, 'utf8');
?>
<!DOCTYPE HTML>
<html>
<head>
 <meta charset="utf-8">
 <title>Grafik-3</title>
 <script type="text/javascript" src="https://www.google.com/jsapi"></script>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="icon" type="image/x-icon" href="https://media-exp1.licdn.com/dms/image/C4E0BAQFL462ZHj9jgA/company-logo_200_200/0/1650283830184?e=2147483647&v=beta&t=vN-mJcnwbd4XFyvqnGgA_ysj1Pt8yvCeMV7jdbgxz-Q">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script type="text/javascript">
 google.load("visualization", "1", {packages:["corechart"]});
 google.setOnLoadCallback(drawChart);
 function drawChart() {
 var data = google.visualization.arrayToDataTable([

 ['Departman','Saat'],
<?php 
			$query = "SELECT concat(personeller.ad,' ',personeller.soyad) AS ad_soyad, (mesailer_2022.ocak)+(mesailer_2022.subat)+(mesailer_2022.mart)+(mesailer_2022.nisan)+(mesailer_2022.nisan)+(mesailer_2022.mayis)+(mesailer_2022.haziran)+(mesailer_2022.temmuz)+(mesailer_2022.agustos)+(mesailer_2022.eylul)+(mesailer_2022.ekim)+(mesailer_2022.kasim)+(mesailer_2022.aralik) AS toplam FROM mesailer_2022,personeller WHERE personeller.personel_id=mesailer_2022.calisan_id GROUP BY personeller.personel_id ORDER BY (mesailer_2022.ocak)+(mesailer_2022.subat)+(mesailer_2022.mart)+(mesailer_2022.nisan)+(mesailer_2022.nisan)+(mesailer_2022.mayis)+(mesailer_2022.haziran)+(mesailer_2022.temmuz)+(mesailer_2022.agustos)+(mesailer_2022.eylul)+(mesailer_2022.ekim)+(mesailer_2022.kasim)+(mesailer_2022.aralik) DESC LIMIT 5";

			 $exec = mysqli_query($con,$query);
			 while($row = mysqli_fetch_array($exec)){

			 echo "['".$row['ad_soyad']."',".$row['toplam']."],";
			 }
			 ?> 
 
 ]);

 var options = {
 title: '2022 Yılında En Çok Mesai Yapan 5 Çalışan ',
  pieHole: 0.1,
          pieSliceTextStyle: {
            color: 'black',
          },
          legend: 'none'
 };
 var chart = new google.visualization.BarChart(document.getElementById("columnchart12"));
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