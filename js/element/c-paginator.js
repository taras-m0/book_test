/**
 * Created by ttt on 01.11.2017.
 */
var c_paginator = Vue.component('c_paginator', {
    template: "#c-paginator",
    name: 'c_paginator',
    props: [
        "size", "page", "count"
    ],
    data: function () {
        var self = this;
        return {
            maxLen: 5
        }
    },
    computed: {
        maxPage: function () {
            return Math.ceil( parseInt(this.count.toString()) / parseInt(this.size.toString()) );
        },
        pages: function () {
            var start = this.page + 1 - Math.floor( this.maxLen / 2);
            if (start < 1){ start = 1 }

            var end = start + this.maxLen - 1;
            if(end > this.maxPage){
                end = this.maxPage;
                start = end - this.maxLen + 1;
                if (start < 1){ start = 1 }
            }

            console.log({start: start, end: end }, this.maxPage, parseInt(this.count.toString()), parseInt(this.size.toString()));

            var result = [ ];
            for(var i = start; i <= end; i++){
                result.push( i );
            }

            return result;
        },
        isShowFirst: function () {
            var pages = this.pages;
            if(pages.length < 1){ return false }

            return !(pages[0] == 1);
        },
        isShowLast: function () {
            var pages = this.pages;
            if(pages.length < 1){ return false }

            return !(pages[pages.length - 1] == this.maxPage);
        },
        isShow: function () {
            return this.pages.length > 1;
        }
    },
    methods: {
        set_page: function (e) {
            this.$emit('set_page', parseInt(e.target.getAttribute('href')) - 1);
        }
    }

});