@extends('admin.layout.index')
@section('content')
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">User
                        <small>Add</small>
                        @if(session('error'))
                            <div class="alert alert-icon alert-danger alert-dismissible fade in" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <i class="mdi mdi-check-all"></i>
                                <strong></strong>{{session('error')}}
                            </div>
                        @endif
                    </h1>
                </div>
                <!-- /.col-lg-12 -->
                <div class="col-lg-7" style="padding-bottom:120px">
                    <form action="admin/users/edit/{{$user->id}}" method="POST">
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                        <div class="form-group">
                            <label>Họ Tên</label><span style="color: red">***</span>
                            <input class="form-control" name="name" placeholder="Please Enter Username" disabled
                                   value="{{$user->name}}"/>
                            @if($errors->first('name'))
                                <span class="text-danger">{{$errors->first('name')}}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu hiện tại</label><span style="color: red">***</span>
                            <input type="password" class="form-control" name="oldpassword"
                                   placeholder="Please Enter Password"/>
                            @if($errors->first('oldpassword'))
                                <span class="text-danger">{{$errors->first('oldpassword')}}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu</label><span style="color: red">***</span>
                            <input type="password" class="form-control" name="password"
                                   placeholder="Please Enter Password"/>
                            @if($errors->first('password'))
                                <span class="text-danger">{{$errors->first('password')}}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label>RePassword</label><span style="color: red">***</span>
                            <input type="password" class="form-control" name="repassword"
                                   placeholder="Please Enter RePassword"/>
                            @if($errors->first('repassword'))
                                <span class="text-danger">{{$errors->first('repassword')}}</span>
                            @endif
                        </div>
                        <div class=" form-group">
                            <label>Email</label><span style="color: red">***</span>
                            <input type="email" class="form-control" name="email" placeholder="Please Enter Email"
                                   disabled value="{{$user->email}}"/>
                            @if($errors->first('email'))
                                <span class="text-danger">{{$errors->first('email')}}</span>
                            @endif
                        </div>
                        <div class=" form-group">
                            <label>Phân quyền</label>
                            <label class="radio-inline">
                                <input name="lever" value="0"
                                       @if($user->lever==0)
                                       {{'checked'}}
                                       @endif
                                       type="radio">Thường
                            </label>
                            <label class="radio-inline">
                                <input name="lever" value="1"
                                       @if($user->lever==1)
                                       {{'checked'}}
                                       @endif
                                       type="radio">Admin
                            </label>
                        </div>
                        <button type="submit" class="btn btn-default">Thêm</button>
                        <button type="reset" class="btn btn-default">Reset</button>
                        <form>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
@endsection
