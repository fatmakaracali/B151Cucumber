Feature: US001 Google Sayfasi Testi
  Background: Google sayfasina gidilir
    Given kullanici "googleUrl" sayfasina gitti
    And kullanici cerezi kapatir


    Scenario: Arama kutusunda volvo aratir
      Then kullanici google arama kutusunda "volvo" aratir
      And google sayfasinda basligin "ford" icerdigini test eder

      Scenario: Arama kutusunda ford aratir
        Then kullanici google arama kutusunda "ford" aratir
        And google sayfasinda basligin "ford" icerdigini test eder

        Scenario: Arama kutusunda audi aratir
          Then kullanici google arama kutusunda "audi" aratir
          But kullanici 2 saniye bekler
          And google sayfasinda basligin "audi" icerdigini test eder
          And sayfayi kapatir


             #String kullanimda " " cift tirnak ile parametreli method olusturuyoruz.
      #Numeric kullanimda yani sayfayi x saniye bekler gibi kullanimlarda da sayi belirttigimiz zaman
    #int olarak parametreli bir method olusturur. Bunu feature file da belirtme sebebimiz step definition
  #icinde yaptigimiz beklemeyi stepleri okuyan kisi ya da dev. bunu bilmez ama bilmesi gerekiyorsa
  #feature file da bunu direk gorur ve webelemente ulasilmasi icin bekleme koyuldugunu anlamis olur.
