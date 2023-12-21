<!DOCTYPE html>
<html>

    <head>
        <title>APP SELL</title>
    </head>

    <body>
    <h1>APP SELL</h1><hr>
    <h3>Подробная информация о пользователе ${user.name}</h3>
    <b>Имя:</b> ${user.name}<br>
    <b>Номер телефона:</b> ${user.numberPhone}<br>
    <b>Почта:</b> ${user.email}<br>
    <h4>Товары пользователя ${user.name}</h4>
    <#list products as product>
        <div>
            <p>
                <b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}"></a>
            </p>
        </div>
        <#else>
        <h3>Товаров нет!</h3>
    </#list>
    </body>
</html>