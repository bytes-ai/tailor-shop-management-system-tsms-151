<?php

// Get Settings
if (!function_exists('get_settings')) {
    function get_settings($key = null)
    {
        return auth()->user()?->account?->toArray();
        return array_merge(auth()->user()?->account?->toArray(), \App\Helpers\Env::changeable()->mapWithKeys(function ($item) {
            return [$item['key'] => $item['value']];
        })?->toArray());

        // if ($key) {
        //     return optional(\App\Models\Setting::where('tec_key', $key)->first())->tec_value;
        // }
        // return \App\Models\Setting::all()->pluck('tec_value', 'tec_key')->merge(['baseUrl' => url('/')]);
    }
}

// Get account id
if (!function_exists('getAccountId')) {
    function getAccountId($account_id = null)
    {
        return session('account_id', $account_id ?? optional(auth()->user())->account_id);
    }
}

// Log Activity
if (!function_exists('log_activity')) {
    function log_activity($activity, $properties = null, $model = null, $name = null)
    {
        return activity($name)->performedOn($model)->withProperties($properties)->log($activity);
    }
}

// Format Decimal
if (!function_exists('formatDecimal')) {
    function formatDecimal($number, $decimals = 4, $ds = '.', $ts = '')
    {
        return number_format($number, $decimals, $ds, $ts);
    }
}

// Format Number
if (!function_exists('formatNumber')) {
    function formatNumber($number, $decimals = 2, $ds = '.', $ts = ',')
    {
        return number_format($number, $decimals, $ds, $ts);
    }
}

// Is Demo Enabled
if (!function_exists('demo')) {
    function demo()
    {
        return env('DEMO', false) || env('WINDOWS', false);
    }
}

if (!function_exists('desktopMachine')) {
    function desktopMachine()
    {
        return env('DESKTOPMACHINE', false);
    }
}

if (!function_exists('notDemo')) {
    function notDemo()
    {
        return !demo();
    }
}

if (!function_exists('__choice')) {
    function __choice(string $key, int $count): string
    {
        return trans_choice(__($key), $count);
    }
}
