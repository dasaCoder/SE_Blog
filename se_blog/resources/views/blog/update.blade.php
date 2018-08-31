@extends('layouts.master')

@section('content')

    <div class="container-fluid">
        <div class="containere">

            <form action="{{url('/blog/'.$blog->id)}}" method="post">
                @csrf
                {{ method_field('PATCH') }}

                <input type="text" name="title" value="{{$blog->title}}">

                <textarea name="body" id="" cols="20" rows="20">{!! $blog->body !!}</textarea>


                <input type="submit" value="Add">


            </form>

        </div>
    </div>

    <script src="https://cloud.tinymce.com/stable/tinymce.min.js?apiKey=n19dv9kovnc035zaepnq3ue9hd5rxhtqd5w8chczk0nhc1xk"></script>

    <script>
        tinymce.init({
            selector: 'textarea',
            height: 500,
            menubar: false,
            plugins: [
                'advlist autolink lists link image charmap print preview anchor textcolor',
                'searchreplace visualblocks code fullscreen',
                'insertdatetime media table contextmenu paste code help wordcount'
            ],
            toolbar: 'insert | undo redo |  formatselect | bold italic backcolor  | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | removeformat | help',
            content_css: [
                '//fonts.googleapis.com/css?family=Lato:300,300i,400,400i',
                '//www.tinymce.com/css/codepen.min.css']
        });
    </script>

    @endsection