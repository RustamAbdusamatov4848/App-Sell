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

        .login-form {
            max-width: 400px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s ease;
        }

        .login-form:hover {
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }

        .login-form label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #555;
        }

        .login-form input {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 4px;
            transition: border-color 0.3s ease;
        }

        .login-form input:focus {
            outline: none;
            border-color: #007bff;
        }

        .login-form input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-form input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .registration-link {
            display: block;
            text-align: center;
            margin-top: 10px;
            color: #007bff;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .registration-link:hover {
            color: #0056b3;
        }
    </style>
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
