<?php session_start(); include 'db.php';
if ($_SESSION['yetki']==2) {
  header('Location:login.php');
}
$sorguindex = $baglanti->query("SELECT ad,soyad,gorevler FROM personeller");

?>
<!DOCTYPE html>
<html lang="tr">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="icon" type="image/x-icon" href="https://media-exp1.licdn.com/dms/image/C4E0BAQFL462ZHj9jgA/company-logo_200_200/0/1650283830184?e=2147483647&v=beta&t=vN-mJcnwbd4XFyvqnGgA_ysj1Pt8yvCeMV7jdbgxz-Q">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="styles/personelbilgileri.css">
  <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
  <title>Personel Bilgileri</title>
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

          <a href=""></a>
          <a class="link" href="mesaiata.php"><ion-icon name="pencil-outline"></ion-icon> <span id="name">Mesai Ata</span></a>
          <a class="link" href="izinistekleri.php"><ion-icon name="mail-unread-outline"></ion-icon> <span id="name">İzin İstekleri</span></a>
          
          </div>
          <a class="link" href="logout.php"><ion-icon name="log-out-outline"></ion-icon> <span id="name">Çıkış</span></a>
      </div>
  </div>
  <br>
  <div class="grfbtn" style="margin-left:1cm; margin-top:1cm; height:180px;  6px; "><a href="grafik.php"></a>

             <form action="grafik.php" target="_blank" , method="post">

             <button tpye="submit" id="grf" style="padding: 1cm 2cm;">2022 Yılında Saat Bazlı Mesai<a href="grafik.php"></a></button>
            
            </form>



            <form action="grafik2.php" target="_blank", method="post">

            <button tpye="submit" id="grf" style="padding: 1cm 2cm;">Departman Bazında Çalışan Sayılarının Dağılımı<a href="grafik.php"></a></button>

            </form>


            <form action="grafik3.php" target="_blank" , method="post">

            <button tpye="submit" id="grf" style="padding: 1cm 2cm;">2022 Yılında En Çok Mesai Yapan 5 Çalışan<a href="grafik.php"></a></button>

            </form>

            
<form action="grafik4.php"  target="_blank", method="post">

<button tpye="submit" id="grf" style="padding: 1cm 2cm;">2022 Yılında En Az İzin Yapan 5 Çalışan<a href="grafik.php"></a></button>

</form>


            


  <style>

              .grfbtn {
                display: flex  ;
                padding: 1cm;
                margin-right: 5cm;
                cursor: pointer;
                font-family: ;
               

              }

              .grfbtn #grf{
                margin-left: 0.5cm;
                text-align: center;
                line-height: normal;
                display: flex;
                align-items: center;
                background-color: gray;
                width: 330px;
                background-color: #45a049;
                border: 15px;
                border-color: #FA9448;
                border-style: groove;
                
                
                }


              
                .grfbtn #grf:hover{

                  background-color: #ff9999;
                  cursor: pointer;
                }


  </style>



</div>
  </div>
  <style>

            #grf {
                text-align: center;
                display: justify;
                width: 150px;
                height: 50px;

            }

  </style>
 

<table style="margin-left: 30%;">
  <tr>
    <th width="150px">AD</th>
    <th width="150px">Soyad</th>
    <th width="150px">Görevler</th>
    <th width="85px">Mesai Ata</th>
    <th width="85px">İzin Ata</th>  
  </tr>
  <tr>
    <?php while($ciktiper = $sorguindex->fetch(PDO::FETCH_ASSOC)){ ?>
    <td><?=$ciktiper['ad'] ?> </td>
    <td><?=$ciktiper['soyad'] ?></td>
    <td><?=$ciktiper['gorevler'] ?></td>
    <td width="3900px" ><button style="background-color: #BEEB9F; padding: 10px; border-radius: 10%;" p value="Mesai"><a style="text-decoration: none;" href="mesaiata.php?mesai=on">Mesai Ata</a></button></td>
    <td width=3900px"><button style="background-color: #FA9448; padding:10px ; border-radius 10%;"   value="İzin"><a style="text-decoration: none;" href="izinistekleri.php?izin=on">İzin Ver</a></button></td>
  </tr>
<?php } ?>
  
</table>
    
        

<style>
  .mesai-button {
    display: inline-block;
    font-family: "Roboto", sans-serif;
    font-weight: 500;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    user-select: none;
    border: 1px solid #455C7B;
    color: #ffffff;
    background-color: #455C7B;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: 0.25rem;
    cursor: pointer;
  }
  .izin-button {
    display: inline-block;
    font-family: "Roboto", sans-serif;
    font-weight: 500;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    user-select: none;
    border: 1px solid #28a745;
    color: #ffffff;
    background-color: #28a745;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: 0.25rem;
    cursor: pointer;
  }
  table {
    font-family: "Roboto", sans-serif;
    border-collapse: collapse;
    width: 600px;
    margin: 0 auto;
  }
  td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
    
  }
  tr:nth-child(even) {
    background-color: #dddddd;
  }
</style>

  
</body>
</html>