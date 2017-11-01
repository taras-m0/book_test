/**
 * Created by ttt on 01.11.2017.
 */
var c_form = Vue.component('c_form', {
    template: "#c_form",
    name: 'c_form',
    props: [
        "authors", "books", "size"
    ],
    data: function () {
        return {
            book: '',
            author: '',
            ssize: this.size
        };
    },
    computed: {
        // ssize: {
        //     get: function () {
        //         return this.size;
        //     },
        //     set: function (val) {
        //         this.size = val;
        //     }
        // }
    },
    methods:{
        show: function (e) {
            console.log('show', this.author, this.book, this.size );
            this.$emit('show', {author: this.author, book: this.book, size: this.ssize});
        }
    }
})