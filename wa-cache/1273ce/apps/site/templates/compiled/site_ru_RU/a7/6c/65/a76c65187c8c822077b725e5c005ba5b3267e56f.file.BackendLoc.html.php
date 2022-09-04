<?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 18:55:46
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-apps\site\templates\actions-legacy\backend\BackendLoc.html" */ ?>
<?php /*%%SmartyHeaderCode:16576216466313790241c573-34206551%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a76c65187c8c822077b725e5c005ba5b3267e56f' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-apps\\site\\templates\\actions-legacy\\backend\\BackendLoc.html',
      1 => 1624000810,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16576216466313790241c573-34206551',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'strings' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_63137902456f05_27772787',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_63137902456f05_27772787')) {function content_63137902456f05_27772787($_smarty_tpl) {?>$.wa.locale = $.extend($.wa.locale, <?php ob_start();?><?php echo json_encode($_smarty_tpl->tpl_vars['strings']->value);?>
<?php $_tmp1=ob_get_clean();?><?php echo $_tmp1;?>
);<?php }} ?>