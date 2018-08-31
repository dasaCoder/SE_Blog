@extends('layouts.master')

@section('content')


    <div class="container-fluid">
        <div class="container">

            <table class="table table-striped">

                <tr>
                <!-- detail -->
                    <td>User ID</td>
                    <td>User name</td>
                    <td>Email</td>

                </tr>

                @foreach($users_data as $user)
                    <tr>
                        <td>{{$user->id}}</td>
                        <td>{{$user->name}}</td>
                        <td>{{$user->email}}</td>
                    </tr>


                    @endforeach

            </table>

            <div class="widget_body">
                <button class="btn orange" onclick="window.location='{{ route('export_excel.excel') }}'">Export Users to Excel</button>
                <button class="btn brown" onclick="window.location='{{ route('export_blogs.excel') }}'">Export Blog Details to Excel</button>
            </div>

        </div>
    </div>


    @endsection

