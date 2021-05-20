<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Admin;
use Validator;
use App\Http\Requests\StorePost;
use DB;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        // echo 'mk'; die;
        // $admins = DB::connection('mysql2')->table('admins')->get();
        // echo '<pre>'; print_r($admins); die;
        // dd($admins ); die;

        $admins = Admin::get()->toArray();
        echo '<pre>'; print_r($admins); die;
        
        //
        // echo 'posts';
        // $posts = Post::showActive()->get();
        $posts = Post::showActive(0)->get();
        return view('posts.index', compact('posts'));        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('posts.show');        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorePost $request )
    {
        $data = $request->input(); 
        // pr($data); die;

        // method1
        /* $request->validate([
            'name' => 'required',
            'desc' => 'required',
        ],[
            'name.required' => 'name is required'
        ]); */

        // method2
        /* $validator = Validator::make($data, [
            'name' => 'required',
            'desc' => 'required',
        ]);

        if($validator->fails()) {

            $result['response'] = false;
            $result['message']  = 'err';
            return response()->json($result); die;
        } */


        $post = Post::create([
            'name' => $request->name,
            'details' => $request->desc,
            // 'user_id' => Auth::user()->id,
            'user_id' => 22
        ]);
        if ($post) {
            // echo 'ok'; die;
            return redirect('posts');
        } else {
            echo 'some error occured';
        }
        // pr($data); die;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Post::find($id);
        return view('posts.edit', compact('post'));        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        // echo '1' ; 
        // pr($request->input()); die;
        $post = Post::where('id',$id)->update([
            'name' => $request->name,
            'details' => $request->desc,
            // 'user_id' => Auth::user()->id,
            'user_id' => 23
        ]);
        if ($post) {
            // echo 'ok'; die;
            return redirect('posts');
        } else {
            echo 'some error occured';
        }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::where('id',$id)->delete();
        if($post) {
            return redirect('posts');
        } else {
            echo 'some error occured';
        }
    }

}
