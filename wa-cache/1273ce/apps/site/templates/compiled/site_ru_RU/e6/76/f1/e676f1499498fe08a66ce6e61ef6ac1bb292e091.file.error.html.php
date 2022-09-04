<?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 18:51:38
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-apps\site\themes\default\error.html" */ ?>
<?php /*%%SmartyHeaderCode:2670369326313780a7676a3-31816230%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e676f1499498fe08a66ce6e61ef6ac1bb292e091' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-apps\\site\\themes\\default\\error.html',
      1 => 1540900260,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2670369326313780a7676a3-31816230',
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
  'unifunc' => 'content_6313780a7b58b3_64978342',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_6313780a7b58b3_64978342')) {function content_6313780a7b58b3_64978342($_smarty_tpl) {?><h1>
	<?php if ($_smarty_tpl->tpl_vars['error_code']->value){?><?php echo $_smarty_tpl->tpl_vars['error_code']->value;?>
. <?php }?>
	<?php if ($_smarty_tpl->tpl_vars['error_message']->value){?><?php echo $_smarty_tpl->tpl_vars['error_message']->value;?>
<?php }else{ ?>Ошибка<?php }?>
</h1>
Запрашиваемый ресурс недоступен.
<?php }} ?>