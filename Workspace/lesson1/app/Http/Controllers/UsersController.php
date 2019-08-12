<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
//use App\Http\Controllers\Controller;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\User;
use App\Product;
use Illuminate\Database;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Input as Input;
use Illuminate\Validation\Rules\In;
use Illuminate\Support\Facades\Auth;


class UsersController extends Controller
{
    public function getList(Request $request)
    {
        if (!$request->has('keyword') || empty($request->keyword)) {
            $users = DB::table('users')->orderBy('id', 'desc')
                ->paginate(10);
        } else {
            $kw = $request->keyword;
            $users = User::where('name', 'like', "%$kw%")
                ->orWhere('id', 'like', "%$kw%")
                ->orWhere('email', 'like', "%$kw%")
                ->orderBy('id', 'desc')
                ->paginate(1);
        }
        return view('admin.users.list', ['users' => $users]);
    }

    public function getAdd()
    {
        return view('admin.users.add');
    }

    public function postAdd(Requests\AddUserRequest $request)
    {
        $user = new User();
        $user->name = $request->name;
        $user->password = bcrypt($request->password);
        $user->lever = $request->lever;
        $user->email = $request->email;
        $user->save();
//        dd('image');
        return redirect('admin/users/list');
    }

    public function getEdit($id)
    {
        $user = User::find($id);
        return view('admin.users.edit', ['user' => $user]);
    }

    public function postEdit(Requests\EditUserRequest $request, $id)
    {
        $user = User::find($id);
        $oldPasswod = $request->oldpassword;
        if (!Hash::check($oldPasswod, Auth::user()->password)) {
           return redirect()->back()->with('error','Bạn không có quyền sửa hoăc mật khẩu chưa chính xác');
        } else {
            $user->password = bcrypt($request->password);
            $user->lever = $request->lever;
            $user->save();
            return redirect('admin/users/list');
        }
    }

    public function getDelete($id)
    {
        User::destroy($id);
        return back();
    }

    public function getLoginAdmin()
    {

        return view('admin.login');
    }

    public function postLoginAdmin(Requests\AddLoginRequest $requests)
    {
        if (Auth::attempt(['email' => $requests->email, 'password' => $requests->password])) {
            return redirect('admin/categories/list');
        } else {
            return redirect('admin/login');
        }
    }

    public function getLogoutAdmin()
    {
        Auth::logout();
        return redirect('admin/login');
    }

}
