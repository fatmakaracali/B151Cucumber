package techproed.stepDefinition;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import techproed.pages.GooglePage;
import techproed.utilities.ConfigReader;
import techproed.utilities.Driver;
import techproed.utilities.ReasablesMethods;

public class GoogleStepDefinition {

    GooglePage googlePage = new GooglePage();
    @Given("kullanici {string} sayfasina gitti")
    public void kullaniciSayfasinaGitti(String url) {


        Driver.getDriver().get(ConfigReader.getProperty(url));
        ReasablesMethods.bekle(2);


    }

    @Then("kullanici google arama kutusunda {string} aratir")
    public void kullaniciGoogleAramaKutusundaAratir(String arac) {

        googlePage.aramaKutusuGoogleUlr.sendKeys(arac, Keys.ENTER);
    }

    @And("google sayfasinda basligin {string} icerdigini test eder")
    public void googleSayfasindaBasliginIcerdiginiTestEder(String baslik) {

        Assert.assertTrue(Driver.getDriver().getTitle().contains(baslik));
    }


    @And("kullanici cerezi kapatir")
    public void kullaniciCereziKapatir() {

        googlePage.cerez.click();
        ReasablesMethods.bekle(2);
    }





    @Then("kullanici google arama kutusunda properties'den {string} aratti.")
    public void kullaniciGoogleAramaKutusundaPropertiesDenAratti(String araclar) {

        googlePage.cerez.click();
        ReasablesMethods.bekle(2);
        googlePage.aramaKutusuGoogleUlr.sendKeys(ConfigReader.getProperty(araclar), Keys.ENTER);

    }

    @And("google sayfasinda basiligin {string} icerigini test ett.")
    public void googleSayfasindaBasiliginIceriginiTestEtt(String str) {
        Assert.assertTrue(Driver.getDriver().getTitle().contains(ConfigReader.getProperty(str)));
    }


}










