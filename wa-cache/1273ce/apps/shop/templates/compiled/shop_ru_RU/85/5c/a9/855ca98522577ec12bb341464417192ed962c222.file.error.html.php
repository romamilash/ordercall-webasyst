<?php /* Smarty version Smarty-3.1.14, created on 2022-09-04 00:03:22
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-data\public\site\themes\default\error.html" */ ?>
<?php /*%%SmartyHeaderCode:8030764056313c11a054ed5-49365982%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '855ca98522577ec12bb341464417192ed962c222' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-data\\public\\site\\themes\\default\\error.html',
      1 => 1662221338,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8030764056313c11a054ed5-49365982',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'error_code' => 0,
    'error_message' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_6313c11a2aa9e6_30700312',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_6313c11a2aa9e6_30700312')) {function content_6313c11a2aa9e6_30700312($_smarty_tpl) {?><h1>
	<?php if ($_smarty_tpl->tpl_vars['error_code']->value){?><?php echo $_smarty_tpl->tpl_vars['error_code']->value;?>
. <?php }?>
	<?php if ($_smarty_tpl->tpl_vars['error_message']->value){?><?php echo $_smarty_tpl->tpl_vars['error_message']->value;?>
<?php }else{ ?>Ошибка<?php }?>
</h1>
Запрашиваемый ресурс недоступен.
<?php }} ?>