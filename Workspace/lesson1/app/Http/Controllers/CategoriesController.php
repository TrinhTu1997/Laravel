<?php

namespace App\Http\Controllers;
use App\Http\Requests\AddFormRequest;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Product;
use App\Categories;
use Illuminate\Database;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input as Input;
use Illuminate\Validation\Rules\In;


class CategoriesController extends Controller
{
    public function getList(Request $request)
    {
        if (!$request->has('keyword') || empty($request->keyword)) {
            $categories = DB::table('categories')->orderBy('id', 'desc')
                ->paginate(10);
        } else {
            $kw = $request->keyword;

            $categories = Categories::where('cate', 'like', "%$kw%")
                ->orWhere('id', 'like', "%$kw%")
                ->orderBy('id', 'desc')
                ->paginate(10);
        }
        return view('admin.categories.list', compact('categories'));

    }

    public function getAdd()
    {
        $categories = new Categories();
        return view('admin.categories.add', compact('categories'));

    }

    public function postAdd(Requests\AddCateRequest $request)
    {
        $categories = new Categories();

        $categories->cate = $request->txtName;

        $categories->save();
        return redirect('admin/categories/list');
    }

    public function getEdit($id)
    {
        $categories = Categories::find($id);
        return view('admin.categories.edit', compact('categories'));
    }

    public function postEdit(Requests\EditCateRequest $request, $id)
    {
        $categories = Categories::find($id);
        $categories->cate = $request->txtName;

        $categories->save();
        return redirect('admin/categories/list');
    }
    public function getDelete($id)
    {
        Categories::destroy($id);
        return back();
    }
}
