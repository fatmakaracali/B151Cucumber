Feature: US002 BlueRentalCar Login Islemi

  Scenario: TC01 BlueRentalCar Pozitif Test
    Given kullanici "blueRentalUrl" sayfasina gitti
    Then kullanici login butonuna tiklar
    But kullanici 2 saniye bekler
    And kullanici verilen kullanici bilgileri ile login olur
      | email                         | password  |
      | sam.walker@bluerentalcars.com | c!fas_art |
      | kate.brown@bluerentalcars.com | tad1$Fas  |
    And sayfayi kapatir


     #DataTable Scenario Outline daki gibi birden fazla veriyi ayni scenario'da test etmek icin kullanilir
  #Scenario Outline' dan farkli olarak verilerle ilgili tablolari istedigimiz stepten sonra kendimiz olusturabiliriz
  #Tabloyu olusturdugumuz step'in methoduna parametre olarak cucumber.io dan DataTable parametresini ekleriz.
  #Bu parametre sayesinde olusturmus oldugumuz tabloyu bir list' e donusturup loop ile verileri kullanabiliriz.
  #Birden fazla sutun olusturduysak yine DataTable parametresi sayesinde excel' den bildigimiz row() methodu ile
  #bu datalara ulasabiliriz