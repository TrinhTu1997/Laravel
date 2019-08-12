<?php

namespace App\Http\Controllers;

use App\Http\Requests\AddFormRequest;
use App\Http\Controllers\Controller;
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
use App\Http\Requests\AddProductRequest;



class ProductsController extends Controller
{
    public function getList(Request $request)
    {
        if (!$request->has('keyword') || empty($request->keyword)) {
//
            $product = DB::table('products')->orderBy('id', 'desc')
                ->paginate(10);
        } else {
            $kw = $request->keyword;
            $product = Product::where('name', 'like', "%$kw%")
                ->orWhere('id', 'like', "%$kw%")
                ->orWhere('detail', 'like', "%$kw%")
                ->orderBy('id', 'desc')
                ->paginate(10);
        }
        return view('admin.products.list', compact('product'));

    }

    public function getAdd()
    {
        $categories = Categories::all();
//        dd($categories);
        return view('admin.products.add', compact( 'categories'));

    }

    public function postAdd(AddProductRequest $request)
    {
        $product = new Product;
        if ($request->hasFile('image')) {
            $path = $request->file('image')->storeAs('products',
                str_replace(' ', '-', uniqid() . '-' . $request->image->getClientOriginalName()));
            $product->image = 'images/' . $path;
        }
        $product->name = $request->name;
        $product->price = $request->price;
        $product->amount = $request->amount;
        $product->detail = $request->detail;
        $product->status = $request->status;
        $product->cate_id = $request->category_id;
//        dd($request->category_id);
//        dd($product);
        $product->save();
//        dd();
//        dd($product);
        return redirect('admin/products/list');
    }

    public function getEdit($id)
    {
        $product = Product::find($id);
        return view('admin.products.edit', ['product' => $product]);
    }

    public function postEdit(Requests\EditProductRequest $request, $id)
    {
        $product = Product::find($id);
        $product->name = $request->name;
        $product->price = $request->price;
        if ($request->hasFile('image')) {
            $path = $request->file('image')->storeAs('products',
                str_replace(' ', '-', uniqid() . '-' . $request->image->getClientOriginalName()));
            $product->image = 'images/' . $path;
        }
        $product->amount = $request->amount;
        $product->detail = $request->detail;
        $product->status = $request->status;
        $product->save();
        return redirect('admin/products/list');
    }

    public function getDelete($id)
    {
        Product::destroy($id);
        return back();
    }
}
