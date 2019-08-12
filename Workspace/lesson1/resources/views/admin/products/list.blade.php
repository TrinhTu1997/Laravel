@extends('admin.layout.index')
@section('content')
    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Product
                        <small>List</small>
                    </h1>
                    <div style="width: 80px;height: 40px;background-color: yellow;line-height: 40px;text-align:center;font-weight: bold;border: 1px solid #000000;border-radius: 10px;float: right;
">
                        <a href="admin/products/add" style="text-decoration: none">Thêm mới</a>
                    </div>

                </div>

                <!-- /.col-lg-12 -->
                <table class="table table-striped table-bordered table-hover" id="">
                    <thead>
                    <tr align="center">
                        <th>ID</th>
                        <th>Name</th>
                        <th>Danh mục</th>
                        <th>Price</th>
                        <th>Img</th>
                        {{--                        <th>Danh muc</th>--}}
                        <th>Detail</th>
                        <th>amount</th>
                        <th>Status</th>
                        <th>Delete</th>
                        <th>Edit</th>
                    </tr>
                    </thead>
                    <tbody>

                    @foreach($product as $pr)
                        <tr class="odd gradeX" align="center">
                            <td>{{$pr->id}}</td>
                            <td>{{$pr->name}}</td>
                            <th>
                                {{$pr->cate_id}}
                            </th>
                            <td>{{$pr->price}}</td>
                            <td>
                                <img src="{{$pr->image}}" width="70">

                            </td>
                            {{--                            <td>{{$pr->id_category}}</td>--}}
                            <td>{!! $pr->detail !!}</td>
                            <td>{{$pr->amount}}</td>
                            <td>{{$pr->status}}</td>
                            <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a
                                    onclick="return confirm('Ban co that su muon xoa!')"
                                    href="admin/products/delete/{{$pr->id}}"> Delete</a></td>
                            <td class="center"><i class="fa fa-pencil fa-fw"></i> <a
                                    href="admin/products/edit/{{$pr->id}}">Edit</a></td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
                <div style="width: 50%;margin: auto">  {!!$product->links()!!}</div>

            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

@endsection
