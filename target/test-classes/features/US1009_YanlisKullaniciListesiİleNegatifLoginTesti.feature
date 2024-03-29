Feature: US1009 Yanlis kullanici adi ve password listesi ile negatif login testi

  Scenario Outline: TC14 yanlis kullanici listesi ile giris yapilmamalı

    Given kullanici "qdUrl" anasayfaya gider
    Then ilk sayfa login linkine click yapar
    And kullanici kutusuna manuel olarak "<yanlisUsername>" yazar
    And password kutusuna manuel olarak "<yanlisPassword>" yazar
    And 3 saniye bekler
    And login butonuna basar
    And giris yapilamadigini test eder
    Then sayfayi kapatir

    Examples:
    |yanlisUsername| yanlisPassword|
    |ilker         |ilker@a.com    |
    |mehmet        |mehmet@b.com   |
    |yasar         |yasar@c.com    |
    |adem          |adam@d.com     |
    |ozgur         |ozgur@e.com    |