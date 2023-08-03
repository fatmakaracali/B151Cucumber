Feature: US001 Google Sayfasi Testi

  Scenario Outline: Arama kutusunda ford aratir
    Given kullanici "googleUrl" sayfasina gitti
    And kullanici cerezi kapatir
    Then kullanici google arama kutusunda "<aranacakArac>" aratir
    But kullanici 3 saniye bekler
    And google sayfasinda basligin "<aranacakArac>" icerdigini test eder
    Examples:
      | aranacakArac |
      | volvo |
      | ford |
      |audi|
      | mercedes|

    # Scenario Outline kullanimi testNG deki data provider mantigi ile ayni calisir.
  #Scenario Outline yapisini kullandiktan sonra birden fazla veri ile aratma islemi yapmak ya da login islemi yapmak
  #istiyorsak aratmak istedigimiz kelimeyi "< >" icine belirtiriz. Daha once parametreli method olusturdugumuz icin
  #tekrar parametreli method olusturmaya gerek kalmadan Scenario Outline yapisina tiklayarak alt kisimda cikan
  #Examples bolumunde yukaridaki ornekteki gibi belirttigimiz baslik altina istedigimiz verileri girerek sirasiyla
  #arama islemlerine gerceklestirmis oluruz