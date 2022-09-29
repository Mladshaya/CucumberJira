Feature: Авторизация в Jira, проверка списка задач, проверка версии и статуса задачи, создание задачи

  Scenario: Авторизуемся в Jira
    Given Открываем главную страницу jira
    And Вводим логин и пароль

  Scenario: Открываем проект Test
    Given Открываем главную страницу jira
    And Вводим логин и пароль
    Then Открываем проект Test

  Scenario: Проверяем количество созданных задач в проекте Test
    Given Открываем главную страницу jira
    And Вводим логин и пароль
    Then Открываем проект Test
    Then Проверяем количество задач в проекте

  Scenario: Находим и проверяем версию и статус задачи TestSelenium_bug
    Given Открываем главную страницу jira
    And Вводим логин и пароль
    Then Открываем проект Test
    Then Проверяем количество задач в проекте
    Then Находим и открываем задачу TestSelenium_bug
    Then Проверяем затронутую версию
    Then Проверяем статус задачи

  Scenario: Создаем баг и проводим по статусам
    Given Открываем главную страницу jira
    And Вводим логин и пароль
    Then Открываем проект Test
    Then Проверяем количество задач в проекте
    Then Находим и открываем задачу TestSelenium_bug
    Then Проверяем затронутую версию
    Then Проверяем статус задачи
    Then Создаем баг
    Then Проводим баг по статусам
