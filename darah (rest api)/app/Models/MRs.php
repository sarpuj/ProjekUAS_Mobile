<?php

namespace App\Models;

use CodeIgniter\Model;

class MRs extends Model
{
    protected $table = 'rs';
    protected $primaryKey = 'id_rs';
    protected $allowedFields = ['nama_rs', 'alamat', 'kontak'];
}
