/**
 * Created by ttt on 01.11.2017.
 */
var api = new function () {

    this.getResult = function(author, book, size, page){
        var params = new URLSearchParams();
        params.set('action', 'get_result');
        params.set('author', author);
        params.set('book', book);
        params.set('size', size);
        params.set('page', page);
        params.set('_', Math.random());

        return fetch('?' + params.toString(), {
            method: 'GET',
            credentials: 'same-origin'
        }).then(function (response) {
            if (response.status >= 200 && response.status < 300) {
                return response
            } else {
                const error = new Error(response.statusText)
                error.response = response
                throw error
            }
        }).then(function (response) {
            return response.json();
        });
    };
}