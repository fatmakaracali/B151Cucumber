package techproed.runners;




 /**   Runner class, testNG'deki .xml file kullanimindaki gibi istedigimiz scenario'lari kullanacagimiz tag parametresi
    sayesinde calistirabiliriz. VE plugin parametresi ile raporlar alabiliriz */


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class) //Test calistirici Notasyon
@CucumberOptions(features = "src/test/resources/features",
                 glue = "techproed/stepDefinition",
                 tags = "@g1 or @g2",
                 dryRun = false ) //dryRun true secersek scenariolari kontrol eder, browser'i calistirmaz

public class Runner {
}


  /** @CucumberOptions() notasyonuna parametre olarak features--> package'in yolunu  sonra(Content Root)
                                                       glue-->stepdefinition package(source root
                                                       tag-->calistirmak istedigimiz scenariolari burada belirtiriz
     Senaryolarin nerede ve nasil calisacagi,hangi raporu kullanacagi ile alakali secenekleri bu notasyonda
     belirtiriz*/

