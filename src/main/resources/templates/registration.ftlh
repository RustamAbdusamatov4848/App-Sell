<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>APP SELL</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            color: #333;
            transition: background-color 0.3s ease;
        }

        header {
            background-color: #007bff;
            color: #fff;
            text-align: center;
            padding: 10px;
        }

        h1 {
            color: #fff;
            text-align: center;
            margin-top: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }

        hr {
            border: 1px solid #ccc;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .registration-form {
            max-width: 400px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s ease;
        }

        .registration-form:hover {
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }

        .registration-form label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #555;
        }

        .registration-form input {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 4px;
            transition: border-color 0.3s ease;
        }

        .registration-form input:focus {
            outline: none;
            border-color: #007bff;
        }

        .registration-form input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
            border: none;
            padding: 12px;
            border-radius: 4px;
            font-size: 16px;
        }

        .registration-form input[type="submit"]:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        .existing-account-link {
            text-align: center;
            margin-top: 10px;
            color: #007bff;
            transition: color 0.3s ease;
        }

        .existing-account-link a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .existing-account-link a:hover {
            color: #0056b3;
        }
        .error-message {
            color: red;
            text-align: center;
            margin-top: 10px;
        }
    </style>
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
