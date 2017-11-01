{literal}
<script type="text/x-template" id="c_form">
    <form class="form-inline row" role="form">
        <div class="form-group">
            <label class="text-right" for="f-author">Автор: </label>
            <select class="form-control" id="f-author" v-model="author">
                <option value="">все</option>
                <option v-for="author in authors" :value="author.id">{{ author.author }}</option>
            </select>
        </div>

        <div class="form-group">
            <label class="text-right" for="f-book">Книга: </label>
            <select class="form-control " id="f-book" v-model="book">
                <option value="">все</option>
                <option v-for="book in books" :value="book.id">{{ book.book }}</option>
            </select>
        </div>

        <div class="form-group">
            <label class="text-right" for="f-size">Выводить по:</label>
            <select class=" form-control" id="f-size" v-model="ssize">
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="17">17</option>
                <option value="20">20</option>
                <option value="50">50</option>
                <option value="100">100</option>
            </select>
        </div>

        <div class="form-group">
            <button class="btn btn-default" @click.prevent="show">Показать</button>
        </div>
    </form>
</script>
{/literal}