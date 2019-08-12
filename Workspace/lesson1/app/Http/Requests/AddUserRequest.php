<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddUserRequest extends FormRequest
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
            'name' => 'required|min:3',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:6|max:15',
            'repassword' => 'required|same:password',
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Bạn chưa nhập tên người dùng',
            'name.min' => 'Tên người dùng phải lớn hơn 3 kí tự',
            'email.required' => 'Bạn chưa nhập email',
            'email.email' => 'Bạn chưa nhập định dang email',
            'email.unique' => 'Email đã tồn tai',
            'password.required'=>'Mật khẩu không được để trống',
            'password.min'=>'Mật khẩu phải lớn hơn 6 kí tự',
            'password.max'=>'Mật khẩu nhỏ hơn 15 kí tự',
            'repassword.required'=>'Bạn phải nhập lại mật khẩu',
            'repassword.same'=>'Bạn nhập chưa khơp mật khẩu',
        ];
    }
}
