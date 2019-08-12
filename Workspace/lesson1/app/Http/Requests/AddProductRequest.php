<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'image' => 'required',
            'name' => 'required|min:3|max:100|unique:products,name',
            'price'=>'required|numeric',
            'amount'=>'required|numeric',
            'detail'=>'required',
        ];
    }
    public function messages()
    {
        return [
            'image.required'=>'Anh khong dc de trong',
            'detail.required'=>'Mô tả không được để trông',
            'name.unique'=>'Tên sản phẩm không được trùng',
            'amount.numeric'=>' Amount Phải là số',
            'price.numeric'=>' Gía Phải là số',
            'name.required' => 'Bạn chưa nhập tên sản phẩm',
            'name.min'=>'Tên sản phẩm phải có độ dài từ 3 đến 100 kí tự',
            'name.max'=>'Tên sản phẩm phải có độ dài từ 3 đến 100 kí tự',
            'price.required'=>'Bạn chưa nhập giá',
            'amount.required'=>'Bạn chưa nhập giá khuyến mãi',
        ];
    }
}
