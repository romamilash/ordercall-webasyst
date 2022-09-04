<?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 18:55:49
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-apps\installer\templates\actions-legacy\store\Store.html" */ ?>
<?php /*%%SmartyHeaderCode:17485489826313790512ef72-96672530%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '86aaa6d9adce7b7d092eb065751fa9a52049d7e6' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-apps\\installer\\templates\\actions-legacy\\store\\Store.html',
      1 => 1654671641,
      2 => 'file',
    ),
    '0d419683dcf4a1c8d1c59c26c4aa3a23374d9fce' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-apps\\installer\\templates\\actions-legacy\\store\\LaunchStore.inc.html',
      1 => 1631697813,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17485489826313790512ef72-96672530',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_class' => 0,
    '_id' => 0,
    'store_url' => 0,
    'wa_app_static_url' => 0,
    'wa' => 0,
    'wa_url' => 0,
    'reviewer_info' => 0,
    'wa_app_url' => 0,
    'path_to_module' => 0,
    'store_path' => 0,
    'store_token' => 0,
    'installer_url' => 0,
    'in_app' => 0,
    'return_url' => 0,
    'user_locale' => 0,
    '_locale' => 0,
    '_product_review_dialog_template' => 0,
    '_store_custom_dialog_template' => 0,
    '_confirm_text_template' => 0,
    'csrf' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_6313790529e2d4_44599933',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_6313790529e2d4_44599933')) {function content_6313790529e2d4_44599933($_smarty_tpl) {?><?php $_smarty_tpl->tpl_vars['_class'] = new Smarty_variable('i-store-wrapper', null, 0);?>
<?php $_smarty_tpl->tpl_vars['_id'] = new Smarty_variable(uniqid($_smarty_tpl->tpl_vars['_class']->value), null, 0);?>
<div class="<?php echo $_smarty_tpl->tpl_vars['_class']->value;?>
" id="<?php echo $_smarty_tpl->tpl_vars['_id']->value;?>
">

    <?php if (!$_smarty_tpl->tpl_vars['store_url']->value){?>
        <div class="block double-padded i-message-fail">
            <i class="fas fa-times-circle"></i>
            Не удалось получить URL удаленного Магазина
        </div>
    <?php }?>

    <iframe class="i-store-frame js-store-frame" frameborder="0" width="100%" height="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>

    <?php /*  Call merged included template "./LaunchStore.inc.html" */
