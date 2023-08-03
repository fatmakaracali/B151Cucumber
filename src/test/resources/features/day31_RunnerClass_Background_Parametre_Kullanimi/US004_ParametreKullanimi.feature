#Scenariolarda birden fazla url'e gitmek istedigimizde ya da birden fazla urun aratmak istedigimizde her step icin
#yeniden step olusturmak yerine gitmek istedigimiz url ya da aratmak istedigimiz urunu " " stepleri yazarken stepleri
# tirnak icine alirsak step definition class'inda parametreli bir method olusturulur ve bu methodu diger url ve aratmak
# istedigimiz urunler icin direkt feature file uzerinden degistirip kullanabiliriz.Böylece tekrar tekrar her step
# için method oluşturmamış olururuz.Aşağıdaki örneklerdede bunu görebilirisiniz

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

    Scenario: TC04 Sayfada Arama Yapar
      Given kullanici "https://google.com" sayfasina gider