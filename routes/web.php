<?php

use Illuminate\Support\Facades\{Auth, Route};

// Auth
// Auth::routes(['register' => false, 'verify' => false]);
// Route::middleware(['guest'])->group(function () {
Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('login', 'Auth\LoginController@login')->name('login.attempt');
Route::post('password/reset', 'Auth\ResetPasswordController@reset')->name('password.update');
Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('password.email');
Route::get('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('password.reset');
Route::get('password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('password.request');
// });

Route::get('language/{locale}', 'AjaxController@locale')->name('language');
Route::get('orders/{order}/view/{hash}', 'OrderController@show')->name('orders.show');
Route::get('orders/{order}/photo/{hash}', 'OrderController@photo')->name('orders.photo');
Route::get('payments/{payment}/view/{hash}', 'PaymentController@show')->name('payments.show');

Route::middleware(['auth'])->group(function () {
    // Dashboard
    Route::get('/', 'DashboardController@index')->name('dashboard');
    Route::post('logout', 'Auth\LoginController@logout')->name('logout');
    Route::get('ajax/staff', 'AjaxController@staff')->name('ajax.staff');
    Route::get('ajax/services', 'AjaxController@services')->name('ajax.services');
    Route::get('/chart/year', 'DashboardController@yearChart')->name('chart.year');
    Route::get('ajax/customers', 'AjaxController@customers')->name('ajax.customers');
    Route::get('/chart/month', 'DashboardController@monthChart')->name('chart.month');
    Route::get('/ajax/fields/{service}', 'AjaxController@fields')->name('ajax.fields');

    // Profile
    Route::get('/profile/{user}', 'ProfileController@edit')->name('profile.edit');
    Route::put('/profile/{user}', 'ProfileController@update')->name('profile.update');
    Route::get('/profile/{user}/password', 'ProfileController@password')->name('profile.password');
    Route::put('/profile/{user}/password', 'ProfileController@changePassword')->name('profile.change.password');

    // Images
    Route::get('/simg/{path}', 'ImageController@show')->where('path', '.+');

    // Expenses
    // can add middleware('remember') on index;
    Route::get('expenses', 'ExpenseController@index')->name('expenses');
    Route::post('expenses', 'ExpenseController@store')->name('expenses.store');
    Route::get('expenses/create', 'ExpenseController@create')->name('expenses.create');
    Route::put('expenses/{expense}', 'ExpenseController@update')->name('expenses.update');
    Route::get('expenses/{expense}/edit', 'ExpenseController@edit')->name('expenses.edit');

    // Services
    Route::get('services', 'ServiceController@index')->name('services');
    Route::post('services', 'ServiceController@store')->name('services.store');
    Route::get('services/create', 'ServiceController@create')->name('services.create');
    Route::put('services/{service}', 'ServiceController@update')->name('services.update');
    Route::get('services/{service}/edit', 'ServiceController@edit')->name('services.edit');

    // Measurements
    Route::get('measurements', 'MeasurementController@index')->name('measurements');
    Route::post('measurements', 'MeasurementController@store')->name('measurements.store');
    Route::get('measurements/create', 'MeasurementController@create')->name('measurements.create');
    Route::put('measurements/{measurement}', 'MeasurementController@update')->name('measurements.update');
    Route::get('measurements/{measurement}/edit', 'MeasurementController@edit')->name('measurements.edit');
    Route::get('measurements/{measurement}/view/{hash}', 'MeasurementController@show')->name('measurements.show');

    // Customers
    Route::get('customers', 'CustomerController@index')->name('customers');
    Route::post('customers', 'CustomerController@store')->name('customers.store');
    Route::get('customers/create', 'CustomerController@create')->name('customers.create');
    Route::post('customers/{customer}/sms', 'CustomerController@sms')->name('customers.sms');
    Route::put('customers/{customer}', 'CustomerController@update')->name('customers.update');
    Route::get('customers/{customer}/edit', 'CustomerController@edit')->name('customers.edit');

    // Contacts
    Route::get('contacts', 'ContactController@index')->name('contacts');
    Route::post('contacts', 'ContactController@store')->name('contacts.store');
    Route::get('contacts/create', 'ContactController@create')->name('contacts.create');
    Route::put('contacts/{contact}', 'ContactController@update')->name('contacts.update');
    Route::get('contacts/{contact}/edit', 'ContactController@edit')->name('contacts.edit');

    // Payments
    Route::get('payments', 'PaymentController@index')->name('payments');
    Route::post('payments', 'PaymentController@store')->name('payments.store');
    Route::get('payments/new', 'PaymentController@create')->name('payments.new');
    Route::put('payments/{payment}', 'PaymentController@update')->name('payments.update');
    Route::get('payments/{payment}/ajax', 'PaymentController@ajax')->name('payments.ajax');
    Route::get('payments/{payment}/edit', 'PaymentController@edit')->name('payments.edit');
    Route::put('payments/{payment}/status', 'PaymentController@status')->name('payments.status');
    Route::post('payments/order/{order}', 'PaymentController@orderPayments')->name('payments.order');

    // Pages
    Route::get('pages', 'PageController')->name('pages');
    Route::get('payu/capture', 'PaymentController@payu_capture')->name('payu.capture');
    Route::get('payu/request/{payment}', 'PaymentController@payu_request')->name('payu.request');

    // Orders
    Route::get('orders', 'OrderController@index')->name('orders');
    Route::post('orders', 'OrderController@store')->name('orders.store');
    Route::get('orders/new', 'OrderController@create')->name('orders.new');
    Route::put('orders/{order}', 'OrderController@update')->name('orders.update');
    Route::get('orders/{order}/ajax', 'OrderController@ajax')->name('orders.ajax');
    Route::get('orders/{order}/edit', 'OrderController@edit')->name('orders.edit');
    Route::post('orders/{order}/email', 'OrderController@email')->name('orders.email');
    Route::put('orders/{order}/status', 'OrderController@status')->name('orders.status');

    Route::middleware(['owner'])->group(function () {
        Route::get('update/database', 'Update\UpdateController');
        Route::get('logs', 'AccountController@logs')->name('logs');
        Route::get('settings', 'AccountController@edit')->name('settings');
        Route::get('ajax/users', 'AjaxController@users')->name('ajax.users');
        Route::put('settings', 'AccountController@update')->name('settings.update');
        Route::get('customers/{customer}/transactions', 'CustomerController@transactions')->name('customers.transactions');

        // Reports
        Route::get('reports', 'ReportController@index')->name('reports');
        Route::post('reports', 'ReportController@index')->name('reports.get');

        // Users
        Route::get('users', 'UserController@index')->name('users');
        Route::post('users', 'UserController@store')->name('users.store');
        Route::get('users/create', 'UserController@create')->name('users.create');
        Route::put('users/{user}', 'UserController@update')->name('users.update');
        Route::get('users/{user}/edit', 'UserController@edit')->name('users.edit');

        // Salaries
        Route::get('salaries', 'SalaryController@index')->name('salaries');
        Route::post('salaries', 'SalaryController@store')->name('salaries.store');
        Route::get('salaries/create', 'SalaryController@create')->name('salaries.create');
        Route::put('salaries/{salary}', 'SalaryController@update')->name('salaries.update');
        Route::get('salaries/{salary}/edit', 'SalaryController@edit')->name('salaries.edit');
        Route::post('salaries/generate', 'SalaryController@generate')->name('salaries.generate');

        // Taxes
        Route::get('taxes', 'TaxController@index')->name('taxes');
        Route::post('taxes', 'TaxController@store')->name('taxes.store');
        Route::get('taxes/create', 'TaxController@create')->name('taxes.create');
        Route::put('taxes/{tax}', 'TaxController@update')->name('taxes.update');
        Route::get('taxes/{tax}/edit', 'TaxController@edit')->name('taxes.edit');

        // Measurement Fields
        Route::get('measurement_fields', 'MeasurementFieldController@index')->name('measurement_fields');
        Route::post('measurement_fields', 'MeasurementFieldController@store')->name('measurement_fields.store');
        Route::get('measurement_fields/create', 'MeasurementFieldController@create')->name('measurement_fields.create');
        Route::put('measurement_fields/{measurement_field}', 'MeasurementFieldController@update')->name('measurement_fields.update');
        Route::get('measurement_fields/{measurement_field}/edit', 'MeasurementFieldController@edit')->name('measurement_fields.edit');

        // Delete routes
        Route::delete('taxes/{tax}', 'TaxController@destroy')->name('taxes.destroy');
        Route::delete('users/{user}', 'UserController@destroy')->name('users.destroy');
        Route::delete('orders/{order}', 'OrderController@destroy')->name('orders.destroy');
        Route::delete('salaries/{salary}', 'SalaryController@destroy')->name('salaries.destroy');
        Route::delete('expenses/{expense}', 'ExpenseController@destroy')->name('expenses.destroy');
        Route::delete('services/{service}', 'ServiceController@destroy')->name('services.destroy');
        Route::delete('contacts/{contact}', 'ContactController@destroy')->name('contacts.destroy');
        Route::delete('payments/{payment}', 'PaymentController@destroy')->name('payments.destroy');
        Route::delete('customers/{customer}', 'CustomerController@destroy')->name('customers.destroy');
        Route::delete('measurements/{measurement}', 'MeasurementController@destroy')->name('measurements.destroy');
        Route::delete('measurement_fields/{measurement_field}', 'MeasurementFieldController@destroy')->name('measurement_fields.destroy');

        // Restore routes
        Route::put('taxes/{tax}/restore', 'TaxController@restore')->name('taxes.restore');
        Route::put('users/{user}/restore', 'UserController@restore')->name('users.restore');
        Route::put('orders/{order}/restore', 'OrderController@restore')->name('orders.restore');
        Route::put('salaries/{salary}/restore', 'SalaryController@restore')->name('salaries.restore');
        Route::put('contacts/{contact}/restore', 'ContactController@restore')->name('contacts.restore');
        Route::put('expenses/{expense}/restore', 'ExpenseController@restore')->name('expenses.restore');
        Route::put('payments/{payment}/restore', 'PaymentController@restore')->name('payments.restore');
        Route::put('services/{service}/restore', 'ServiceController@restore')->name('services.restore');
        Route::put('customers/{customer}/restore', 'CustomerController@restore')->name('customers.restore');
        Route::put('measurements/{measurement}/restore', 'MeasurementController@restore')->name('measurements.restore');
        Route::put('measurement_fields/{measurement_field}/restore', 'MeasurementFieldController@restore')->name('measurement_fields.restore');

        // Permanently Delete routes
        Route::delete('taxes/delete/{tax}', 'TaxController@delete')->name('taxes.delete');
        Route::delete('users/delete/{user}', 'UserController@delete')->name('users.delete');
        Route::delete('orders/delete/{order}', 'OrderController@delete')->name('orders.delete');
        Route::delete('salaries/delete/{salary}', 'SalaryController@delete')->name('salaries.delete');
        Route::delete('expenses/delete/{expense}', 'ExpenseController@delete')->name('expenses.delete');
        Route::delete('services/delete/{service}', 'ServiceController@delete')->name('services.delete');
        Route::delete('contacts/delete/{contact}', 'ContactController@delete')->name('contacts.delete');
        Route::delete('payments/delete/{payment}', 'PaymentController@delete')->name('payments.delete');
        Route::delete('customers/delete/{customer}', 'CustomerController@delete')->name('customers.delete');
        Route::delete('measurements/delete/{measurement}', 'MeasurementController@delete')->name('measurements.delete');
        Route::delete('measurement_fields/delete/{measurement_field}', 'MeasurementFieldController@delete')->name('measurement_fields.delete');

        Route::prefix('commands')->middleware(['throttle:6,10', 'purchased'])->group(function () {
            Route::get('storage_link', function () {
                Artisan::call('storage:link');
                return redirect('notification')->with('message', Artisan::output());
            });
            Route::get('update_database', function () {
                Artisan::call('migrate --force');
                return redirect('notification')->with('message', Artisan::output());
            });
        });
    });
});

Route::view('offline', 'offline');
Route::fallback(fn () => redirect()->route('dashboard'));
// Notification preview
// Route::get('/notify', function () {
//     // $user = \App\Models\User::find(1);
//     // return (new App\Notifications\UserPasswordChanged($user))->toMail($user);
//     $payment = \App\Models\Payment::find(1);
//     return $payment->customer->notify(new App\Notifications\PaymentReceived($payment));
//     return (new App\Notifications\PaymentReceived($payment))->toMail($payment->customer);
//     // $order = \App\Models\Order::find(1);
//     // return (new App\Notifications\OrderStatusUpdated($order))->toMail($order->customer);
// });
