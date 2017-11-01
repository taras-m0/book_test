<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Тестовое задание</title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/main.css" />
    <script type="text/javascript">
        document.createElement('c_form');
        document.createElement('c-result');
    </script>
</head>
<body>

{include "component/form.tpl"}
{include "component/result.tpl"}
{include "component/paginator.tpl"}
<div id="app" class="container-fluid">
    <c_form :authors="authors" :books="books" :size="size" @show="show"></c_form>
    <c_result :results="results" :size="size" :page="page"></c_result>
    <c_paginator :count="count" :size="size" :page="page" @set_page="set_page"></c_paginator>
</div>

<script type="text/javascript" src="?action=get_authors&_callback=getAuthors"></script>
<script type="text/javascript" src="?action=get_books&_callback=getBooks"></script>

<script type="text/javascript" src="js/vue.js"></script>
<script type="text/javascript" src="js/vuex.js"></script>
<script type="text/javascript" src="js/fetch.js"></script>
<script type="text/javascript" src="js/url-search-params-polyfill/index.js"></script>
<script type="text/javascript" src="js/api.js"></script>
<script type="text/javascript" src="js/element/c-form.js"></script>
<script type="text/javascript" src="js/element/c-result.js"></script>
<script type="text/javascript" src="js/element/c-paginator.js"></script>
<script type="text/javascript" src="js/index.js"></script>

</body>
</html>