<?php
 $con = mysqli_connect('localhost','root','','yorka_tekstil');
mysqli_set_charset($con, 'utf8');
?>
<!DOCTYPE HTML>
<html>
<head>
 <meta charset="utf-8">
 <title>Grafik-2</title>
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

 ['Departman','Çalışan'],
<?php 
			$query = "SELECT departman.departman_ad,COUNT(personeller.personel_id) AS toplam_calisan_sayisi FROM personeller,gorev,departman WHERE personeller.personel_id=gorev.calisan_id AND gorev.departman_id=departman.departman_id GROUP BY departman.departman_id";

			 $exec = mysqli_query($con,$query);
			 while($row = mysqli_fetch_array($exec)){

			 echo "['".$row['departman_ad']."',".$row['toplam_calisan_sayisi']."],";
			 }
			 ?> 
 
 ]);

 var options = {
 title: 'Departman Bazında Çalışan Sayılarının Dağılımı ',
  pieHole: 0.1,
          pieSliceTextStyle: {
            color: 'black',
          },
          legend: 'none'
 };
 var chart = new google.visualization.PieChart(document.getElementById("columnchart12"));
 chart.draw(data,options);
 }
	
    </script>

</head>
<body>
 <div class="container-fluid">
 <div id="columnchart12" style="width: 100%; height: 500px;"></div>
 </div>

 <div class="lejant" style="height:50px width:300px; ">

 <style>
.circle {
  height: 50px;
  width: 50px;
  background-color: #555;
  border-radius: 50%;
}
</style>
</head>
<body>

<div class="lejant">
    <h4>Bilgi İşlem</h4>
    <div style="background-color: rgb(51, 102, 204);}" class="circle" id="circle1"></div>
    <h4>İnsan Kaynakları</h4>
    <div style="background-color:rgb(16, 150, 24)"class="circle" id="cirle2"></div>
    <h4>Üretim</h4>
    <div style="background-color: rgb(102, 170, 0);" class="circle" id="cirle3"></div>
    <h4>ihracat</h4>
    <div style="background-color: rgb(255, 153, 0);"class="circle" id="cirle4"></div>
    <h4>Yönetim</h4>
    <div style="background-color: rgb(184, 46, 46);" class="circle" id="cirle5"></div>
    <h4>Satın Alma</h4>
    <div style="background-color: rgb(221, 68, 119);" class="circle" id="cirle6"></div>
    <h4>Pazarlama</h4>
    <div style="background-color:rgb(0, 153, 198);"class="circle" id="cirle7"></div>
    <h4>Muhasebe</h4>
    <div style="background-color: rgb(153, 0, 153);"class="circle" id="cirle8"></div>
    <h4>Kalite Kontrol</h4>
    <div  style="background-color: rgb(220, 57, 18);}" class="circle" id="cirle9"></div>



</div>


</div>

<style>

    .lejant {

        display: flex;
        width: 100%;
        
        height: 100%;
        padding-top: 3rem;
        padding-left: 4rem;
        
    }


    .lejant h4{

        padding: 1rem;

    }

   


   

 
    
</style>

</body>
</html>