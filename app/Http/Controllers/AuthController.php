<?php

namespace App\Http\Controllers;

use Validator;
use Illuminate\Support\Facades\Hash;
use App\User;
use Firebase\JWT\JWT;
use illuminate\Http\Request;
use Laravel\Lumen\Routing\Controller as BaseController;

class AuthController extends BaseController
{
    private $request;
    public function __construct(Request $eky)
    {
        $this->request = $eky;
    }

    protected function jwt(User $user){
        $payload = [
            'iss' => "lumen-jwt",
            'sub' => $user->id_user,
            'iat' => time(),
            'exp' => time() + 60*60
        ];
        return JWT::encode($payload, env('JWT_SECRET'));
    }

    public function autentikasi(User $user){
        $this->validate($this->request, [
            'password' => 'required'
        ]);
        $user = User::where('username', $this->request->input('username'))->first();
        if(!$user){
            return response()->json([
                'error' => 'Username tidak ada dalam database'
            ], 400);
        }

        if (Hash::check($this->request->input('password'), $user->password)) {
            return response()->json([
                'token' =>$this->jwt($user)
            ], 200);
        }
        return response()->json([
            'error' => 'Username atau Password salah'
        ], 400);
    }
}
