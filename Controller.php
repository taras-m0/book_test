<?php

/**
 * For alan.
 * User: ttt
 * Date: 31.10.2017
 * Time: 15:06
 */
class Controller {
    /** @var  Smarty */
    protected $smarty;

    public function __construct(Smarty $smarty) {
        $this->smarty = $smarty;
    }

    /**
     * стартовая страница
     *
     * @return string
     */
    public function index(){
        return $this->smarty->fetch('index.tpl');
    }

    /**
     * вовод ajax данных в виде json
     *
     * @param $data
     *
     * @return string
     */
    protected function json($data){
        if(!empty($_GET['_callback'])){
            header('Content-Type: application/javascript');
            return "function {$_GET['_callback']}(){ return " . json_encode($data) . ";}";
        }else{
            header( 'Content-Type: Application/json' );
            return json_encode( $data );
        }
    }

    /**
     * вывод списка авторов
     *
     * @return string
     */
    public function get_authors(){
        $authors = Model::instance()->getAuthors();
        return $this->json($authors);
    }

    /**
     * вывод списка книг
     *
     * @return string
     */
    public function get_books(){
        $books = Model::instance()->getBooks();
        return $this->json($books);
    }

    /**
     * вывод отфильтрованного списка книг и авторов
     *
     * @return string
     */
    public function get_result(){
        $result = Model::instance()->result(
            array_filter( array($_GET['author']), function ($item){
                return !empty($item);
            }),

            array_filter( array($_GET['book']), function ($item){
                return !empty($item);
            }),
            $_GET['size'], $_GET['page']
        );

        return $this->json($result);
    }
}