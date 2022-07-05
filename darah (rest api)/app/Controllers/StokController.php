<?php

namespace App\Controllers;

use App\Models\MStok;

class StokController extends RestfulController
{
    public function create()
    {
        $data = [
            'goldar' => $this->request->getVar('goldar'),
            'jumlah' => $this->request->getVar('jumlah'),
            'keterangan' => $this->request->getVar('keterangan')
        ];

        $model = new MStok();
        $model->insert($data);
        $Stok = $model->find($model->getInsertID());
        return $this->responseHasil(200, true, $Stok);
    }

    public function list()
    {
        $model = new MStok();
        $Stok = $model->findAll();
        return $this->responseHasil(200, true, $Stok);
    }

    public function detail($id_stockdarah)
    {
        $model = new MStok();
        $Stok = $model->find($id_stockdarah);
        return $this->responseHasil(200, true, $Stok);
    }

    public function ubah($id_stockdarah)
    {
        $data = [
            'goldar' => $this->request->getVar('goldar'),
            'jumlah' => $this->request->getVar('jumlah'),
            'keterangan' => $this->request->getVar('keterangan')
        ];

        $model = new MStok();
        $model->update($id_stockdarah, $data);
        $Stok = $model->find($id_stockdarah);
        return $this->responseHasil(200, true, $Stok);
    }

    public function hapus($id_stockdarah)
    {
        $model = new MStok();
        $Stok = $model->delete($id_stockdarah);
        return $this->responseHasil(200, true, $Stok);
    }
}
