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
//get json data from world bank

require '/var/www/html/powergen/utilities/db_handler.php';

$wb_connect = new db_handler();
$wb_data = file_get_contents("http://api.worldbank.org/v2/datacatalog?format=json");

$wb_data = json_decode($wb_data);

$data = new stdClass();

foreach ($wb_data->datacatalog as $data)
{

  foreach ($data->metatype as $wb_objects)
  {
/*
 * here we are going to populate our array arguments to insert into mysql-db using our function
 */
//      build the data to be inserted
      $args = array(
          'w_id'=>$wb_objects->id,
          'w_value'=>$wb_objects->value
      );
      //    insert the data into db
      if($wb_connect->InsertData($args,'worldbank') != 1)
      {
//          error
      }
      else
      {
//          success
      }
  }

}