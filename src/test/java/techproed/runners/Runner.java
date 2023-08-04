package techproed.runners;




 /**   Runner class, testNG'deki .xml file kullanimindaki gibi istedigimiz scenario'lari kullanacagimiz tag parametresi
    sayesinde calistirabiliriz. VE plugin parametresi ile raporlar alabiliriz */


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class) //Test calistirici Notasyon
@CucumberOptions(plugin ={"pretty","html:target/default-cucumber-reports.html",
                                   "json:target/json-reports/cucumber.json",
                                   "junit:target/xml-report/cucumber.xml"},
                 features = "src/test/resources/features",
                 glue = "techproed/stepDefinition",
                 tags = "@audi",
                 dryRun = false,      //dryRun true secersek scenariolari kontrol eder, browser'i calistirmaz
                 monochrome = true)   // false yazarsak renkli konsola stepleri renkli yazdirir

public class Runner {
}


  /** @CucumberOptions() notasyonuna parametre olarak features--> package'in yolunu  sonra(Content Root)
                                                       glue-->stepdefinition package(source root
                                                       tag-->calistirmak istedigimiz scenariolari burada belirtiriz
     Senaryolarin nerede ve nasil calisacagi,hangi raporu kullanacagi ile alakali secenekleri bu notasyonda
     belirtiriz*/

