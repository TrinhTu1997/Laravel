@extends('admin.layout.index')
@section('content')
    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Product
                        <small>Add</small>
                    </h1>
                </div>
                <!-- /.col-lg-12 -->
                <div class="col-lg-7" style="padding-bottom:120px">
                    <form action="admin/products/edit/{{$product->id}}" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                        <div class="form-group">
                            <label>Name</label><span style="color: red">***</span>
                            <input class="form-control" name="name" placeholder="Please Enter Name"
                                   value="{{$product->name}}"/>
                            @if($errors->first('name'))
                                <span class="text-danger">{{$errors->first('name')}}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label>Price</label><span style="color: red">***</span>
                            <input class="form-control" name="price" placeholder="Please Enter Price"
                                   value="{{$product->price}}"/>
                            @if($errors->first('price'))
                                <span class="text-danger">{{$errors->first('price')}}</span>
                            @endif
                        </div>
                        <div class="form-group">
                            <label>Images</label><span style="color: red">***</span>
                            <input type="file" name="image" value="{{$product->image}}">
                            <img src="{{$product->image}}" value="{{$product->image}}" width="70">
                            @if($errors->first('image'))
                                <span class="text-danger">{{$errors->first('image')}}</span>
                            @endif
                        </div>

                        <div class="form-group">
                            <label>amount</label><span style="color: red">***</span>
                            <input class="form-control" name="amount" placeholder="Please Enter Amount"
                                   value="{{$product->amount}}"/>
                            @if($errors->first('amount'))
                                <span class="text-danger">{{$errors->first('amount')}}</span>
                            @endif
                        </div>

                        <div class="form-group">
                            <label>Detail</label>
                            <textarea class="form-control ckeditor" rows="3"
                                      name="detail">{{$product->detail}}</textarea>
                        </div>
                        <div class="form-group">
                            <label>Product Status</label>
                            <label class="radio-inline">
                                <input name="status" value="0" type="radio" @if($product->status==0) checked @endif>Noi
                                bat
                            </label>
                            <label class="radio-inline">
                                <input name="status" value="1" type="radio" @if($product->status==1) checked @endif>Khong
                                noi bat
                            </label>
                        </div>
                        <button type="submit" class="btn btn-default">Product Add</button>
                        <button type="reset" class="btn btn-default">Reset</button>
                        <form>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
@endsection
