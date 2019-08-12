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
                        <a href="admin/users/add" style="text-decoration: none">Thêm mới</a>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <thead>
                    <tr align="center">
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
{{--                        <th>Password</th>--}}
                        <th>Lever</th>
                        <th>Delete</th>
                        <th>Edit</th>
                    </tr>
                    </thead>
                    <tbody>

                    @foreach($users as $us)
                        <tr class="odd gradeX" align="center">
                            <td>{{$us->id}}</td>
                            <td>{{$us->name}}</td>
                            <td>{{$us->email}}</td>
{{--                            <td>--}}
{{--                                {{$us->password}}--}}
{{--                            </td>--}}
                            <td>
                                @if($us->lever==1)
                                    {{'Admin'}}
                                @else
                                    {{'Thường'}}
                                    @endif
                            </td>
                            <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a
                                    onclick="return confirm('Ban co that su muon xoa!')"
                                    href="admin/users/delete/{{$us->id}}"> Delete</a></td>
                            <td class="center"><i class="fa fa-pencil fa-fw"></i> <a
                                    href="admin/users/edit/{{$us->id}}">Edit</a></td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
                <div style="width: 50%;margin: auto">  {!! $users->links() !!}</div>

            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

@endsection
