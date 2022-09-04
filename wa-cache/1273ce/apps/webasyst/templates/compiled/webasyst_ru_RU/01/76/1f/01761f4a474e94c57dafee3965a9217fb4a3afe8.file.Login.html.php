<?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 18:55:12
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-system\webasyst\templates\layouts\Login.html" */ ?>
<?php /*%%SmartyHeaderCode:593202986631378e0f0d7f9-04709935%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '01761f4a474e94c57dafee3965a9217fb4a3afe8' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system\\webasyst\\templates\\layouts\\Login.html',
      1 => 1617787741,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '593202986631378e0f0d7f9-04709935',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'wa' => 0,
    'env' => 0,
    'wa_url' => 0,
    'background' => 0,
    'stretch' => 0,
    'dialog_class' => 0,
    'error' => 0,
    '_styles' => 0,
    '_classes' => 0,
    'content' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_631378e101d488_39913229',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_631378e101d488_39913229')) {function content_631378e101d488_39913229($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_join')) include 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system/vendors/smarty-plugins\\modifier.join.php';
?><!DOCTYPE html><html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php echo $_smarty_tpl->tpl_vars['wa']->value->accountName();?>
</title>
    <meta name="viewport" content="width=device-width; initial-scale=1; maximum-scale=1; user-scalable=0;">

    <?php if ($_smarty_tpl->tpl_vars['env']->value=='backend'){?><meta name="robots" content="noindex, nofollow"/><?php }?>

    
    <?php echo $_smarty_tpl->tpl_vars['wa']->value->legacyCss();?>


    <link href="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/css/login/backend/login-page.css?<?php echo $_smarty_tpl->tpl_vars['wa']->value->version(true);?>
" rel="stylesheet">
    <script src="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery/jquery-1.11.1.min.js"></script>
    <script src="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa.core.js?<?php echo $_smarty_tpl->tpl_vars['wa']->value->version(true);?>
"></script>
    <script>$.wa.determineTimezone(<?php echo json_encode($_smarty_tpl->tpl_vars['wa_url']->value);?>
);</script>
</head>
<body>

<?php $_smarty_tpl->tpl_vars['_styles'] = new Smarty_variable(array(), null, 0);?>
<?php if (!empty($_smarty_tpl->tpl_vars['background']->value)){?>
    <?php $_smarty_tpl->createLocalArrayVariable('_styles', null, 0);
$_smarty_tpl->tpl_vars['_styles']->value[] = "background-image: url('".((string)$_smarty_tpl->tpl_vars['background']->value)."');";?>
    <?php if (empty($_smarty_tpl->tpl_vars['stretch']->value)){?>
        <?php $_smarty_tpl->createLocalArrayVariable('_styles', null, 0);
$_smarty_tpl->tpl_vars['_styles']->value[] = "background-size: auto;";?>
    <?php }?>
<?php }?>

<?php $_smarty_tpl->tpl_vars['_classes'] = new Smarty_variable(array(), null, 0);?>
<?php if (!empty($_smarty_tpl->tpl_vars['dialog_class']->value)){?>
    <?php $_smarty_tpl->createLocalArrayVariable('_classes', null, 0);
$_smarty_tpl->tpl_vars['_classes']->value[] = $_smarty_tpl->tpl_vars['dialog_class']->value;?>
<?php }?>
<?php if (!empty($_smarty_tpl->tpl_vars['error']->value)){?>
    <?php $_smarty_tpl->createLocalArrayVariable('_classes', null, 0);
$_smarty_tpl->tpl_vars['_classes']->value[] = "error";?>
<?php }?>

<div class="wa-backend-login-page" id="wa-login" style="<?php echo smarty_modifier_join($_smarty_tpl->tpl_vars['_styles']->value," ");?>
">
    <div class="dialog <?php echo smarty_modifier_join($_smarty_tpl->tpl_vars['_classes']->value," ");?>
" id="js-dialog-wrapper">
        <div class="dialog-window" style="overflow: visible;">
            <div class="dialog-content">
                <div class="dialog-content-indent"><?php echo $_smarty_tpl->tpl_vars['content']->value;?>
</div>
            </div>
            <div class="dialog-buttons">
                <div class="wa-poweredby">
                    <a href="http://www.webasyst.com/" title="Webasyst">
                        <span class="wa-dots"></span>
                    </a>
                </div>
            </div>
        </div>
        <script>
            ( function($) {
                var $dialog = $('#js-dialog-wrapper'),
                    $form_wrapper = $dialog.find('.js-backend-auth-form'),
                    form = $form_wrapper.data('WaAuthForm');
                if (form && typeof form.setFocus === "function") {
                    form.setFocus();
                }
            })(jQuery);
        </script>
    </div>
</div>

</body>
</html>
<?php }} ?>