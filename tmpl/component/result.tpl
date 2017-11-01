{literal}
<script type="text/x-template" id="c-result">
    <table class="table table-responsive table-bordered table-hover table-striped">
        <thead>
            <tr>
                <th>N</th>
                <th>Автор</th>
                <th>Книга</th>
            </tr>
        </thead>
        <tbody>
            <tr v-for="row,index in results">
                <td>{{ 1 + page * size + index }}</td>
                <td>{{ row.author }}</td>
                <td>{{ row.book }}</td>
            </tr>
        </tbody>
    </table>
</script>
{/literal}