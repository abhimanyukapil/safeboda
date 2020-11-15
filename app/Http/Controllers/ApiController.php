<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as Controller;
use DB;
use Illuminate\Http\Request;

class ApiController extends Controller
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function validatePromoCodes(Request $request){
        
        $data = $request->all();
        $promocodes= DB::select("SELECT * FROM promo_codes WHERE origin = '".$data['origin']."' AND destination='".$data['destination']."' AND promo_code='".$data['promo_code']."' AND expiry >= NOW() AND status = 'Active'");
        return $promocodes;
    }

}
