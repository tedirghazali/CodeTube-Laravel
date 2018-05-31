<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Socialite;
use App\SocialAccount;
use App\User;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    public function authenticated(Request $request, $user){
        if(!$user->verified){
            auth()->logout();
            return back()->with('warning', 'You need to confirm your account. We have sent you an activation code, please check your email.');
        }
        return redirect()->intended($this->redirectPath());
    }

    public function redirectToFacebook(){
        return Socialite::driver('facebook')->redirect();
    }

    public function handleFacebookCallback(){
        $provider = Socialite::driver('facebook')->user();
        $account = SocialAccount::where('provider', 'facebook')->where('provider_user_id',$provider->getId())->first();
        if($account){
            $user = $account->user;
        } else{
            $akun = new SocialAccount([
                'provider_user_id' => $provider->getId(),
                'provider' => 'facebook'
            ]);
            $orang = User::where('email',$provider->getEmail())->first();
            if(!$orang){
                $orang = User::create([
                    'name' => $provider->getName(),
                    'email' => $provider->getEmail(),
                    'password' => '',
                    'verified' => '1'
                ]);
            }
            $akun->user()->associate($orang);
            $akun->save();
            $user = $orang;
        }
        auth()->login($user);
        return redirect()->to('/home');
    }

    public function redirectToTwitter(){
        return Socialite::driver('twitter')->redirect();
    }

    public function handleTwitterCallback(){
        $provider = Socialite::driver('twitter')->user();
        $account = SocialAccount::where('provider', 'twitter')->where('provider_user_id',$provider->getId())->first();
        if($account){
            $user = $account->user;
        } else{
            $akun = new SocialAccount([
                'provider_user_id' => $provider->getId(),
                'provider' => 'twitter'
            ]);
            $orang = User::where('email',$provider->getEmail())->first();
            if(!$orang){
                $orang = User::create([
                    'name' => $provider->getName(),
                    'email' => $provider->getEmail(),
                    'password' => '',
                    'verified' => '1'
                ]);
            }
            $akun->user()->associate($orang);
            $akun->save();
            $user = $orang;
        }
        auth()->login($user);
        return redirect()->to('/home');
    }

    public function redirectToGoogle(){
        return Socialite::driver('google')->redirect();
    }

    public function handleGoogleCallback(){
        $provider = Socialite::driver('google')->user();
        $account = SocialAccount::where('provider', 'google')->where('provider_user_id',$provider->getId())->first();
        if($account){
            $user = $account->user;
        } else{
            $akun = new SocialAccount([
                'provider_user_id' => $provider->getId(),
                'provider' => 'google'
            ]);
            $orang = User::where('email',$provider->getEmail())->first();
            if(!$orang){
                $orang = User::create([
                    'name' => $provider->getName(),
                    'email' => $provider->getEmail(),
                    'password' => '',
                    'verified' => '1'
                ]);
            }
            $akun->user()->associate($orang);
            $akun->save();
            $user = $orang;
        }
        auth()->login($user);
        return redirect()->to('/home');
    }
}
