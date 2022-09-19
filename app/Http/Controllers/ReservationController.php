<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Reservation;
use Brian2694\Toastr\Facades\Toastr;

class ReservationController extends Controller
{
     public function reserve(Request $request)
    {
        $this->validate($request,[
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required',
            'dateandtime' => 'required'

        ]);

        $reseveration = new Reservation();
        $reseveration ->name = $request->name;
        $reseveration ->phone = $request->phone;
        $reseveration ->email = $request->email;
        $reseveration ->date_and_time = $request->dateandtime;
        $reseveration ->message = $request->message;
        $reseveration ->status = false;
        $reseveration ->save();
        Toastr::success('Reservation request sent successfully', 'Success',["positionClass" => "toast-top-right"]);
        return redirect()->back();
        
    }
}
