<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Category;
use App\Models\Products;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Color;
use App\Models\Size;

class FilterController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    { $categories = Category::with('children')->whereNull('parent_category')->get();

        return view('frontend.filter', compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $slug)
    {
        $categories = Category::with('children')->whereNull('parent_category')->get();

        return view('frontend.filter', compact('categories','slug'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
