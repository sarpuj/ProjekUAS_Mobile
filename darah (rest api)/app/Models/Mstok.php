<?php

namespace App\Models;

use CodeIgniter\Model;

class MStok extends Model
{
    protected $table = 'stock';
    protected $primaryKey = 'id_stockdarah';
    protected $allowedFields = ['goldar', 'jumlah', 'keterangan'];
}
