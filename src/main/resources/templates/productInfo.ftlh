<!DOCTYPE html>
<html>
    <head>
        <title>APP SELL</title>
    </head>
    <body>
        <h1>APP SELL</h1><hr>
        <h4>Подробная информация о товаре</h4>
        <#list images as img>
            <img src="/images/${img.id}" height="150px"/><br><br>
        </#list>
        <b>Название товара: </b>${product.title}<br>
        <b>Описание товара: </b>${product.description}<br>
        <b>Цена: </b>${product.price}<br>
        <b>Город: </b>${product.city}<br>
        <b>Автор: </b>${product.getUser().getName()}<br>
        <b>Номер телефона: </b>${product.getUser().getNumberPhone()}<br>
        <hr>
        <form action="/" method="get" >
            <input type="submit" value="Перейти к списку объявлений"/>
        </form>
    </body>
</html>