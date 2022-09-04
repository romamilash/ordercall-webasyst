<?php
return array (
  'meta' => 
  array (
    'Project-Id-Version' => 'blog/plugins/troll',
    'POT-Creation-Date' => '2012-05-04 15:32+0400',
    'PO-Revision-Date' => '',
    'Last-Translator' => 'Vladimir V. Tuporshin <vofka@webasyst.net>',
    'Language-Team' => 'blog/plugins/troll',
    'MIME-Version' => '1.0',
    'Content-Type' => 'text/plain; charset=utf-8',
    'Content-Transfer-Encoding' => '8bit',
    'Plural-Forms' => 
    array (
      'nplurals' => '3',
      'plural' => 'return (((($n%10)==1)&&(($n%100)!=11))?(0):((((($n%10)>=2)&&(($n%10)<=4))&&((($n%100)<10)||(($n%100)>=20)))?(1):2));',
    ),
    'X-Poedit-Language' => 'ru_RU',
    'X-Poedit-SourceCharset' => 'utf-8',
    'X-Poedit-Basepath' => '.',
    'X-Poedit-SearchPath-0' => '.',
    'X-Poedit-SearchPath-1' => '.',
  ),
  'messages' => 
  array (
    'Troll' => 'Тролль',
    'Troll!' => 'Тролль!',
    'Mark selected users with a troll face' => 'Выделение выбранных комментаторов троллфейсом (trollface)',
    'A list defining troll search criteria (each line of the textarea defines a criteria). If any of the criteria match commentator\'s email, name or site URL, a troll face is shown.<br /><br />Example:<br /><em>koe9s@gmail.com<br />unwanteddomain.com<br />Alxs29<br />@troll.com</em>' => 'Список задает критерии для поиска троллей (каждый критерий на отдельной строке). Если какая-то из строк найдена в имени, email или адресе сайта (URL) комментатора, то комментарий выделяется троллфейсом.<br /><br />Пример:<br /><em>koe9s@gmail.com<br />unwanteddomain.ru<br />Alxse1<br />@troll.com</em>',
    'Troll list' => 'Список троллей',
  ),
);
