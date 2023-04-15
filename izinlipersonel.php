<?php session_start(); include 'db.php';
if ($_SESSION['yetki']==2) {
  header('Location:login.php');
}
$sorguindex = $baglanti->query("SELECT * FROM izinler_2022");

?>
<!DOCTYPE html>
<html lang="tr">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" type="image/x-icon" href="https://media-exp1.licdn.com/dms/image/C4E0BAQFL462ZHj9jgA/company-logo_200_200/0/1650283830184?e=2147483647&v=beta&t=vN-mJcnwbd4XFyvqnGgA_ysj1Pt8yvCeMV7jdbgxz-Q">
  <link rel="stylesheet" href="styles/personelbilgileri.css">
  <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
  <title>Personel İzin Bilgileri</title>
</head>
<body>
  <input checked type="checkbox" id="side">
  <div class="sidebar">
      <div class="check">
          <label for="side"><ion-icon name="play-outline"></ion-icon> </label>
          <span>Yorka Tekstil</span>
      </div>
      <div class="links">
            <?php if ($_SESSION['yetki']==1) { ?>
                <a class="link" href="personelbilgileri.php"><ion-icon name="accessibility-outline"></ion-icon> <span id="name">Personel Bilgileri</span></a>
                <a class="link" href="izinlipersonel.php"><ion-icon name="accessibility-outline"></ion-icon> <span id="name">İzinli Personel</span></a>
                <a class="link" href="mesailistesi.php"><ion-icon name="accessibility-outline"></ion-icon> <span id="name">Mesai Listesi</span></a>
          <?php  } ?>
          <?php if ($_SESSION['yetki']==2) { ?>
            <a class="link" href="personel.php"><ion-icon name="accessibility-outline"></ion-icon> <span id="name">Bilgilerim</span></a>
            <?php  } ?>


          <a class="link" href="mesaiata.php"><ion-icon name="pencil-outline"></ion-icon> <span id="name">Mesai Ata</span></a>
          <a class="link" href="izinistekleri.php"><ion-icon name="mail-unread-outline"></ion-icon> <span id="name">İzin İstekleri</span></a>
        
          </div>
          <a class="link" href="logout.php"><ion-icon name="log-out-outline"></ion-icon> <span id="name">Çıkış</span></a>
      </div>
  </div>


<table style="margin-left: 5%;">
  <tr>
    <th width="150px">AD</th>
    <th width="150px">Soyad</th>
    <th width="150px">Görevler</th>
    <th >Ocak</th>
    <th >Şubat</th>
    <th >Mart</th>
    <th >Nisan</th>
    <th >Mayıs</th>
    <th >Haziran</th>
    <th >Temmuz</th>
    <th >Ağustos</th>
    <th >Eylül</th>
    <th >Ekim</th>
    <th >Kasım</th>
    <th >Aralık</th>  
    <th >Toplam İzin</th>  
  </tr>
  <tr>
    <?php while($ciktiper = $sorguindex->fetch(PDO::FETCH_ASSOC)){ 
    	 $id=$ciktiper['calisan_id'];
    	 $sorguuser = $baglanti->query("SELECT * FROM personeller WHERE personel_id=$id");
    	 $ciktiuser = $sorguuser->fetch(PDO::FETCH_ASSOC);

    	 ?>
    <td><?=$ciktiuser['ad'] ?> </td>
    <td><?=$ciktiuser['soyad'] ?></td>
    <td><?=$ciktiuser['gorevler'] ?></td>
    <td><?=$ciktiper['ocak']?></td>
    <td><?=$ciktiper['subat']?></td>
    <td><?=$ciktiper['mart']?></td>
    <td><?=$ciktiper['nisan']?></td>
    <td><?=$ciktiper['mayis']?></td>
    <td><?=$ciktiper['haziran']?></td>
    <td><?=$ciktiper['temmuz']?></td>
    <td><?=$ciktiper['agustos']?></td>
    <td><?=$ciktiper['eylul']?></td>
    <td><?=$ciktiper['ekim']?></td>
    <td><?=$ciktiper['kasim']?></td>
    <td><?=$ciktiper['aralik']?></td>
    <?php $toplamizin=$ciktiper['ocak']+$ciktiper['subat']+$ciktiper['mart']+$ciktiper['nisan']+$ciktiper['mayis']+$ciktiper['haziran']+$ciktiper['temmuz']+$ciktiper['agustos']+$ciktiper['eylul']+$ciktiper['ekim']+$ciktiper['kasim']+$ciktiper['aralik']; ?>
    <td><?=$toplamizin?></td>
  </tr>
<?php } ?>
  
</table>


<style>
  table {
    font-family: "Roboto", sans-serif; /* Tablo içeriğinin fontunu değiştirin */
    border-collapse: collapse; /* Tablo çerçevelerinin birleştirilmesi için kullanılır */
    width: 90%; /* Tablonun genişliğini değiştirin */
    margin: 0 auto; /* Tablonun ortalaması için kullanılır */
  }
  td, th {
    border: 1px solid #dddddd; /* Tablo hücreleri çerçevelerini düzenleyin */
    text-align: left; /* Tablo içeriğinin hizalamasını değiştirin */
    padding: 8px; /* Tablo hücreleri içerisindeki boşluk miktarını değiştirin */
  }
  tr:nth-child(even) {
    background-color: #dddddd; /* Çift numaralı satırların arka plan rengini değiştirin */
  }
</style>


    
        


  
</body>
</html>