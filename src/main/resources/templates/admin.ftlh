<!DOCTYPE html>
<html>
    <head>
        <title>APP SELL</title>
    </head>

    <body>
        <h1>APP SELL</h1><hr>
        <h3>Панель администратора</h3>
        <table border="1">
            <tr>
                <th>Имя</th>
                <th>Почта</th>
                <th>Номер телефона</th>
                <th>Активность</th>
                <th>Роли</th>
                <th>Бан</th>
                <th>Редактирование</th>
                <th>Подробная информация</th>
            </tr>
            <#list users as user>
                <tr>
                    <th>${user.name}</th>
                    <th>${user.email}</th>
                    <th>${user.numberPhone}</th>
                    <th><#if user.active>true<#else>false</#if></th>
                    <th>
                        <#list user.roles as role>
                            ${role}
                        </#list>
                    </th>
                    <th>
                        <form action="/admin/user/ban/${user.id}" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                            <input type="submit" value="Бан">
                        </form>
                    </th>
                    <th><a href="/admin/user/edit/${user.id}">Редактирование роли</a></th>
                    <th>
                        <a href="/user/${user.id}">Подробная информация</a>
                    </th>
                </tr>
                <#else>
                    <h3>Пользователей нет!</h3>
            </#list>
        </table>
    </body>
</html>