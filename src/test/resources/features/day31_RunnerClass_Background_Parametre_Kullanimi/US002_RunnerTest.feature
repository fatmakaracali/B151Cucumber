Feature: US002 Amazon Urun Arama Testi

  Scenario: TC01 Amazonda iphone aramasi
    Given kullanici arama amazon sayfasina gider
    And sayfayi yeniler
    And kullanici arama kutusunda iphone aratir
    And basligin iphone icerdigini test eder
    And sayfayi kapatir

    Scenario: TC02 Amazonda samsung aramasi
      Given kullanici arama amazon sayfasina gider
      And sayfayi yeniler
      And kullanici arama kutusunda samsung aratir
      And basligin samsung icerdigini test eder
      And sayfayi kapatir