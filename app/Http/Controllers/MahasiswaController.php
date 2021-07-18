<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mahasiswa;
use Auth;

class MahasiswaController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Mahasiswa $model)
    {
        // $boards = Auth::user()->id;
        // $boards = \App\Board::all();
        // $boards = auth()->user()->id;
        // $mahasiswa = \App\Mahasiswa::all();
        return view('mahasiswa.index', ['mahasiswas' => $model->paginate(5)]);
    }

    public function create()
    {
        return view('mahasiswa.create');
    }

    public function showById($id)
    {
        $board = \App\Board::where('id', $id)->get();
        $tasks = \App\Task::all();
        // return view('card.index', ['board' => $board]);
        return view('card.index', compact('board','tasks')); 
    }


    // public function board()
    // {
        
    //     return view('board.create', ['cards' => $cards]);
    // }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Mahasiswa $model)
    {
        $model->create($request->all());

        return redirect()->route('mahasiswa')->withStatus(__('Mahasiswa successfully created.'));
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $board = Board::find($id);
        if (request()->wantsJson()) {
            return new BoardResource($board);
        }
        return view('board.show', compact('board'));
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('mahasiswa.edit');
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $mahasiswa = Mahasiswa::find($id);

        // $board = \App\Board::where('id', $id)->delete();

        $mahasiswa->delete();

        return redirect()->route('mahasiswa')->withStatus(__('Mahasiswa successfully deleted.'));
    }
}
