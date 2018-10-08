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

//includes all system config and requirements

//define all the db settings
global $database;
$database=array();

$database['username']='root';
$database['databasename']='powergen';
$database['host']='localhost';
$database['password']='Xtreem@me';

define('DBNAME',$database['databasename']);
define('DBUSERNAME',$database['username']);
define('DBHOST',$database['host']);
define('DBPASSWORD',$database['password']);
