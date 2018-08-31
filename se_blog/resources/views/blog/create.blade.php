@extends('layouts.master')

@section('content')

    <div class="container-fluid">
        <div class="containere">

            <form action="{{route('blog')}}" method="post">
                @csrf

                <!-- Validation Alert -->
                @if(count($errors)>0)
                            @foreach($errors->all() as $error)
                                <div class="alert alert-danger">{{$error}}</div>
                            @endforeach
                  @endif
                <!--  -->

                <input type="text" name="title">



                <!-- check title -->
                 @if ($errors->has('title'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('title') }}</strong>
                    </span>
                @endif

                <textarea name="body" id="" cols="20" rows="20"></textarea>

                <!-- check body -->
                @if ($errors->has('body'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('body') }}</strong>
                     </span>
                @endif



                <select name="type" id="">
                    <option value="mobile">Mobile</option>
                </select>

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