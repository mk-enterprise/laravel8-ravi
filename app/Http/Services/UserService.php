<?php

namespace App\Http\Services;

use Illuminate\Http\Request;
use App\Models\User;
use Validator;
use Illuminate\Validation\Rule;
use DB;

class UserService
{
    public function addUser(Request $request) {
        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = $request->password;
        
        if($user->save()) {
            return [
                'status' => true,
                'user' => $user
            ];
        } else {
            return [
                'status' => false,
            ];
        }
    }

}
