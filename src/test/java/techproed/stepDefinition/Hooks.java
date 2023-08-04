package techproed.stepDefinition;

import io.cucumber.java.Before;
import io.cucumber.java.After;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import techproed.utilities.Driver;

public class Hooks {

   /*
    Hooks class'ının kullanım amacı scenario'lardan önce veya sonra çalışmasını istediğimiz kodları
belirttiğimiz class'tır.Bunu @Before ve @After notasyonlarına sahip methodlar ile yaparız.
Bu notasyonlar'ın importu io.cucumber dan olmalıdır.
    Bu class'ın scenario'lar tarafından görülüp burdaki @Before, @After methodlarını işleme alabilmesi için
 Hooks class'ını farklı bir package da oluşturmak istersek Runner class'ındaki glue parametresine bu
 package'ı tanımlamaız gerekir. Ancak Hooks class'ını direk stepDefinition package'ı altında oluşturursak
 Runner class'ındaki glue parametresinde stepDefinition package'ı tanımlı olduğu için başka bir işlem yapmama
 gerek kalmaz.Glue parametresinde stepDefinition package'ı tanımlı olduğu için direkt hook class'ınıda kullanabiliriz.
 */

    @Before                                  //bunu düzelttik junit degil cucumberdan aldik
    public void setUp() throws Exception {
        System.out.println("Scenariolar calismaya basladi");

    }

    @Before("@audi")
    public void setUp2(){
        System.out.println("Google'da Audi aratildi");
        System.out.println("Google'da Ford aratildi");
    }

    /**
    Scenario'dan once calismasini istedigimiz @Before method'unun notasyonuna parametre olarak scenario'ya tanimladigimiz
    tag'i belirte biliriz. Dolayisiyla sadece paremetre olarak belirttigimiz @Before methodu Scenario'dan once calisaktir
 */

    @Before("@ford")
    public void setUp3(){

    }

    @After
    public void tearDown(Scenario scenario) throws Exception {
        if (scenario.isFailed()) {           //Scenario fail olursa
            TakesScreenshot ts = (TakesScreenshot) Driver.getDriver();
            scenario.attach(ts.getScreenshotAs(OutputType.BYTES),"image/jpeg","scenario_"+scenario.getName());
        }
        Driver.closeDriver();
    }

    //Bu method fail olan scenario'larda fail olan kısmın resmini rapora ekleyecektir.
}