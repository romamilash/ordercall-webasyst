<?php

class shopOrdercallPlugin extends shopPlugin
{

    public function frontendHead()
    {
        $this->addCss('css/style.css');
        $this->addJs('js/script.js');
    }

}