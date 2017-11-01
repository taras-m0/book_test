<?php

/**
 * For alan.
 * User: ttt
 * Date: 31.10.2017
 * Time: 13:56
 */
class Model extends PDO {
    /** @var  self */
    static protected $_instance;

    /**
     * Singletone
     *
     * @param null $dsn
     * @param null $username
     * @param null $passwd
     * @param null $options
     *
     * @return Model
     * @throws Exception
     */
    static public function instance( $dsn = null, $username = null, $passwd = null ){
        if(!self::$_instance){
            if($dsn){
                $class = get_called_class();
                self::$_instance = new $class($dsn, $username, $passwd, array(
                    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
                ));
            }else{
                throw new Exception('Не заданы параметры соединения с БД');
            }
        }

        return self::$_instance;
    }

    /**
     * список авторов
     *
     * @return array
     */
    public function getAuthors(){
        return $this->query('SELECT * FROM `author`')->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * список книг
     *
     * @return array
     */
    public function getBooks(){
        return $this->query('SELECT * FROM `book`')->fetchAll(PDO::FETCH_ASSOC);
    }

    /**
     * Получение списка книг и авторов
     *
     * @param array $authorIds
     * @param array $bookIds
     * @param int   $size
     * @param int   $page
     *
     * @return array
     */
    public function result($authorIds = array(), $bookIds = array(), $size = 20, $page = 0 ){
        $sql = 'FROM `book2author` ba JOIN `book` b ON b.id = ba.book_id JOIN `author` a ON a.id = ba.author_id';
        $sql .= ' WHERE 1';

        if(!empty($authorIds)){
            $sql .= ' AND a.id IN (' . implode(',', array_fill(0, count($authorIds), '?')) . ')';
        }

        if(!empty($bookIds)){
            $sql .= ' AND b.id IN (' . implode(',', array_fill(0, count($bookIds), '?')) . ')';
        }

        $sql .= ' ORDER BY book, author';

        // $sql .= " LIMIT " . ($page * $size) . ', ' . ((int)$size) . ";";

        $sqlR = 'SELECT book, author ' . $sql . " LIMIT " . ($page * $size) . ', ' . ((int)$size) . ";";

        $stm = $resultStm = $this->prepare($sqlR);
        $stm->execute(array_merge(array_values($authorIds), array_values($bookIds)));

        $stmCount = $this->prepare('SELECT COUNT(*) ' . $sql);
        $stmCount->execute(array_merge(array_values($authorIds), array_values($bookIds)));

        return  array( 'result' => $stm->fetchAll(PDO::FETCH_ASSOC), 'count' => $stmCount->fetchColumn());
    }
}