@extends('layouts.master')

@section('content')

    <div class="container-fluid">
        <div class="containere">

            {{auth()->user()->admin}}

            <form action="{{route('blog')}}" method="post" enctype="multipart/form-data">
                @csrf

                <div class="form-group">
                    <label for="">Title</label>
                    <input class="form-control" type="text" name="title">
                </div>

               <div class="form-group">
                   <label for="">Cover Image</label>
                   <input type="file" class="form-control" name="coverimg"/>
               </div>




                <textarea name="body" id="" cols="20" rows="20"></textarea>

                <div class="form-group">
                    <select class="form-control" name="type" id="">
                        <option value="Mobile">Mobile</option>
                        <option value="Web">Web</option>
                        <option value="Programming">Programming</option>
                        <option value="AI">AI</option>
                    </select>
                </div>



                <div class="form-group">
                    <input type="submit" value="Add">
                </div>




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
<!-- //// //-->

    @endsection