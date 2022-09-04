<?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 00:21:24
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-apps\shop\templates\actions\backend\BackendLoc.html" */ ?>
<?php /*%%SmartyHeaderCode:2060362321631273d4b7ef00-71664250%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6e3fbd365614c74501134b84cd687c7ee25c21f4' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-apps\\shop\\templates\\actions\\backend\\BackendLoc.html',
      1 => 1543322160,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2060362321631273d4b7ef00-71664250',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'strings' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_631273d4bb9890_95438898',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_631273d4bb9890_95438898')) {function content_631273d4bb9890_95438898($_smarty_tpl) {?>$.wa.locale = $.extend($.wa.locale, <?php ob_start();?><?php echo json_encode($_smarty_tpl->tpl_vars['strings']->value);?>
<?php $_tmp1=ob_get_clean();?><?php echo $_tmp1;?>
);<?php }} ?>