<?php

namespace App\Traits;
 
trait ImageResizerTrait {
 
    public function resizeToSmall() {
        return 'image saved with 100*100 resoltion';
    }

    public function resizeToLarge() {
        return 'image saved with 1000*1000 resoltion';

    }

    public function getProfilePicture(){
        return 'a.jpg';
    }

    public function getUserName(){
        return 'rajat';
    }


}