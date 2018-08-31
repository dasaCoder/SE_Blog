<html>

@include('partials.head')
@yield('head')

<body id="page-top" data-spy="scroll" data-target=".navbar">

<div class="uc-mobile-menu-pusher">
    <div class="content-wrapper">

        @include('partials.navheader')
        @yield('navheader')

        <div class="uc-mobile-menu-pusher">
            <div class="content-wrapper">

                @yield('content')

            </div>

        </div>


    </div>
</div>


<!-- jquery Core-->
<script src="{{asset('assets/js/jquery-2.1.4.min.js')}}"></script>

<!-- Bootstrap -->
<script src="{{asset('assets/js/bootstrap.min.js')}}"></script>

<!-- Theme Menu -->
<script src="{{asset('assets/js/mobile-menu.js')}}"></script>

<!-- Owl carousel -->
<script src="{{asset('assets/js/owl.carousel.min.js')}}"></script>

<!-- Theme Script -->
<script src="{{asset('assets/js/script.js')}}"></script>
</body>

</html>