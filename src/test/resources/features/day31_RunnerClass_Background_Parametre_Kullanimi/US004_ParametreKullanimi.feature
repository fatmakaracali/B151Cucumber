Feature: US004 TechproEducation Arama Testi
  Scenario: Scenario: TC01 Sayfada Arama Yapar
    Given kullanici "https://techproEducation.com" sayfasina gider
    Then arama kutusunda "Mobile" aratir
    And kullanici 2 saniye bekler
    When cikan dropdown'da mobile developer linkine tiklar
    And kullanici 1 saniye bekler
    And sayfa bsliginin Mobile icerdigini test eder
    And sayfayi kapatir


  Scenario: TC02 Sayfada Arama Yapar
    Given kullanici "https://techproeducation.com" sayfasina gider
    Then arama kutusunda "qa" aratir
    And sayfayi kapatir

  Scenario: TC03 Sayfada Arama Yapar
    Given kullanici "https://techproeducation.com" sayfasina gider
    Then arama kutusunda "java" aratir
    And sayfayi kapatir