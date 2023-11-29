<!DOCTYPE HTML>
<html>
    <head>
        <title>App sell</title>
    </head>

    <body>
        <h1>APP SELL</h1><hr>
        <h4>Подробная информация о товаре</h4>
        <#list images as img>
            <img src="/images/${img.id}" height="100px"><br><br>
        <#else>
            <h3 style="color: red">Фотографий нету</h3>
        </#list>

        <b>Название товара: </b>${product.title}<br>
        <b>Описание товара: </b>${product.description}<br>
        <b>Ценна товара: </b>${product.price}<br>
        <b>Город: </b>${product.city}<br>
        <b>ФИО продавца: </b>${product.author}<br>

        <form action="/product/delete/${product.id}" method="post">
            <input type="submit" value="Удалить товар">
        </form>
    </body>
</html>