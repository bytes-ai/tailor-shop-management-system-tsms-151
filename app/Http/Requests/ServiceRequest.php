<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ServiceRequest extends FormRequest
{
    public function authorize()
    {
        return auth()->check();
    }

    public function rules()
    {
        return [
            'name'        => 'required|max:250',
            'price'       => 'required|numeric',
            'active'      => 'nullable|boolean',
            'description' => 'nullable|max:250',
            'code'        => 'required|max:25|unique:services,code,' . ($this->id ?? ''),
        ];
    }
}