$_tpl_stack[] = $_smarty_tpl;
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("./LaunchStore.inc.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0, '17485489826313790512ef72-96672530');
content_631379051f24a3_48735450($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); /*  End of included template "./LaunchStore.inc.html" */?>

    
    <script src="<?php echo $_smarty_tpl->tpl_vars['wa_app_static_url']->value;?>
js/plugins/iframeResizer/iframeResizer.min.js?v=<?php echo $_smarty_tpl->tpl_vars['wa']->value->version();?>
"></script>
    <script>
        iFrameResize({
            log: false,
            heightCalculationMethod: 'max',
            checkOrigin: false,
            onResized: function() {
                $('.js-loading-wrapper').remove();
            }
        }, '.js-store-frame');
    </script>

</div>

<script src="<?php echo $_smarty_tpl->tpl_vars['wa_app_static_url']->value;?>
js/store-legacy.js?v=<?php echo $_smarty_tpl->tpl_vars['wa']->value->version();?>
"></script>

<?php $_smarty_tpl->tpl_vars['_locale'] = new Smarty_variable(array('confirm_product_install'=>_w('Do you confirm the installation?'),'confirm_product_remove'=>_w('This will delete the product’s source code and data, without a recovery option. Are you sure?'),'button_default'=>_w("Add a rate"),'button_active'=>_w("Add a rate and a review"),'button_edit_default'=>_w("Change rate"),'button_edit_active'=>_w("Change rate and review"),'your_review'=>_w("Your review")), null, 0);?>

<?php $_smarty_tpl->_capture_stack[0][] = array('default', "_product_review_dialog_template", null); ob_start(); ?>
    <link href="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-apps/installer/css/helper/review-widget.css?v=<?php echo $_smarty_tpl->tpl_vars['wa']->value->version();?>
" rel="stylesheet">
    
    <div class="wa-dialog i-product-review-dialog">
        <div class="wa-dialog-background"></div>
        <div class="wa-dialog-body">
            <div class="wa-dialog-header"><h1 class="js-content-title"></h1></div>
            <div class="wa-dialog-content">

                <div class="i-comment-section">
                    <div class="i-rates-list js-rates-list"><?php $_smarty_tpl->tpl_vars['_index'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['_index']->step = 1;$_smarty_tpl->tpl_vars['_index']->total = (int)ceil(($_smarty_tpl->tpl_vars['_index']->step > 0 ? 5+1 - (1) : 1-(5)+1)/abs($_smarty_tpl->tpl_vars['_index']->step));
if ($_smarty_tpl->tpl_vars['_index']->total > 0){
for ($_smarty_tpl->tpl_vars['_index']->value = 1, $_smarty_tpl->tpl_vars['_index']->iteration = 1;$_smarty_tpl->tpl_vars['_index']->iteration <= $_smarty_tpl->tpl_vars['_index']->total;$_smarty_tpl->tpl_vars['_index']->value += $_smarty_tpl->tpl_vars['_index']->step, $_smarty_tpl->tpl_vars['_index']->iteration++){
$_smarty_tpl->tpl_vars['_index']->first = $_smarty_tpl->tpl_vars['_index']->iteration == 1;$_smarty_tpl->tpl_vars['_index']->last = $_smarty_tpl->tpl_vars['_index']->iteration == $_smarty_tpl->tpl_vars['_index']->total;?><span class="i-rate js-set-rate"><i class="fas fa-star"></i></span><?php }} ?></div>

                    <div class="i-description">Что вам нравится и не нравится в этом продукте <span class="gray">(необязательно)</span>:</div>

                    <textarea class="i-comment-field js-comment-field"></textarea>

                </div>

                <div class="i-comment-user js-comment-user" style="display: none;">
                    <i class="userpic20 icon16"></i>
                    <strong class="user"><?php if (isset($_smarty_tpl->tpl_vars['reviewer_info']->value)){?><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['reviewer_info']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
<?php }?></strong>
                    <span class="hint"><?php echo wa_date('humandate');?>
</span>
                </div>

                <div class="i-errors-place js-errors-place" style="display: none;"></div>

            </div>

            <div class="wa-dialog-footer">

                <div class="hint js-dialog-signup-user-info" style="display: none;">
                    <p>
                        Вы авторизованы в Центре заказчика как <span class="js-customer-center-user-name"></span><br>
                        Если вы хотите оставить отзыв под другим именем, то <a class="js-customer-center-logout-link">выйдите</a> из текущей учетной записи.
                    </p>
                </div>

                <button class="button2 large blue js-send-comment">Оставить отзыв</button>
            </div>
            <span class="wa-close-icon js-close-dialog">
                <i class="far fa-times-circle"></i>
            </span>
        </div>
    </div>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>

<?php $_smarty_tpl->_capture_stack[0][] = array('default', "_store_custom_dialog_template", null); ob_start(); ?>
    <div class="wa-dialog i-store-custom-dialog">
        <div class="wa-dialog-background"></div>
        <div class="wa-dialog-body">

            <div class="wa-dialog-header">
                <h1 class="js-dialog-title"></h1>
            </div>

            <div class="wa-dialog-content js-dialog-content"></div>

            <div class="wa-dialog-footer js-dialog-footer">
                <button class="button2 blue js-close-dialog">Закрыть</button>
            </div>

            <span class="wa-close-icon js-close-dialog">
                <i class="far fa-times-circle"></i>
            </span>

        </div>
    </div>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>

<?php $_smarty_tpl->_capture_stack[0][] = array('default', "_confirm_text_template", null); ob_start(); ?>
    <div class="i-confirm-text">Спасибо, ваш отзыв добавлен!</div>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
<script>
    (function ($) {
        new InstallerStore({
            $wrapper: $("#<?php echo $_smarty_tpl->tpl_vars['_id']->value;?>
"),
            app_url: <?php echo json_encode($_smarty_tpl->tpl_vars['wa_app_url']->value);?>
,
            path_to_module: <?php echo json_encode($_smarty_tpl->tpl_vars['path_to_module']->value);?>
,
            store_url: <?php echo json_encode($_smarty_tpl->tpl_vars['store_url']->value);?>
,
            store_path: <?php echo json_encode($_smarty_tpl->tpl_vars['store_path']->value);?>
,
            store_token: <?php echo json_encode($_smarty_tpl->tpl_vars['store_token']->value);?>
,
            installer_url: <?php echo json_encode($_smarty_tpl->tpl_vars['installer_url']->value);?>
,
            in_app: <?php if ($_smarty_tpl->tpl_vars['in_app']->value){?>true<?php }else{ ?>false<?php }?>,
            return_url: <?php if ($_smarty_tpl->tpl_vars['return_url']->value){?><?php echo json_encode($_smarty_tpl->tpl_vars['return_url']->value);?>
<?php }else{ ?>null<?php }?>,
            user_locale: <?php echo json_encode($_smarty_tpl->tpl_vars['user_locale']->value);?>
,
            locale: <?php echo json_encode($_smarty_tpl->tpl_vars['_locale']->value);?>
,
            templates: {
                review_dialog: <?php echo json_encode($_smarty_tpl->tpl_vars['_product_review_dialog_template']->value);?>
,
                custom_dialog: <?php echo json_encode($_smarty_tpl->tpl_vars['_store_custom_dialog_template']->value);?>
,
                confirm: <?php echo json_encode($_smarty_tpl->tpl_vars['_confirm_text_template']->value);?>

            },
            csrf: <?php echo json_encode($_smarty_tpl->tpl_vars['csrf']->value);?>

        });
    })(jQuery);
</script>
<?php }} ?><?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 18:55:49
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-apps\installer\templates\actions-legacy\store\LaunchStore.inc.html" */ ?>
<?php if ($_valid && !is_callable('content_631379051f24a3_48735450')) {function content_631379051f24a3_48735450($_smarty_tpl) {?><style>.i-store-wrapper {position: relative;min-height: 50vh;}.i-loading-wrapper {width: 100px;height: 100px;background: url("<?php echo $_smarty_tpl->tpl_vars['wa_app_static_url']->value;?>
img/icons/spinner.gif") no-repeat;background-size: 100px 100px !important;cursor: default;opacity: 0.5;position: absolute;top: calc(50% - 50px);left: calc(50% - 50px);}</style><div class="i-loading-wrapper js-loading-wrapper"></div>
<?php }} ?>