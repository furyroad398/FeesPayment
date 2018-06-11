<?php

namespace App\Http\Controllers;

use App\Fee;
use App\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FeeController extends Controller
{
    //


    public function __construct()
    {
        $this->middleware('auth');
    }


    public function index(){
        return view('trevor.searchfees');
    }

    public function searchstudent(){

    }

    public  function payFees(){
        $fees= new Fee();

        $fees->std_id=request('std_id');
        $fees->amount=request('amount');

        DB::table('students')->where('id','=', $fees->std_id)->decrement('Balance',$fees->amount);

        $fees->save();
        return redirect('/');
    }
    public function searchPayment(){
        return view('trevor.searchpayments');
    }

    public function getPayment(){
        $id= $_GET['id'];

        $name=Student::find($id)->fullName;

        $fees = Fee::where('std_id',$id)->get(['id', 'std_id', 'amount', 'created_at']);


        return view('trevor.payresults', compact('name','fees'));


    }
}
