<?php

namespace App\Controllers;

use App\Models\MRs;

class RsController extends RestfulController
{
    public function create()
    {
        $data = [
            'nama_rs' => $this->request->getVar('nama_rs'),
            'alamat' => $this->request->getVar('alamat'),
            'kontak' => $this->request->getVar('kontak')
        ];

        $model = new MRs();
        $model->insert($data);
        $Rs = $model->find($model->getInsertID());
        return $this->responseHasil(200, true, $Rs);
    }

    public function list()
    {
        $model = new MRs();
        $Rs = $model->findAll();
        return $this->responseHasil(200, true, $Rs);
    }

    public function detail($id_rs)
    {
        $model = new MRs();
        $Rs = $model->find($id_rs);
        return $this->responseHasil(200, true, $Rs);
    }

    public function ubah($id_rs)
    {
        $data = [
            'nama_rs' => $this->request->getVar('nama_rs'),
            'alamat' => $this->request->getVar('alamat'),
            'kontak' => $this->request->getVar('kontak')
        ];

        $model = new MRs();
        $model->update($id_rs, $data);
        $Rs = $model->find($id_rs);
        return $this->responseHasil(200, true, $Rs);
    }

    public function hapus($id_rs)
    {
        $model = new MRs();
        $Rs = $model->delete($id_rs);
        return $this->responseHasil(200, true, $Rs);
    }
}
