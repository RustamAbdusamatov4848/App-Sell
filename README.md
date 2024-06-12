# APP - SELL

This is my learning project to practice my skills in creating web applications and websites.
APP - SELL provides a simple and intuitive interface for users who want to sell their items.
Users can quickly create listings, add images, and set prices.

## Technologies

The project utilizes the following technology stack:

- **Spring Boot**: The primary framework for building web applications in Java.
- **Spring Data JPA**: For database interaction through object-relational mapping (ORM).
- **Freemarker**: A template engine for creating dynamic web pages.
- **Spring Boot Security**: To secure the application.
- **Spring Boot Web**: For web application development.
- **MySQL**: A relational database to store information.
- **Lombok**: A library to reduce boilerplate code (e.g., getters, setters).
- **JUnit**: A library for unit testing.
- **CSS**

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/RustamAbdusamatov4848/App-Sell.git
    ```

2. Navigate to the project directory:

    ```bash
    cd App-Sell
    ```

3. Set up the MySQL database:

    - Create a database named `app_sell`.
    - Update the `src/main/resources/application.properties` file with your database access details.

4. Build the project using Maven:

    ```bash
    mvn clean install
    ```

5. Run the application:

    ```bash
    mvn spring-boot:run
    ```

## Usage

Once the application is running, it will be available at [http://localhost:8080](http://localhost:8080). You can:

1. Register or log in to your account.
2. Fill in the required information about the item being sold.
3. Add images of the item.
4. Set a price and save your ad.
5. Click on the "Create ad" button.

## Project Structure

- `src/main/java/com/app/sell` - Main directory containing source code.
- `src/main/resources/templates` - Directory with Freemarker templates.
- `src/main/resources/application.properties` - Application configuration file.

## Key Features

- User registration and authentication using Spring Boot Security.
- User and role management.
- Adding, editing, and deleting sale listings.
- Viewing a list of available items for purchase.
- Unit testing with JUnit.

## Testing

The project includes unit tests for the core components. To run the tests, execute:

```bash
mvn test
```
---

# APP - SELL

Это мой учебный проект для практики навыков создания веб-приложений и веб-сайтов.
APP - SELL предоставляет простой и интуитивно понятный интерфейс для пользователей, которые хотят продать свои вещи.
Пользователи могут быстро создавать объявления, добавлять изображения и устанавливать цены.

## Технологии

В проекте используется следующий стек технологий:

- **Spring Boot**: основной фреймворк для создания веб-приложений на Java.
- **Spring Data JPA**: для работы с базой данных через объектно-реляционное отображение (ORM).
- **Freemarker**: шаблонизатор для создания динамических веб-страниц.
- **Spring Boot Security**: для обеспечения безопасности приложения.
- **Spring Boot Web**: для разработки веб-приложений.
- **MySQL**: реляционная база данных для хранения информации.
- **Lombok**: библиотека для сокращения шаблонного кода (например, геттеры, сеттеры).
- **JUnit**: библиотека для модульного тестирования.
- **CSS**: для стилизации веб-страниц.

## Установка

1. Клонируйте репозиторий:

    ```bash
    git clone https://github.com/RustamAbdusamatov4848/App-Sell.git
    ```

2. Перейдите в директорию проекта:

    ```bash
    cd App-Sell
    ```

3. Настройте базу данных MySQL:

    - Создайте базу данных `app_sell`.
    - Обновите файл `src/main/resources/application.properties` с вашими данными для доступа к базе данных.

4. Постройте проект с помощью Maven:

    ```bash
    mvn clean install
    ```

5. Запустите приложение:

    ```bash
    mvn spring-boot:run
    ```

## Использование

После запуска приложения, оно будет доступно по адресу [http://localhost:8080](http://localhost:8080). Вы можете:

1. Зарегистрируйтесь или войдите в свою учетную запись.
2. Заполните необходимую информацию о продаваемом товаре.
3. Добавьте изображения товара.
4. Установите цену и сохраните объявление.
5. Нажмите кнопку «Создать объявление».

## Структура проекта

- `src/main/java/com/app/sell` - основная директория с исходным кодом.
- `src/main/resources/templates` - директория с шаблонами Freemarker.
- `src/main/resources/application.properties` - файл конфигурации приложения.

## Основные функции

- Регистрация и аутентификация пользователей с использованием Spring Boot Security.
- Управление пользователями и ролями.
- Добавление, редактирование и удаление объявлений о продаже.
- Просмотр списка доступных для покупки вещей.
- Модульное тестирование с использованием JUnit.

## Тестирование

Проект включает в себя модульные тесты для основных компонентов. Для запуска тестов выполните:

```bash
mvn test


