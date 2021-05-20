<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;

class ApiController extends Controller
{
    public function myProfile(){
        $user = Auth::user();
        return response()->json([
            'user', $user
        ]);
    }
}
