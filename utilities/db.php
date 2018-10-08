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
//add the main config file
require 'config.php';

$username = DBUSERNAME;
$password = DBPASSWORD;
$dsn ='mysql:host='.DBHOST.'; '.DBNAME;

try{
    $db = new PDO($dsn, $username, $password );
     $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

//  echo "Connected to db";
}
catch (PDOException $ex){
   echo "Connection not successful please try again.".$ex->getMessage();

}

define('RAW_DB_CONNECT',$db);
