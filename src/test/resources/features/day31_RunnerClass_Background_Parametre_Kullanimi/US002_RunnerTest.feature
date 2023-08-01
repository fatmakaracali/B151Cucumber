Feature: US002 Amazon Urun Arama Testi
  @g1
  Scenario: TC01 Amazonda iphone aramasi
    Given kullanici arama amazon sayfasina gider
    And sayfayi yeniler
    And kullanici arama kutusunda iphone aratir
    And basligin iphone icerdigini test eder
    And sayfayi kapatir
    @techpro
    Scenario: TC02 Amazonda samsung aramasi
      Given kullanici arama amazon sayfasina gider
      And sayfayi yeniler
      And kullanici arama kutusunda samsung aratir
      And basligin samsung icerdigini test eder
      And sayfayi kapatir