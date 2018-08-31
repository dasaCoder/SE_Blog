@extends('layouts.master')

@section('content')

<section id="entity_section" class="entity_section">
<div class="container">
<div class="row">
<div class="col-md-8">

    @foreach($blogs as $blog)

        <div class="entity_wrapper">
            <div class="entity_title">
                <h1><a href="{{url('blog/'.$blog->id)}}" target="_self">{{$blog->title}}</a>
                </h1>
            </div>
            <!-- entity_title -->

            <div class="entity_meta">
                <a href="#">{{$blog->created_at}}</a>, by: <a href="#">{{$blog->user->name}}</a>
            </div>
            <!-- entity_meta -->



            <div class="entity_thumb">
                <img class="img-responsive" src="{{url('uploads/'.$blog->filename)}}" style="max-height: 300px">
            </div>
            <!-- entity_thumb -->


            <!-- entity_content -->

        </div>
        <hr>
        @endforeach

<!-- entity_wrapper -->

</div>
</div>
</div>

</section>
<!-- entity_section -->
    @endsection