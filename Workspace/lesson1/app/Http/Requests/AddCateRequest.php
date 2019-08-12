<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddCateRequest extends FormRequest
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

            'txtName'=>'unique:categories,cate|required',
        ];
    }
    public function messages(){
        return [
            'txtName.unique'=>'Tên danh mục đã tồn tai',
            'txtName.required'=>'Tên danh mục không được để trống',
        ];
    }
}
