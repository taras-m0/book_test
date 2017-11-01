{literal}
<script type="text/x-template" id="c-paginator">
    <ul class="pagination" v-if="isShow">
        <li class="" v-if="isShowFirst"><a href="1" @click.prevent="set_page">&laquo;</a></li>
        <li v-for="cur_page in pages" :class="{ active: cur_page == (page + 1) }">
            <a :href="cur_page" @click.prevent="set_page">{{ cur_page }}</a></li>
        <li class="" v-if="isShowLast"><a :href="maxPage" @click.prevent="set_page">&raquo;</a></li>
    </ul>
</script>
{/literal}