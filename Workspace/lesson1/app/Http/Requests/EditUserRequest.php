<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EditUserRequest extends FormRequest
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
            'password' => 'required|min:6|max:15',
            'repassword' => 'required|same:password',
            'oldpassword' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'password.required'=>'Mật khẩu không được để trống',
            'oldpassword.required'=>'Mật khẩu không được để trống',
            'password.min'=>'Mật khẩu phải lớn hơn 6 kí tự',
            'password.max'=>'Mật khẩu nhỏ hơn 15 kí tự',
            'repassword.required'=>'Bạn phải nhập lại mật khẩu',
            'repassword.same'=>'Bạn nhập chưa khơp mật khẩu',
        ];
    }
}
