@tech
Feature: US003 TechproEducation Sayfasi Testi

  Background: Anasayfaya gider
    Given kullanici techpro sayfasina gider

  Scenario: TC01 Sayfada Arama Yapar
    Then arama kutusunda qa aratir
    And sayfa basliginin qa icerdigini test eder


  Scenario: TC02 Sayfada Arama Yapar
    Then arama kutusunda java aratir
    And sayfa basliginin java icerdigini test eder


  Scenario: TC03 Sayfada Arama Yapar
    Then arama kutusunda mobile aratir
    When cikan dropdown'da mobile developer linkine tiklar
    And sayfa bsliginin Mobile icerdigini test eder
    And sayfayi kapatir

  #Feature file Scenario'larda ortak kullanilan steplerde Background: yapisini kullanabiliriz
  #Her scenario'dan önce buradaki step calisir, sonra scenario'daki stepler calismaya devam eder