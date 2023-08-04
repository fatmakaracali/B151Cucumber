Feature: US001 Google Sayfasinda Urun Aratma

  Scenario: TC01 Arama Kutusunda Verilen Urunler Aratilir
    Given kullanici "googleUrl" sayfasina gitti
    Then kullanici data tableda verilen bilgileri aratir
      | Datalar  |
      | samsung  |
      | nokia    |
      | iphone   |
      | apple    |
      | motorola |










