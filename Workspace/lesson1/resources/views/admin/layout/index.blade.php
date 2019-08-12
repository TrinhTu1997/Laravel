@include('admin.layout.css')
<div id="wrapper">
    <!-- Navigation -->
    @include('admin.layout.header')
    @yield('content')
</div>
@include('admin.layout.script')

