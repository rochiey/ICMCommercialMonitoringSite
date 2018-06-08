<?php 
require_once './config/config.php';
session_start();
if ($_SERVER['REQUEST_METHOD'] === 'POST') 
{
    $username = filter_input(INPUT_POST, 'username');
    $passwd = filter_input(INPUT_POST, 'passwd');
    $remember = filter_input(INPUT_POST, 'remember');
    $passwd=  Encipher($passwd,5);
    //Get DB instance. function is defined in config.php
    $db = getDbInstance();

    $db->where ("Username", $username);
    $db->where ("Password", $passwd);
    $row = $db->get('systemaccount'); //get the tablename
     
    if ($db->count >= 1) {
        $_SESSION['user_logged_in'] = TRUE;
        $_SESSION['userType'] = $row[0]['userType']; //51 admin 21 user
       	if($remember)
       	{
       		setcookie('username',$username , time() + (86400 * 90), "/");
       		setcookie('password',$passwd , time() + (86400 * 90), "/");
       	}
        header('Location:index.php');
        exit;
    } else {
        $_SESSION['login_failure'] = "Invalid user name or password";
        header('Location:login.php');
        exit;
    }
  
}
function Cipher($ch, $key)
{
  if (!ctype_alpha($ch))
    return $ch;

  $offset = ord(ctype_upper($ch) ? 'A' : 'a');
  return chr(fmod(((ord($ch) + $key) - $offset), 26) + $offset);
}

function Encipher($input, $key)
{
  $output = "";

  $inputArr = str_split($input);
  foreach ($inputArr as $ch)
    $output .= Cipher($ch, $key);

  return $output;
}

function Decipher($input, $key)
{
  return Encipher($input, 26 - $key);
}