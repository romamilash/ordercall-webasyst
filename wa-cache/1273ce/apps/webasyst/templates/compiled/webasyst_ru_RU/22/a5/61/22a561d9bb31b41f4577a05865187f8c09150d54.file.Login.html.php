<?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 18:55:12
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-system\webasyst\templates\actions\login\Login.html" */ ?>
<?php /*%%SmartyHeaderCode:177066909631378e0b7f4a6-17888424%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '22a561d9bb31b41f4577a05865187f8c09150d54' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system\\webasyst\\templates\\actions\\login\\Login.html',
      1 => 1541667600,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '177066909631378e0b7f4a6-17888424',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'class_id' => 0,
    'wrapper_id' => 0,
    'title' => 0,
    'renderer' => 0,
    'data' => 0,
    'errors' => 0,
    'messages' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_631378e0bf0934_04799613',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_631378e0bf0934_04799613')) {function content_631378e0bf0934_04799613($_smarty_tpl) {?><?php $_smarty_tpl->tpl_vars['class_id'] = new Smarty_variable('wa-backend-login-form', null, 0);?>
<?php $_smarty_tpl->tpl_vars['wrapper_id'] = new Smarty_variable(uniqid($_smarty_tpl->tpl_vars['class_id']->value), null, 0);?>
<div class="<?php echo $_smarty_tpl->tpl_vars['class_id']->value;?>
" id="<?php echo $_smarty_tpl->tpl_vars['wrapper_id']->value;?>
">
    <?php echo $_smarty_tpl->tpl_vars['renderer']->value->setTitle($_smarty_tpl->tpl_vars['title']->value);?>

    <?php echo $_smarty_tpl->tpl_vars['renderer']->value->render($_smarty_tpl->tpl_vars['data']->value,$_smarty_tpl->tpl_vars['errors']->value,$_smarty_tpl->tpl_vars['messages']->value);?>

</div>
<?php }} ?>