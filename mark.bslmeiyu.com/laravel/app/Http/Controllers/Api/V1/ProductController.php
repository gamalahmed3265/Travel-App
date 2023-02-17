<?php
namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Place;

class ProductController extends Controller
{
    //
        public function get_popular_products(Request $request)
    {
              $list = Place::get();
         //       $list = new Article();
       // $list = $info->getWelcomeInfo();
        //$list['article_content']=html_entity_decode($list['article_content']);
        foreach ($list as $item){
            $item['description']=strip_tags($item['description']);
            $item['description']=$Content = preg_replace("/&#?[a-z0-9]+;/i"," ",$item['description']); 
        }
         return json_decode($list);
    }

}
