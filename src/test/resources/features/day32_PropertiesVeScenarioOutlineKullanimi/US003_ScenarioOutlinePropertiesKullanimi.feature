Feature: US002 Google Sayfasi Testi

  Scenario Outline: Arama kutusunda ford aratir
    Given kullanici "googleUrl" sayfasina gitti
    Then kullanici google arama kutusunda properties'den "<aranacakArac>" aratti.
    And google sayfasinda basiligin "<aranacakArac>" icerigini test ett.
    And sayfayi kapatir
    Examples:
      | aranacakArac |
      | arac1        |
      | arac2        |
      | arac3        |

       #Eger Scenario Outline ile verileri .properties dosyasindan almak istersek Examples altindaki verileri
  #.properties dosyasinda olusturdugumuz key leri yazariz. Step definitionda olusturdugumuz parametreli method
  # ile de ConfigReader sayesinde bu key' lerin degerini kullanmis oluruz