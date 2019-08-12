<?php

use Illuminate\Database\Seeder;

class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $products = [];
        $faker = Faker\Factory::create();

        for($i=0; $i<89; $i++){
        	$item = [
        		'name'=>$faker->name,
        		'image' => 'images/'. $faker->image($dir = 'public/images', $width = 640, $height = 480, 'cats', false),
        		'price'=>$faker->numberBetween($min = 1000, $max = 9000),
        		'detail'=>$faker->text,
        		'amount'=>$faker->numberBetween($min = 1000, $max = 9000),
        		'status' => rand(0, 1)
        	];

        	$products[] = $item;
        }
        DB::table('products')->insert($products);
    }
}
