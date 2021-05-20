<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Validator;
use Illuminate\Validation\Rule;
use DB;
use App\Jobs\SendSignupMail;
use App\Http\Services\UserService;

class UserController extends Controller
{
    private $userService;

    public function __construct(UserService $userService) {
        $this->userService = $userService;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
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
            'email'   => 'required',
            'password'   => 'required|confirmed',
        ]);

        if ($validator->fails()) {
            return response()->json([ 
                'status'=>false, 
                'message' => $validator->errors()->first() 
            ],400);
        }

        $user = $this->userService->addUser($request);

        if ($user['status'] == true) {
            return response()->json([
                'status'=>true,
                'user' => $user['user']
            ], 200);    
        } else {
            return response()->json([
                'message' => 'some err occured'
            ]);        
        }

        // dd(Auth::user());
        /* $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = $request->password;
        
        if($user->save()) {

            // a timeconsuming task
            SendSignupMail::dispatch($user->id);

            return response()->json([
                'status'=>true,
                'user' => $user
            ], 200);    
        } else {
            return response()->json([
                'message' => 'some err occured'
            ]);        
        } */

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
            $validator = Validator::make($request->all(), [
                'name'      => 'required',
                // 'password'   => 'required|confirmed',
                // 'email'   => 'required|unique:users,email,'.$id,


                'email' => [
                    'required',
                    Rule::unique('users','email')->where(function($query) use ($id) {
                        $query->where('id','<>',$id)
                            ->where('deleted_at',null);
                            // ->where('parent_id', $request->parent_id);
                    })
    
                ]
            ]);

    
            if ($validator->fails()) {
                return response()->json([ 
                    'status'=>false, 
                    'message' => $validator->errors()->first() 
                ],400);
            }

            // echo 'ok'; die;
        
            // dd(Auth::user());
            $user = User::find($id);
            $user->name = $request->name;
            $user->email = $request->email;
            // $user->password = $request->password;
            
            if($user->save()) {
                return response()->json([
                    'status'=>true,
                    'user' => $user
                ], 200);    
            } else {
                return response()->json([
                    'message' => 'some err occured'
                ]);        
            }
    
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
