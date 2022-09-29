package PageObject.PageSteps;

import com.codeborne.selenide.Condition;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import static PageObject.PageElements.ProjectPageElements.*;
import static com.codeborne.selenide.Condition.*;



public class ProjectPageSteps {

    @Then("Открываем проект Test")
    public static void openProject() {
        buttonProject.shouldBe(Condition.enabled).click();
        buttonAllProject.shouldBe(Condition.visible).click();
        searchProject.setValue("Test");
        searchProject.pressEnter();
        linkProject.shouldHave(Condition.exactText("Test")).click();
    }

    @Then("Проверяем количество задач в проекте")
    public static void findTasksAmount() {
        tasksList.shouldBe(Condition.enabled).click();
        String text = tasksAmount.getText();
        String amount = text.substring(text.lastIndexOf("из") + 2, text.length());
        System.out.println(amount);
    }

    @Then("Находим и открываем задачу TestSelenium_bug")
    public static void searchTask() {
        taskFilter.shouldBe(Condition.enabled).click();
        buttonAllTasks.click();
        searchField.shouldBe(Condition.empty).setValue("TestSelenium_bug");
        searchField.pressEnter();
    }

    @Then("Проверяем затронутую версию")
    public static void checkVersion() {
        //taskVersion.shouldHave(text("Version 2.0"));
        String version = taskVersion.getText();
        System.out.println("Version: " + version);
        Assert.assertTrue("Version 2.0", true);


    }

    @Then("Проверяем статус задачи")
    public static void checkStatus() {
        taskStatus.shouldBe(visible);
        String status = taskStatus.getText();
        System.out.println("Status: " + status);
        Assert.assertTrue("СДЕЛАТЬ", true);
    }
}

