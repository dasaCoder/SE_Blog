@extends('layouts.master')
@section('content')

<section id="entity_section" class="entity_section">
<div class="container">
<div class="row">
<div class="col-md-8">
<div class="entity_wrapper">
    <div class="entity_title">
        <h1><a href="#">{{$blog->title}}</a></h1>
    </div>
    <!-- entity_title -->

    <div class="entity_meta"><a href="#" target="_self">{{$blog->created_at}}</a>, by: <a href="#" target="_self">{{$blog->user->name}}</a>
    </div>



    <div class="entity_thumb">
        <img class="img-responsive" src="assets/img/category_img_top.jpg" alt="feature-top">
    </div>
    <!-- entity_thumb -->

    <div class="entity_content">
        {!! $blog->body !!}
    </div>
    <!-- entity_content -->



</div>
<!-- entity_wrapper -->



<div class="readers_comment">
    <div class="entity_inner__title header_purple">
        <h2>Readers Comment</h2>
    </div>
    <!-- entity_title -->

    <div class="media">
        <div class="media-left">
            <a href="#">
                <img alt="64x64" class="media-object" data-src="assets/img/reader_img1.jpg"
                     src="assets/img/reader_img1.jpg" data-holder-rendered="true">
            </a>
        </div>
        <div class="media-body">
            <h2 class="media-heading"><a href="#">Sr. Ryan</a></h2>
            But who has any right to find fault with a man who chooses to enjoy a pleasure that has
            no annoying consequences, or one who avoids a pain that produces no resultant pleasure?

            <div class="entity_vote">
                <a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></a>
                <a href="#"><span class="reply_ic">Reply </span></a>
            </div>
            <div class="media">
                <div class="media-left">
                    <a href="#">
                        <img alt="64x64" class="media-object" data-src="assets/img/reader_img2.jpg"
                             src="assets/img/reader_img2.jpg" data-holder-rendered="true">
                    </a>
                </div>
                <div class="media-body">
                    <h2 class="media-heading"><a href="#">Admin</a></h2>
                    But who has any right to find fault with a man who chooses to enjoy a pleasure
                    that has no annoying consequences, or one who avoids a pain that produces no
                    resultant pleasure?

                    <div class="entity_vote">
                        <a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></a>
                        <a href="#"><span class="reply_ic">Reply </span></a>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- media end -->

    <div class="media">
        <div class="media-left">
            <a href="#">
                <img alt="64x64" class="media-object" data-src="assets/img/reader_img3.jpg"
                     src="assets/img/reader_img3.jpg" data-holder-rendered="true">
            </a>
        </div>
        <div class="media-body">
            <h2 class="media-heading"><a href="#">S. Joshep</a></h2>
            But who has any right to find fault with a man who chooses to enjoy a pleasure that has
            no annoying consequences, or one who avoids a pain that produces no resultant pleasure?

            <div class="entity_vote">
                <a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i></a>
                <a href="#"><span class="reply_ic">Reply </span></a>
            </div>
        </div>
    </div>
    <!-- media end -->
</div>
<!--Readers Comment-->



<div class="entity_comments">
    <div class="entity_inner__title header_black">
        <h2>Add a Comment</h2>
    </div>
    <!--Entity Title -->

    <div class="entity_comment_from">
        <form>
            <div class="form-group">
                <input type="text" class="form-control" id="inputName" placeholder="Name">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="inputEmail" placeholder="Email">
            </div>
            <div class="form-group comment">
                <textarea class="form-control" id="inputComment" placeholder="Comment"></textarea>
            </div>

            <button type="submit" class="btn btn-submit red">Submit</button>
        </form>
    </div>
    <!--Entity Comments From -->

</div>
<!--Entity Comments -->

</div>
<!--Left Section-->



</div>
<!-- row -->

</div>
<!-- container -->

</section>
<!-- Entity Section Wrapper -->

<!-- //  -->
    @endsection