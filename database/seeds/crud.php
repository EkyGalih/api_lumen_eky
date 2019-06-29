<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class crud extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        foreach (range(0,10) as $i) {
        	DB::table('crud')->insert([
        		'aktifitas' => $faker->aktifitas,
        		'deskripsi' => $faker->deskripsi,
        		'type' => $faker->type,
        		'status' => $faker->status
        	]);
        }
    }
}
