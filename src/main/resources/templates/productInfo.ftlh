<!DOCTYPE HTML>
<html>
    <head>
        <title>App sell</title>
    </head>

    <body>
        <h1>APP SELL</h1><hr>
        <h4>Подробная информация о товаре</h4>
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