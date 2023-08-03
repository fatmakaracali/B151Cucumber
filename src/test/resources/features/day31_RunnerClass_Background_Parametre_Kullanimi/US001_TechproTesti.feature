@all
Feature: US001 TechproEducation Sayfasi Testi
Scenario: TC01 Sayfada Arama Yapar
  Given kullanici techpro sayfasina gider
  Then arama kutusunda qa aratir
  And sayfa basliginin qa icerdigini test eder
  And sayfayi kapatir
  #Feature file'da daha önce olusturdugumuz bir method'u baska scenario'lardada tekrar olusturmadan kullanabiliriz
  # Yukaridaki örnekte sayfayi kapatir step'i  icin daha önce olusturdugumuz amazonStepDefinition class'indan kullanabiliriz
  Scenario: TC02 Sayfada Arama Yapar
    Given kullanici techpro sayfasina gider
    Then arama kutusunda java aratir
    And sayfa basliginin java icerdigini test eder
    And sayfayi kapatir

  @techpro
    Scenario: TC03 Sayfada Arama Yapar
      Given kullanici techpro sayfasina gider
      Then arama kutusunda mobile aratir
      When cikan dropdown'da mobile developer linkine tiklar
      And sayfa bsliginin Mobile icerdigini test eder
      And sayfayi kapatir
