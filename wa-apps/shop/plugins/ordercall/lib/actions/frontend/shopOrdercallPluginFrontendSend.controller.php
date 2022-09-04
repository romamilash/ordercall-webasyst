<?php

class shopOrdercallPluginFrontendSendController extends waAction
{
    public function execute()
    {
        $plugin = wa('shop')->getPlugin('ordercall');
        $settings = $plugin->getSettings();

        $lastName = waRequest::post()['lastname'];
        $email = waRequest::post()['email'];
        $phone = waRequest::post()['phone'];
        $timeToCall = waRequest::post()['time_to_call'];
        $comment = waRequest::post()['comment'];

        $sender = $settings['email_from'];
        $destination = $settings['email_notify'];

        $body = <<<EOT
Имя отправителя: $lastName \n
Email: $email \n
Телефон: $phone \n
Удобное время для звонка:  $timeToCall \n
Комментарий: $comment
EOT;


        $mail_message = new waMailMessage('Новый заказ звонка на сайте', $body);
        $mail_message->setFrom($sender);
        $mail_message->setTo($destination);

        if (!$mail_message->send()) {
            echo 'error';
        }
    }
}