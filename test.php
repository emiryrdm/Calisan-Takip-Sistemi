<?php
error_reporting(0);
    session_start();

    include "db.php";

 if ($_POST['onay']=="Onay" || $_POST['onay']=="Sor" ) {
  
$adi=$_SESSION['name'];
$soyadi=$_SESSION['pass'];
$izin_tur=$_POST['izintur'];
$id=$_SESSION['id'];
$izin_tarihi=$_POST['istenilen_izin_tarihi'];
    try {
    $sorgu = $baglanti->prepare("INSERT INTO personel_izin_talep(personel_id,ad,soyad,istenilen_izin_tarihi,izin_türü) 
        VALUES(:id,:benim_adim, :benim_soyadim, :izin_tarihi, :izin)");

    $sorgu->execute(
        array(
            ':id'=> $id,
            ':benim_adim' => $adi,
            ':benim_soyadim' => $soyadi,
            ':izin_tarihi' => $izin_tarihi,  
            ':izin' => $izin_tur   
            
));
     // echo "<p>Bilgiler başarılı bir şekilde kaydedildi.</p>"
     echo '<script>alert("İzin Talebiniz alındı!")</script>';
     echo '
   <script>
    setTimeout(function(){   
        window.location="izinistekleri.php";
        //3 saniye sonra yönlenecek
        }, 1);
  </script>';
      //$baglanti = null;
    } catch (PDOException $e) {
        die($e->getMessage());
    }
}



if($_GET['izin_onay']=="on"){
   $adi=$_GET['ad'];
$soyadi=$_GET['soyad'];;

//$izin_tur=$_POST['izintur'];
$id=$_SESSION['id'];
$id_onay=$_GET['id'];
$del_id=$_GET['del_id'];
$izin_tarihi=$_GET['izin_tarihi'];
try {
    $sorgu = $baglanti->prepare("INSERT INTO izinler_2023(personel_id,ad,soyad,izin_baslangic,izin_bitis) 
        VALUES(:id,:benim_adim, :benim_soyadim, :izin_start, :izin_end)");

    $sorgu->execute(
        array(
            ':id'=> $id_onay,
            ':benim_adim' => $adi,
            ':benim_soyadim' => $soyadi,
            ':izin_start' => $izin_tarihi,  
            ':izin_end' => $izin_tarihi   
            
));
      echo '<script>alert("İzin Başarıyla Verildi!")</script>';
     echo '
   <script>
    setTimeout(function(){   
        window.location="izinistekleri.php";
        //3 saniye sonra yönlenecek
        }, 1);
  </script>';
       $kayit_sayisi = $baglanti->exec("DELETE FROM personel_izin_talep WHERE id = $del_id ");
//header("Location:izinistekleri.php");
     // $baglanti = null;
    } catch (PDOException $e) {
        die($e->getMessage());
    }


   
}
if(isset($_GET['per_id'])){
    $id=$_GET['per_id'];
    $query2 = $baglanti->query("SELECT * FROM personeller WHERE personel_id='".$id."'",PDO::FETCH_ASSOC);
    $ciktiuser = $query2->fetch(PDO::FETCH_ASSOC);
    $ad=$ciktiuser['ad'];
    $soyad=$ciktiuser['soyad'];
    $date=$_GET['date'];

   try{
    $sorgu = $baglanti->prepare("INSERT INTO mesailer_2023(calisan_id,ad,soyad,mesai_tarih)VALUES(:id,:ad,:soyad,:mesai_tarih)");
    $sorgu->execute(array(
        ':id'=>$id,
        'ad'=>$ad,
        'soyad'=>$soyad,
        'mesai_tarih'=>$date
    ));
     echo '<script>alert("Mesai Başarıyla Eklendi!")</script>';
     echo '
   <script>
    setTimeout(function(){   
        window.location="mesaiata.php";
        //3 saniye sonra yönlenecek
        }, 1);
  </script>';
    // echo "<p>Bilgiler başarılı bir şekilde Güncellendi.</p>";
     //header("Location:mesai.php");

}catch (PDOException $e) {
        die($e->getMessage());
    }
}

 ?>