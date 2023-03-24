<?php

namespace App\Modals;
use Illuminate\Database\Eloquent\Model;



class Images extends Model
{
	protected $table = 'images';

	public function customer(){
		return $this->belongsTo('App\Modals\Pacients','patient_id');
	}
}


