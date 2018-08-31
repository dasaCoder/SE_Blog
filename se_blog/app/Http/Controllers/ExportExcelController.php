<?php

namespace App\Http\Controllers;

use App\Exports\BlogsExport;
use App\Exports\UsersExport;
use Illuminate\Http\Request;
use DB;
use Excel;
class ExportExcelController extends Controller
{
    function index(){
        $users_data = DB::table('users')->get();
        return view('admin.export_excel')->with('users_data',$users_data);
    }

    function excel(){
        /*$users_data = DB::table('users')->get()->toArray();
        $users_array[] = array('User ID','User Name','Email');
        foreach($users_data as $user){
            $users_array[] = array(
                'User ID' => $user->id,
                'User Name' => $user->name,
                'Email' => $user->email
            );
        }*/

        return Excel::download(new UsersExport,'report.xlsx');

        /*Excel::create('User Data',function ($excel) use($users_array){
            $excel->setTitle('User Data');
            $excel->sheet('User Data', function ($sheet) use($users_array){
               $sheet->fromArray($users_array,null,'A1',false,false);
            });

        })->download('xlsx');*/
    }

    function excelBlogs(){
        return Excel::download(new BlogsExport, 'blogreport.xlsx');
    }
}
