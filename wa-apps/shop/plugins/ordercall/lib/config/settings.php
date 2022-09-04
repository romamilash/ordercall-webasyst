<?php

return [
    'is_enable' => [
        'title' => 'Включить плагин',
        'control_type' => waHtmlControl::SELECT,
        'options' => [
            '0' => 'Выключен',
            '1' => 'Включен',
        ],
    ],
    'email_from' => [
        'title' => 'E-mail  отправителя',
        'description' =>
            ('Поле ввода, в который будет вводиться e-mail адрес, от которого будут приходить письма-уведомления о заказе обратного звонка.'),
        'control_type' => waHtmlControl::INPUT,
    ],
    'email_notify' => [
        'title' => 'E-mail для уведомления',
        'description' =>
            ('Поле ввода в который будет вводиться e-mail адрес, на который будет отправляться уведомления о заказе звонка.'),
        'control_type' => waHtmlControl::INPUT,
    ],
    'link' => [
        'title' => 'Ссылка на страницу с  политикой обработки персональных данных',
        'description' =>
            ('Поле ввода с возможностью указать ссылку на любую страницу сайта.'),
        'control_type' => waHtmlControl::INPUT,
    ],
];