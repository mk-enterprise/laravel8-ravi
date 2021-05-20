<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
use Auth;
use Validator;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::get();
        return response()->json([
            'posts' => $posts
        ]);
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'      => 'required',
            'details'   => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([ 
                'status'=>false, 
                'message' => $validator->errors()->first() 
            ],400);
        }

        // dd(Auth::user());
        $post = new Post;
        $post->name = $request->name;
        $post->details = $request->details;
        $post->user_id = Auth::user()->id;
        $post->status = 1;

        if($post->save()) {
            return response()->json([
                'status'=>true,
                'post' => $post
            ], 200);    
        } else {
            return response()->json([
                'message' => 'some err occured'
            ]);        
        }

        //
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
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
