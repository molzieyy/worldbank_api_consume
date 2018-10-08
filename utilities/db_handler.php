<?php
/**
 *
 *
 * Created by @molzieyy.
 * email: molzieyy@gmail.com
 *
 * Date: 10/7/18
 * Time: 10:13 PM
 *
 *Inspired by Elon Musk.
 *            ----------
 *
 *If you get up in the morning and think the future is going to be better, it is a bright day. Otherwise, it's not - Elon Musk
 *
 *This
 */
//This class handle all the db queries and interactions
require 'config.php';
class db_handler
{

    public $Connection;


    public function __construct()
    {
        $dsn = 'mysql:host=' . DBHOST . '; dbname='.DBNAME;
        try {
            $this->Connection = new PDO($dsn, DBUSERNAME, DBPASSWORD);
            $this->Connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        } catch (PDOException $exception) {
            echo $exception->getMessage()."..................";
        }
    }


    public function InsertData($data = array(), $tableName)
    {


        /**
         * A custom function that automatically constructs a multi insert statement.
         *
         * @param string $tableName Name of the table we are inserting into.
         * @param array $data An "array of arrays" containing our row data.
         * @param PDO $pdoObject Our PDO object.
         * @return boolean TRUE on success. FALSE on failure.
         */


        //Will contain the values that we need to bind.
        $columnValues = array();

        //Get a list of column names to use in the SQL statement.
        $columnNames = array();

        //Loop through our $data array.


        foreach ($data as $columnName => $columnValue) {
            $columnValues[] = $columnValue;
            $columnNames[] = $columnName;
        }

        $values = "'" . implode("','", $columnValues) . "'";
        $Cnames = "`" . implode("`,`", $columnNames) . "`";
        try {
            //Construct our SQL statement
            $sql = "INSERT INTO {$tableName} ({$Cnames}) VALUES ({$values}) ";
            //Prepare our PDO statement.
            $this->Connection->query($sql);
            return true;
        } catch (\Exception $exception) {
            return $exception->getMessage()."....................";
        }

    }
    public function Update($data=array(),$table,$WhereOptions=array())
    {
        //Will contain the values that we need to bind.
        $columnValues = array();
        $wherestatement = false;
        $updatestatement= false;
        $valuepassed = false;

        //Get where options.
//        if there are more than 1 where options we add an and
        $sizeofarray = sizeof($WhereOptions);
        if ($sizeofarray > 1)
        {
            $wherestatement = implode(' AND ',$WhereOptions);
        }
        elseif ($sizeofarray === 1)
        {
            foreach ($WhereOptions as $whereOption=>$value)
            {
                $wherestatement = $whereOption;
                $valuepassed = $value;
            }
        }

        //Loop through our $data array.


        foreach ($data as $columnName => $columnValue) {
            $columnValues[] = "`".$columnName."`="."'".$columnValue."'";

        }
        $UpdateValues= implode(",", $columnValues);
        try
        {
            $updatestatement = "UPDATE `".$table."` SET {$UpdateValues} WHERE $wherestatement=$valuepassed ";
            $this->Connection->query($updatestatement);
            return true;
        }
        catch (PDOException $exception)
        {
            return false;
        }

    }

    //FUNCTION to check existence in db
    public  function check_for_duplicates($table,$column_name,$value)
    {
        try {
            $sqlQuery = "SELECT * FROM " . $table . " WHERE " . $column_name . "=:$column_name";
            $statement = $this->Connection->prepare($sqlQuery);
            $statement->execute(array(":$column_name" => $value));
            if ($row = $statement->fetch()) {

                return true;
            }
            return false;
        }
        catch (PDOException $ex){

        }
    }
    public function LastInsertID_PDO()
    {
        return $this->Connection->lastInsertId();
    }
//    return the local time
    public function currenttime()
    {
        return date('Y-m-d H:i:s');
    }


    //getalldatawithquery
    public function runquery($query)
    {
        $statement = $this->Connection->query($query);
        if($statement == true)
        {
            return $statement->fetchAll();
        }
        else
        {
            return false;
        }

    }
    //get all data from table
    public function GetallData($SelectOptions=false,$table,$WhereOptions=false)
    {
        //Will contain the values that we need to bind.
        $SelectValues=false;

        $WhereValues= array();
        $WhereStatement = 1;
        if(sizeof($SelectOptions) > 1)
        {
            $SelectValues = "`" . implode("`,`", $SelectOptions) . "`";
        }
        else
        {
            foreach ($SelectOptions as $Select)
            {
                $SelectValues = $Select;
            }

        }
        if(!empty($WhereOptions))
        {
            if(sizeof($WhereOptions) > 1)
            {
                foreach ($WhereOptions as $WhereKey=>$WhereValue)
                {

                    $WhereValues[] ="`".$WhereKey."` = '".$WhereValue."'";

                }
                $WhereStatement = implode(' AND ',$WhereValues);

            }
            else
            {
                foreach ($WhereOptions as $WhereKey=>$WhereValue)
                {
                    $WhereStatement = "`".$WhereKey."` = '".$WhereValue."'";
                }
            }
        }






        try
        {
            $Statement = "SELECT {$SelectValues} from {$table} WHERE {$WhereStatement}";

            $sqlStatement = $this->Connection->query($Statement);
            if($sqlStatement->rowCount() >0)
            {
                return $sqlStatement->fetchAll();
            }
            else

            {
                return 0;
            }



        }
        catch (PDOException $exception)
        {
            return "err";
        }


    }
    public function rowCount($Query)
    {
        try
        {
            $statement=  $this->Connection->query($Query);
            $value = $statement->rowCount();
            return $value;
        }
        catch (PDOException $exception)
        {
            $exception->getMessage();
            return false;
        }


    }

}