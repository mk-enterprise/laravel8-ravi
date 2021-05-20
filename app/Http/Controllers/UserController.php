<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Facades\Cache;
use App\Models\User;
use Hash;

class UserController extends Controller
// class UserController
{
    // public function getUserName(){
    //     return 'rajat';
    // }

    public function register(){
        $user = User::find(1);
        $user->password = Hash::make(123456);
        if($user->save()){
            echo 'ok';
        } else {
            echo 'err';
        }
    }

    /* public function register(){
        $user = User::find(1);
        $user->password = Hash::make(123456);
        if($user->save()){
            echo 'ok';
        } else {
            echo 'err';
        }
    } */

}
