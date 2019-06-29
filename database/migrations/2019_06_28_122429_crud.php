<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Crud extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('crud', function (Blueprint $table) {
            $table->increments('id');
            $table->string('aktifitas',200);
            $table->text('deskripsi');
            $table->enum('type',['Biasa','Segera','Urgen']);
            $table->enum('status',['Complete','Uncomplete']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('crud');
    }
}
