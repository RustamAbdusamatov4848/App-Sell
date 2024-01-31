<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../static/css/login.css">
        <title>APP SELL</title>
    </head>

    <body>
        <header>
            <h1>APP SELL</h1>
        </header>
        <hr>
        <div class="login-form">
            <h4>Авторизация</h4>
            <form action="/login" method="post">
                <label for="username">Эл. почта:</label>
                <input type="email" id="username" name="username" required>

                <label for="password">Пароль:</label>
                <input type="password" id="password" name="password" required>

                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="submit" value="Вход">
            </form>
            <p class="registration-link"><a href="/registration">Зарегистрироваться</a></p>
        </div>
    </body>
</html>
