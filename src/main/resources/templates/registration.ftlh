<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../static/css/registration.css">
        <title>APP SELL</title>
    </head>

    <body>
        <header>
            <h1>APP SELL</h1>
        </header>
        <hr>
        <div class="registration-form">
            <h4>Регистрация</h4>
            <form action="/registration" method="post">
                <label for="name">Имя пользователя:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Эл. почта:</label>
                <input type="email" id="email" name="email" required>

                <label for="numberPhone">Номер телефона:</label>
                <input type="text" id="numberPhone" name="numberPhone" required>

                <label for="password">Пароль:</label>
                <input type="password" id="password" name="password" required>

                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="submit" value="Зарегистрироваться">
            </form>

            <p class="existing-account-link">Уже есть аккаунт? <a href="/login">Войти</a></p>

            <#if errorMassage??>
                <p class="error-message">${errorMassage}</p>
            </#if>

        </div>
    </body>
</html>
