<?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 18:55:12
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-system\login\templates\login\backend\remember_me.html" */ ?>
<?php /*%%SmartyHeaderCode:1473935311631378e0df8231-21771848%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '43abd4327a54a7dfca27329392e230c1d4451dff' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system\\login\\templates\\login\\backend\\remember_me.html',
      1 => 1541778420,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1473935311631378e0df8231-21771848',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'is_api_oauth' => 0,
    'is_onetime_password_auth_type' => 0,
    'input_name' => 0,
    'checked' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_631378e0e03db0_27846644',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_631378e0e03db0_27846644')) {function content_631378e0e03db0_27846644($_smarty_tpl) {?><?php if (empty($_smarty_tpl->tpl_vars['is_api_oauth']->value)){?>
<div class="field field-remember-me"<?php if ($_smarty_tpl->tpl_vars['is_onetime_password_auth_type']->value){?> style="display:none;"<?php }?>>
    <div class="value">
        <label>
            <input type="hidden" name="<?php echo $_smarty_tpl->tpl_vars['input_name']->value;?>
" value="0">
            <input type="checkbox" name="<?php echo $_smarty_tpl->tpl_vars['input_name']->value;?>
" value="1" <?php if ($_smarty_tpl->tpl_vars['checked']->value){?>checked="checked"<?php }?>> Запомнить меня
        </label>
    </div>
</div>
<?php }?>
<?php }} ?>