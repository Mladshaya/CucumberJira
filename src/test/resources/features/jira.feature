@all
Feature: Авторизация в Jira, проверка списка задач, проверка версии и статуса задачи, создание задачи

  Background:
    Given Открываем главную страницу jira "https://edujira.ifellow.ru/"
    And Вводим логин "shustova" и пароль "Qwerty123"

  @project
  Scenario: Открываем проект Test
    Then Открываем проект "Test"

  @project
  Scenario: Проверяем количество созданных задач в проекте Test
    Then Открываем проект "Test"
    Then Проверяем количество задач в проекте

  @task
  Scenario: Находим и проверяем версию и статус задачи TestSelenium_bug
    Then Открываем проект "Test"
    Then Проверяем количество задач в проекте
    Then Находим и открываем задачу "TestSelenium_bug"
    Then Проверяем затронутую версию
    Then Проверяем статус задачи

  @bug
  Scenario: Создаем баг и проводим по статусам
    Then Открываем проект "Test"
    Then Проверяем количество задач в проекте
    Then Находим и открываем задачу "TestSelenium_bug"
    Then Проверяем затронутую версию
    Then Проверяем статус задачи
    Then Создаем баг
    Then Проводим баг по статусам
