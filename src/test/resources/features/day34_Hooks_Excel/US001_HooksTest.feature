Feature: US001 Google Testi
  Background: Google sayfasina gidilir
    Given kullanici "googleUrl" sayfasina gitti
    And kullanici cerezi kapatir

@volvo
  Scenario: Arama kutusunda volvo aratir
    Then kullanici google arama kutusunda "volvo" aratir
    And google sayfasinda basligin "ford" icerdigini test eder
    And sayfayi kapatir

@audi
  Scenario: Arama kutusunda audi aratir
    Then kullanici google arama kutusunda "audi" aratir
    But kullanici 2 saniye bekler
    And google sayfasinda basligin "audi" icerdigini test eder
    And sayfayi kapatir
@ford
  Scenario: Arama kutusunda ford aratir
    Then kullanici google arama kutusunda "ford" aratir
    And google sayfasinda basligin "ford" icerdigini test eder