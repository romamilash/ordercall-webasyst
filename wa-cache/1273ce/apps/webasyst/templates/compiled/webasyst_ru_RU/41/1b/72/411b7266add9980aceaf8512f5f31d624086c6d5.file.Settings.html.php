<?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 18:55:53
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-system\webasyst\templates\layouts-legacy\Settings.html" */ ?>
<?php /*%%SmartyHeaderCode:24563676663137909517eb1-98453469%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '411b7266add9980aceaf8512f5f31d624086c6d5' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system\\webasyst\\templates\\layouts-legacy\\Settings.html',
      1 => 1617787741,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '24563676663137909517eb1-98453469',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'wa' => 0,
    'wa_url' => 0,
    'backend_assets' => 0,
    'item' => 0,
    'sidebar' => 0,
    'content' => 0,
    'wa_backend_url' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_631379095eade8_49398903',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_631379095eade8_49398903')) {function content_631379095eade8_49398903($_smarty_tpl) {?><?php if (!is_callable('smarty_block_wa_js')) include 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system/vendors/smarty-plugins\\block.wa_js.php';
?><?php $_smarty_tpl->tpl_vars['_locale_string'] = new Smarty_variable(substr($_smarty_tpl->tpl_vars['wa']->value->locale(),0,2), null, 0);?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Настройки &mdash; <?php echo $_smarty_tpl->tpl_vars['wa']->value->accountName();?>
</title>
    <?php echo $_smarty_tpl->tpl_vars['wa']->value->css();?>


    <link href="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/css/wa-settings/legacy/settings.css?v=<?php echo $_smarty_tpl->tpl_vars['wa']->value->version();?>
" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-plugins/ibutton/jquery.ibutton.min.css" rel="stylesheet">

    
    <?php $_smarty_tpl->smarty->_tag_stack[] = array('wa_js', array()); $_block_repeat=true; echo smarty_block_wa_js(array(), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>

        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery/jquery-1.11.1.min.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery/jquery-migrate-1.2.1.min.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-ui/jquery.ui.core.min.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-ui/jquery.ui.widget.min.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-ui/jquery.ui.mouse.min.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-ui/jquery.ui.sortable.min.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-ui/jquery.ui.progressbar.min.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-plugins/ibutton/jquery.ibutton.min.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/ace/ace.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa.elrte.ace.js
    <?php $_block_content = ob_get_clean(); $_block_repeat=false; echo smarty_block_wa_js(array(), $_block_content, $_smarty_tpl, $_block_repeat);  } array_pop($_smarty_tpl->smarty->_tag_stack);?>


    
    <?php $_smarty_tpl->smarty->_tag_stack[] = array('wa_js', array()); $_block_repeat=true; echo smarty_block_wa_js(array(), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>

        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa.core.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa.dialog.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa.contentrouter.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.general.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.email.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.maps.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.captcha.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.push.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.sms.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.auth.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.field.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.field.edit.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.field.delete.confirm.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.regions.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.db.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.db.list.dialog.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.waID.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.waIDInviteProgress.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.waIDConnectDialog.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.waIDDisconnectConfirm.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/dialog/dialog.js
    <?php $_block_content = ob_get_clean(); $_block_repeat=false; echo smarty_block_wa_js(array(), $_block_content, $_smarty_tpl, $_block_repeat);  } array_pop($_smarty_tpl->smarty->_tag_stack);?>


    <link type="text/css" rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/css/wa-settings/legacy/settingsDialog.css?v<?php echo $_smarty_tpl->tpl_vars['wa']->value->version();?>
">
    <link type="text/css" href="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/dialog/dialog.css?<?php echo $_smarty_tpl->tpl_vars['wa']->value->version();?>
" rel="stylesheet" />

    <script src="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa-settings/legacy/settings.dialog.js?v<?php echo $_smarty_tpl->tpl_vars['wa']->value->version();?>
"></script>

    
    <?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['backend_assets']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value){
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
        <?php echo $_smarty_tpl->tpl_vars['item']->value;?>

    <?php } ?>

    <?php echo $_smarty_tpl->tpl_vars['wa']->value->js();?>


</head>
<body><div id="wa">

    <?php echo $_smarty_tpl->tpl_vars['wa']->value->header();?>


    <div id="wa-app">
        <div class="s-main-wrapper" id="s-main-wrapper">

            
            <section class="s-sidebar-wrapper sidebar left200px" id="s-sidebar-wrapper">
                <?php echo $_smarty_tpl->tpl_vars['sidebar']->value;?>

            </section>

            
            <section class="s-content-wrapper content shadowed left200px">
                <div class="s-content-block" id="s-content-block">
                    <?php echo $_smarty_tpl->tpl_vars['content']->value;?>

                </div>
            </section>
        </div>

    </div>
    <script>
        (function($) { "use strict";

            
            window.wa_app = <?php echo json_encode($_smarty_tpl->tpl_vars['wa']->value->app());?>
;
            
            window.wa_url = <?php echo json_encode($_smarty_tpl->tpl_vars['wa_url']->value);?>
;

            var $doc = $(document),
                $wrapper = $('#s-main-wrapper'),
                $content = $("#s-content-block"),
                before_load_content_event = 'wa_before_load.webasyst-settings';

            var changeUrlHandler = function(params) {
                // auto off
                if (!$wrapper.length) {
                    $doc.off(before_load_content_event);
                    return;
                }

                params = params || {};

                
                var content_uri = params.content_uri || location.href || '';
                if (content_uri.indexOf('waid') > -1) {
                    $('.js-webasyst-id-connect-announcement').hide();
                    $('.js-webasyst-id-auth-announcement').hide();
                } else {
                    $('.js-webasyst-id-connect-announcement').show();
                    $('.js-webasyst-id-auth-announcement').show();
                }
            };

            // Change url handling
            $doc.off(before_load_content_event).on(before_load_content_event, function (e, params) {
                changeUrlHandler(params);
            });

            // Change url handler on initial state
            changeUrlHandler();

            // content router
            $.wa.content = new ContentRouter({
                $content: $content,
                app_url: <?php echo json_encode(((string)$_smarty_tpl->tpl_vars['wa_backend_url']->value)."webasyst/settings/");?>

            });

        })(jQuery);
    </script>
</body>
</html>
<?php }} ?>