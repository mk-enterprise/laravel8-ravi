<?php

namespace App\Http\Controllers;
use App\Http\Controllers\UserController;

use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Facades\Cache;
use App\Traits\ImageResizerTrait;

// class HomeController extends UserController
class HomeController extends Controller
{
    use ImageResizerTrait;

    //
    public function home() {

        // $a = $this->resizeToSmall();
        // $b = $this->resizeToLarge();
        // echo $a;
        // echo $b;
        //  die;
        // echo ' $picture '.$picture; 

        // $picture = $this->getProfilePicture();
        // $user = $this->getUserName();
        // echo ' $picture '.$picture; 
        // echo ' $user '.$user; 
        // die;

        // echo add_string('mohit', 'kumar'); die;

        // $posts = Post::get();
        // $posts = Post::get()->toArray();
        // echo '<pre>'; print_r($posts->toArray()); die;
        // return 'ok'; die;

        // Cache::put('name', 'mohit', $seconds = 10);
        // echo 'name = '. Cache::get('name');
        // die;

        // $posts = Cache::get('posts', function () {
        //     return Post::get()->toArray();
        // });

        // $posts = Cache::remember('posts', 60, function () {
        //     return Post::get()->toArray();
        // });

        $posts = Post::with(['userInfo','description'])
            ->with('comments.user',  function($query){
                // return $query->select('id','name');

                // return $query->where('text', 'good');
            })
            ->with('comments',  function($query){
                return $query->where('text', 'good');
            })
            // ->whereHas('comments',  function($query){
            //     return $query->where('text', 'good');
            // })
            ->orderBy('id','desc')
            ->get();
        // $posts = Post::get()->toArray();


        // pr($posts); die;
        echo '<pre>'; print_r($posts->toArray()); die;
        return view('home', compact('posts'));
    }

    // public function getProfilePicture(){
    //     return 'a.jpg';
    // }

}
