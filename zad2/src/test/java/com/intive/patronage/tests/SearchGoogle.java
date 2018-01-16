package com.intive.patronage.tests;


import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;



public class SearchGoogle {


    public SearchGoogle() {
        System.setProperty("webdriver.chrome.driver", "C:\\chromedriver.exe");
    }

    @Test
    public void myFirstAction(){


        ChromeDriver driver = new ChromeDriver();
        driver.manage().window().maximize();

        String baseUrl = "https://www.google.pl/";

        driver.get(baseUrl);

        WebDriverWait wait = new WebDriverWait(driver, 10);
        wait.until(ExpectedConditions.elementToBeClickable(By.className("gsfi")));

        driver.findElement(By.className("gsfi")).sendKeys("Intive");

        Actions actions = new Actions(driver);
        actions.sendKeys(Keys.ENTER).perform();

        wait.until(ExpectedConditions.elementToBeClickable(By.className("r")));

        WebElement element= driver.findElement(By.className("r"));
        String zmienna = element.getText();
        String intive="intive. We turn ideas into digital reality.";

        if(zmienna.equals(intive)){
            System.out.println("Intive jest pierwsze!");
        }
        else{
            System.out.println("Pierwszy wynik to:"+zmienna);
        }

        driver.quit();

    }
}
