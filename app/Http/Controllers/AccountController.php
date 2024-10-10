<?php

namespace App\Http\Controllers;

use App\Models\Tax;
use App\Helpers\Env;
use Inertia\Inertia;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Http\Resources\ActivityCollection;

class AccountController extends Controller
{
    public function edit(Request $request)
    {
        $account = $request->user()->account;
        return Inertia::render('Accounts/Edit', [
            'account' => array_merge($account->toArray(), Env::changeable()->mapWithKeys(function ($item) {
                return [$item['key'] => $item['value']];
            })->toArray()),
            'taxes'     => Tax::selectRaw('id as value, name as label')->get(),
            'timezones' => config('timezones'),
        ]);
    }

    public function logs(Request $request)
    {
        $account = $request->user()->account;
        $filters = $request->all('search', 'user');
        return Inertia::render('Accounts/Logs', [
            'filters' => $filters,
            'logs'    => new ActivityCollection(
                $request->user()->account->logs()->with(['causer', 'subject'])->filter($filters)->latest()->paginate()->withQueryString()
            ),
        ]);
    }

    public function update(Request $request)
    {
        $v = $this->validate(
            $request,
            [
                'notifications'           => 'nullable',
                'email_enabled'           => 'nullable',
                'sms_enabled'             => 'nullable',
                'stripe'                  => 'nullable',
                'payu'                    => 'nullable',
                'direction'               => 'required|in:ltr,rtl',
                'language'                => 'required',
                'fraction'                => 'nullable',
                'default_locale'          => 'nullable',
                'name'                    => 'required|max:50',
                'gateways'                => 'required|max:191',
                'phone'                   => 'required|max:50',
                'address'                 => 'nullable|max:191',
                'description'             => 'nullable|max:191',
                'header'                  => 'nullable|max:191',
                'footer'                  => 'nullable|max:191',
                'APP_TIMEZONE'            => 'required|max:50',
                'VONAGE_SIGNATURE_SECRET' => 'nullable|max:191',
                'VONAGE_APP_NAME'         => 'nullable|max:191',
                'VONAGE_APP_VERSION'      => 'nullable|max:191',
                'email'                   => 'nullable|max:50|email',
                'default_tax'             => 'nullable|exists:taxes,id',
                'per_page'                => 'required|integer|min:10|max:100',
                'MAIL_ENCRYPTION'         => 'nullable|max:50',
                'STRIPE_CURRENCY'         => 'max:191|required_if:stripe,true',
                'STRIPE_KEY'              => 'max:191|required_if:stripe,true',
                'STRIPE_SECRET'           => 'max:191|required_if:stripe,true',
                'PAYU_DEFAULT_GATEWAY'    => 'nullable|max:191|in:biz,money|required_if:payu,true',
                'PAYU_MONEY_MODE'         => ['nullable', 'in:live,test',
                    Rule::requiredIf('true' == $request->payu && 'money' == $request->PAYU_DEFAULT_GATEWAY)
                ],
                'PAYU_MONEY_KEY' => ['nullable', 'max:191',
                    Rule::requiredIf('true' == $request->payu && 'money' == $request->PAYU_DEFAULT_GATEWAY)
                ],
                'PAYU_MONEY_SALT' => ['nullable', 'max:191',
                    Rule::requiredIf('true' == $request->payu && 'money' == $request->PAYU_DEFAULT_GATEWAY)
                ],
                'PAYU_MONEY_AUTH' => 'nullable',
                'PAYU_BIZ_MODE'   => ['nullable', 'in:live,test',
                    Rule::requiredIf('true' == $request->payu && 'biz' == $request->PAYU_DEFAULT_GATEWAY)
                ],
                'PAYU_BIZ_KEY' => ['nullable', 'max:191',
                    Rule::requiredIf('true' == $request->payu && 'biz' == $request->PAYU_DEFAULT_GATEWAY)
                ],
                'PAYU_BIZ_SALT' => ['nullable', 'max:191',
                    Rule::requiredIf('true' == $request->payu && 'biz' == $request->PAYU_DEFAULT_GATEWAY)
                ],
                'SMS_FROM'              => 'max:191|required_if:sms_enabled,true',
                'VONAGE_KEY'            => 'max:191|required_if:sms_enabled,true',
                'VONAGE_SECRET'         => 'max:191|required_if:sms_enabled,true',
                'MAIL_FROM_NAME'        => 'max:191|required_if:email_enabled,true',
                'MAIL_FROM_ADDRESS'     => 'max:191|required_if:email_enabled,true|nullable|email',
                'MAIL_MAILER'           => 'max:191|required_if:email_enabled,true|nullable|in:ses,smtp,mailgun,postmark',
                'AWS_ACCESS_KEY_ID'     => 'max:191|required_if:MAIL_MAILER,ses',
                'AWS_SECRET_ACCESS_KEY' => 'max:191|required_if:MAIL_MAILER,ses',
                'AWS_DEFAULT_REGION'    => 'max:191|required_if:MAIL_MAILER,ses',
                'MAIL_HOST'             => 'max:191|required_if:MAIL_MAILER,smtp',
                'MAIL_PORT'             => 'max:191|required_if:MAIL_MAILER,smtp',
                'MAIL_USERNAME'         => 'max:191',
                'MAIL_PASSWORD'         => 'max:191',
                'MAILGUN_DOMAIN'        => 'max:191|required_if:MAIL_MAILER,mailgun',
                'MAILGUN_SECRET'        => 'max:191|required_if:MAIL_MAILER,mailgun',
                'MAILGUN_ENDPOINT'      => 'max:191|required_if:MAIL_MAILER,mailgun',
                'POSTMARK_TOKEN'        => 'max:191|required_if:MAIL_MAILER,postmark',
                'logo'                  => 'nullable|image|dimensions:min_width=100,max_width=500,min_height=40,max_height=150',
            ],
            ['logo.dimensions' => 'Image should be between 100px to 500px in width & 40px to 150px in height.']
        );

        $user = $request->user();
        $request->merge(['payu' => 'true' == $request->get('payu') ? 1 : 0]);
        $request->merge(['stripe' => 'true' == $request->get('stripe') ? 1 : 0]);
        $request->merge(['sms_enabled' => 'true' == $request->get('sms_enabled') ? 1 : 0]);
        $request->merge(['email_enabled' => 'true' == $request->get('email_enabled') ? 1 : 0]);
        $data = $request->only([
            'name',
            'phone',
            'email',
            'gateways',
            'default_tax',
            'per_page',
            'address',
            'description',
            'header',
            'footer',
            'notifications',
            'email_enabled',
            'sms_enabled',
            'payu',
            'stripe',
            'direction',
            'language',
            'fraction',
            'default_locale',
        ]);

        $request->merge(['APP_NAME' => $request->get('name')]);
        $env = $request->only([
            'APP_NAME',
            'APP_URL',
            'MAIL_FROM_NAME',
            'MAIL_FROM_ADDRESS',
            'APP_TIMEZONE',
            'MAIL_MAILER',
            'MAIL_HOST',
            'MAIL_PORT',
            'MAIL_ENCRYPTION',
            'MAIL_USERNAME',
            'MAIL_PASSWORD',
            'STRIPE_KEY',
            'STRIPE_SECRET',
            'STRIPE_CURRENCY',
            'PAYU_DEFAULT_GATEWAY',
            'PAYU_MONEY_MODE',
            'PAYU_MONEY_KEY',
            'PAYU_MONEY_SALT',
            'PAYU_MONEY_AUTH',
            'PAYU_BIZ_MODE',
            'PAYU_BIZ_KEY',
            'PAYU_BIZ_SALT',
            'SMS_FROM',
            'VONAGE_KEY',
            'VONAGE_SECRET',
            'VONAGE_SIGNATURE_SECRET',
            'VONAGE_APP_NAME',
            'VONAGE_APP_VERSION',
            'MAILGUN_DOMAIN',
            'MAILGUN_SECRET',
            'MAILGUN_ENDPOINT',
            'POSTMARK_TOKEN',
            'AWS_ACCESS_KEY_ID',
            'AWS_SECRET_ACCESS_KEY',
            'AWS_DEFAULT_REGION',
        ]);

        if (demo()) {
            $data['name'] = 'Default Tailor Shop';
            $account_updated = $user->account->update($data);
            return response()->json(['success' => false, 'message' => __('Demo only save few settings, others are disabled.')], 422);
        } elseif ($request->file('logo')) {
            $data['logo_path'] = url($request->file('logo')->store('logos', ['disk' => 'public']));
        }

        $env_updated = Env::update(array_map('addslashes', $env));
        $account_updated = $user->account->update($data);
        log_activity(__('model_updated', ['model' => __choice('Setting', 2)]), ['account' => $data, 'config' => $env], $user->account);
        return response()->json(['success' => true, 'message' => __('model_updated', ['model' => __choice('Setting', 2)])]);
        // return back()->with('success', 'Settings has been successfully updated.');
    }
}
