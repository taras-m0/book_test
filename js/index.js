/**
 * Created by ttt on 01.11.2017.
 */

var app = new Vue({
    el: "#app",
    components: { c_form: window.c_form, c_result: window.c_result, c_paginator: c_paginator },
    data: {
        authors: window.getAuthors(),
        books: window.getBooks(),
        size: 20,
        page: 0,
        count: 10,
        results: [ ],
        lastFilter: { author: '', book: '' }
    },
    methods:{
        show: function ( form ) {
            console.log('show', form.author, form.book, form.size );
            this.page = 0;
            this.size = form.size;
            this.loadResult(form.author, form.book, form.size, this.page);
        },
        set_page: function (page) {
            this.page = page;
            console.log('set_page', page);
            this.loadResult( this.lastFilter.author, this.lastFilter.book, this.size, this.page );
        },
        loadResult: function (author, book, size, page) {
            var self = this;
            this.lastFilter = { author: author, book: book };

            window.api.getResult(author, book, size, page)
                .then(function (response) {
                    console.log('response', response);
                    self.results = response.result;
                    self.count = response.count;
                });
        }
    },
    mounted: function () {
        this.loadResult('', '', this.size, this.page);
    }
});
