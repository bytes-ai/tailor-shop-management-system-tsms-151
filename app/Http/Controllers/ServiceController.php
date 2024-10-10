<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Models\Service;
use Illuminate\Http\Request;
use App\Http\Requests\ServiceRequest;
use App\Http\Resources\ServiceCollection;

class ServiceController extends Controller
{
    public function create()
    {
        return Inertia::render('Services/Form');
    }

    public function delete(Service $service)
    {
        $service->measurementFields()->dissociate();
        $service->forceDelete();
        return redirect()->to('/services')->with('success', __('model_deleted', ['model' => __choice('Service', 1)]));
    }

    public function destroy(Service $service)
    {
        if ($service->orderServices()->exists()) {
            return back()->with('error', __('model_can_not_deleted', ['model' => __choice('Service', 1), 'data' => __choice('Order', 2)]));
        }
        $service->delete();
        return back()->with('success', __('model_deleted', ['model' => __choice('Service', 1)]));
    }

    public function edit(Service $service)
    {
        return Inertia::render('Services/Form', ['service' => $service]);
    }

    public function index(Request $request)
    {
        $filters = $request->all('search', 'trashed');

        return Inertia::render('Services/Index', [
            'filters'    => $filters,
            'services'   => new ServiceCollection(
                Service::filter($filters)->orderBy('name')->paginate()->withQueryString()
            ),
        ]);
    }

    public function restore(Service $service)
    {
        $service->restore();
        return back()->with('success', __('model_restored', ['model' => __choice('Service', 1)]));
    }

    public function store(ServiceRequest $request)
    {
        Service::create($request->validated());
        return redirect()->route('services')->with('success', __('model_created', ['model' => __choice('Service', 1)]));
    }

    public function update(ServiceRequest $request, Service $service)
    {
        $service->update($request->validated());
        return back()->with('success', __('model_updated', ['model' => __choice('Service', 1)]));
    }
}
