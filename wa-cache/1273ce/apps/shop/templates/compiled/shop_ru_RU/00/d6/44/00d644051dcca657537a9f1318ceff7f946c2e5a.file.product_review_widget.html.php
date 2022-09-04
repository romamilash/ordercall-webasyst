<?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 00:21:25
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-apps\installer\templates\helper\product_review_widget.html" */ ?>
<?php /*%%SmartyHeaderCode:278953923631273d5ba6392-03790202%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '00d644051dcca657537a9f1318ceff7f946c2e5a' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-apps\\installer\\templates\\helper\\product_review_widget.html',
      1 => 1650026988,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '278953923631273d5ba6392-03790202',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'wrapper_class_id' => 0,
    'is_modal' => 0,
    '_is_modal' => 0,
    'inline_class_prefix' => 0,
    'wa_url' => 0,
    'wa' => 0,
    '_product_loader_template' => 0,
    'wrapper_id' => 0,
    'inline_class' => 0,
    'dialog_prefix' => 0,
    'product_id' => 0,
    'store_review_core_url' => 0,
    'store_auth_params' => 0,
    '_locale' => 0,
    '_view_classes' => 0,
    'errors' => 0,
    'installer_app_url' => 0,
    'is_debug' => 0,
    'has_access' => 0,
    '_product_review_dialog_template' => 0,
    '_confirm_text_template' => 0,
    'installer_app_static_url' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_631273d5c427c5_09425900',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_631273d5c427c5_09425900')) {function content_631273d5c427c5_09425900($_smarty_tpl) {?><?php $_smarty_tpl->tpl_vars['wrapper_class_id'] = new Smarty_variable('i-product-review-widget-wrappper', null, 0);?>
<?php $_smarty_tpl->tpl_vars['wrapper_id'] = new Smarty_variable(uniqid(($_smarty_tpl->tpl_vars['wrapper_class_id']->value).('-')), null, 0);?>

<?php $_smarty_tpl->tpl_vars['_is_modal'] = new Smarty_variable((($tmp = @$_smarty_tpl->tpl_vars['is_modal']->value)===null||$tmp==='' ? false : $tmp), null, 0);?>

<?php $_smarty_tpl->tpl_vars['inline_class_prefix'] = new Smarty_variable('-inline', null, 0);?>
<?php $_smarty_tpl->tpl_vars['dialog_prefix'] = new Smarty_variable('', null, 0);?>

<?php $_smarty_tpl->tpl_vars['inline_class'] = new Smarty_variable('', null, 0);?>
<?php if (!$_smarty_tpl->tpl_vars['_is_modal']->value){?>
    <?php $_smarty_tpl->tpl_vars['inline_class'] = new Smarty_variable($_smarty_tpl->tpl_vars['inline_class_prefix']->value, null, 0);?>
<?php }?>

<?php $_smarty_tpl->_capture_stack[0][] = array('default', "_product_loader_template", null); ob_start(); ?>
    <div class="i-skeleton-wrapper js-skeleton-wrapper pulsed"><div class="i-product-review-block loader-pulse"><span class="i-product-review-icon"></span><span class="i-product-review-title "></span><div class="i-rates-list" style="display: none"><?php $_smarty_tpl->tpl_vars['_index'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['_index']->step = 1;$_smarty_tpl->tpl_vars['_index']->total = (int)ceil(($_smarty_tpl->tpl_vars['_index']->step > 0 ? 5+1 - (1) : 1-(5)+1)/abs($_smarty_tpl->tpl_vars['_index']->step));
if ($_smarty_tpl->tpl_vars['_index']->total > 0){
for ($_smarty_tpl->tpl_vars['_index']->value = 1, $_smarty_tpl->tpl_vars['_index']->iteration = 1;$_smarty_tpl->tpl_vars['_index']->iteration <= $_smarty_tpl->tpl_vars['_index']->total;$_smarty_tpl->tpl_vars['_index']->value += $_smarty_tpl->tpl_vars['_index']->step, $_smarty_tpl->tpl_vars['_index']->iteration++){
$_smarty_tpl->tpl_vars['_index']->first = $_smarty_tpl->tpl_vars['_index']->iteration == 1;$_smarty_tpl->tpl_vars['_index']->last = $_smarty_tpl->tpl_vars['_index']->iteration == $_smarty_tpl->tpl_vars['_index']->total;?><span class="i-rate"><svg class="svg-inline--fa fa-star" aria-hidden="true" data-prefix="fas" data-icon="star" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" data-fa-i2svg=""><path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path></svg></span><?php }} ?></div><span class="i-product-review-support"></span></div></div>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>


<link href="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-apps/installer/css/helper/review-widget.css?v=<?php echo $_smarty_tpl->tpl_vars['wa']->value->version();?>
" rel="stylesheet">

<?php $_smarty_tpl->tpl_vars['dialog_prefix'] = new Smarty_variable('wa-', null, 0);?>
<link href="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/dialog-widget/dialog.css" rel="stylesheet">
<script src="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/dialog-widget/dialog.js"></script>
<script defer src="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-apps/installer/fonts/fontawesome/fontawesome-all.min.js?v=<?php echo $_smarty_tpl->tpl_vars['wa']->value->version();?>
"></script>

<?php if (!$_smarty_tpl->tpl_vars['_is_modal']->value){?>
    <?php echo $_smarty_tpl->tpl_vars['_product_loader_template']->value;?>

<?php }?>

<div id="<?php echo $_smarty_tpl->tpl_vars['wrapper_id']->value;?>
" class="<?php echo $_smarty_tpl->tpl_vars['wrapper_class_id']->value;?>
">
    <div class="i-product-widget-block js-product-widget-block wa-dialog<?php echo $_smarty_tpl->tpl_vars['inline_class']->value;?>
" style="display: none;">
        <div class="wa-dialog-body<?php echo $_smarty_tpl->tpl_vars['inline_class']->value;?>
">
            <div class="wa-dialog-content<?php echo $_smarty_tpl->tpl_vars['inline_class']->value;?>
">
                <div class="i-product-icon js-product-icon"></div>
                <div class="i-product-name js-product-name"></div>
                <div class="i-rates-list js-rates-list">
                    <?php $_smarty_tpl->tpl_vars['_index'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['_index']->step = 1;$_smarty_tpl->tpl_vars['_index']->total = (int)ceil(($_smarty_tpl->tpl_vars['_index']->step > 0 ? 5+1 - (1) : 1-(5)+1)/abs($_smarty_tpl->tpl_vars['_index']->step));
if ($_smarty_tpl->tpl_vars['_index']->total > 0){
for ($_smarty_tpl->tpl_vars['_index']->value = 1, $_smarty_tpl->tpl_vars['_index']->iteration = 1;$_smarty_tpl->tpl_vars['_index']->iteration <= $_smarty_tpl->tpl_vars['_index']->total;$_smarty_tpl->tpl_vars['_index']->value += $_smarty_tpl->tpl_vars['_index']->step, $_smarty_tpl->tpl_vars['_index']->iteration++){
$_smarty_tpl->tpl_vars['_index']->first = $_smarty_tpl->tpl_vars['_index']->iteration == 1;$_smarty_tpl->tpl_vars['_index']->last = $_smarty_tpl->tpl_vars['_index']->iteration == $_smarty_tpl->tpl_vars['_index']->total;?>
                    <span class="i-rate js-set-rate">
                            <i class="fas fa-star"></i>
                        </span>
                    <?php }} ?>
                </div>
            </div>
            <div class="wa-dialog-footer<?php echo $_smarty_tpl->tpl_vars['inline_class']->value;?>
">
                <a class="js-product-support" target="_blank" href="#"><?php echo _wd('installer','Contact the developer');?>
</a>
            </div>
            <?php if (!$_smarty_tpl->tpl_vars['inline_class']->value){?>
            <span class="wa-close-icon js-close-dialog">
                <i class="fas fa-times large"></i>
            </span>
            <?php }?>
        </div>
    </div>
</div>

<?php $_smarty_tpl->_capture_stack[0][] = array('default', "_product_review_dialog_template", null); ob_start(); ?>
<link href="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-apps/installer/css/helper/review-widget.css?v=<?php echo $_smarty_tpl->tpl_vars['wa']->value->version();?>
" rel="stylesheet">

<div class="<?php echo $_smarty_tpl->tpl_vars['dialog_prefix']->value;?>
dialog i-product-review-dialog">
    <div class="<?php echo $_smarty_tpl->tpl_vars['dialog_prefix']->value;?>
dialog-background"></div>
    <div class="<?php echo $_smarty_tpl->tpl_vars['dialog_prefix']->value;?>
dialog-body">
        <div class="<?php echo $_smarty_tpl->tpl_vars['dialog_prefix']->value;?>
dialog-header">
            <h1 class="js-content-title"><?php echo _wd('installer','Your review');?>
</h1>
        </div>
        <div class="<?php echo $_smarty_tpl->tpl_vars['dialog_prefix']->value;?>
dialog-content">
            <div class="i-comment-section js-comment-section">
                <div class="i-rates-list js-rates-list"><?php $_smarty_tpl->tpl_vars['_index'] = new Smarty_Variable;$_smarty_tpl->tpl_vars['_index']->step = 1;$_smarty_tpl->tpl_vars['_index']->total = (int)ceil(($_smarty_tpl->tpl_vars['_index']->step > 0 ? 5+1 - (1) : 1-(5)+1)/abs($_smarty_tpl->tpl_vars['_index']->step));
if ($_smarty_tpl->tpl_vars['_index']->total > 0){
for ($_smarty_tpl->tpl_vars['_index']->value = 1, $_smarty_tpl->tpl_vars['_index']->iteration = 1;$_smarty_tpl->tpl_vars['_index']->iteration <= $_smarty_tpl->tpl_vars['_index']->total;$_smarty_tpl->tpl_vars['_index']->value += $_smarty_tpl->tpl_vars['_index']->step, $_smarty_tpl->tpl_vars['_index']->iteration++){
$_smarty_tpl->tpl_vars['_index']->first = $_smarty_tpl->tpl_vars['_index']->iteration == 1;$_smarty_tpl->tpl_vars['_index']->last = $_smarty_tpl->tpl_vars['_index']->iteration == $_smarty_tpl->tpl_vars['_index']->total;?><span class="i-rate js-set-rate"><i class="fas fa-star"></i></span><?php }} ?><span class="gray"> – <?php echo _wd('installer','Your rate has been added, thank you!');?>
</span></div>

                <div class="i-description"><?php echo _wd('installer','What you like or dislike about this product');?>
<span class="gray">(<?php echo _wd('installer','optional');?>
)</span>:</div>

                <textarea class="i-comment-field js-comment-field"></textarea>

            </div>

            <div class="i-comment-user js-comment-user assets" style="display: none;">
                <i class="userpic userpic20 icon16"></i>
                <strong class="user"></strong>
                <span class="hint"><?php echo wa_date('humandate');?>
</span>
            </div>

            <div class="i-errors-place js-errors-place" style="display: none;"></div>

        </div>

        <div class="<?php echo $_smarty_tpl->tpl_vars['dialog_prefix']->value;?>
dialog-footer">

            <div class="hint js-dialog-signup-user-info" style="display: none;">
                <p>
                    <?php echo _wd('installer','You are currently signed into Webasyst as <span class="js-customer-center-user-name"></span>');?>
<br>
                    <?php echo _wd('installer','If you want to add a review as another customer, please <a class="js-customer-center-logout-link">sign out</a>.');?>

                </p>
            </div>

            <button class="button2 large blue js-send-comment"><?php echo _wd('installer','Add a review');?>
</button>
        </div>

        <span class="wa-close-icon js-close-dialog">
            <i class="fas fa-times"></i>
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
<div class="i-confirm-text"><?php echo _wd('installer','Your review has been added, thank you!');?>
</div>
<?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>

    <?php $_smarty_tpl->tpl_vars['_locale'] = new Smarty_variable(array('your_rates'=>_wd('installer','Your rates'),'button_default'=>_wd('installer',"Add a rate"),'button_active'=>_wd('installer',"Add a rate and a review"),'button_edit_default'=>_wd('installer',"Change rate"),'button_edit_active'=>_wd('installer',"Change rate and review"),'rate_plugin'=>_wd('installer',"Rate plugin"),'rate_widget'=>_wd('installer',"Rate widget"),'rate_theme'=>_wd('installer',"Rate theme"),'rate_app'=>_wd('installer',"Rate app"),'for_plugin'=>_wd('installer',"for plugin"),'for_widget'=>_wd('installer',"for widget"),'for_theme'=>_wd('installer',"for theme"),'for_app'=>_wd('installer',"for app")), null, 0);?>

    
    <?php $_smarty_tpl->tpl_vars['_view_classes'] = new Smarty_variable(array(array(((string)$_smarty_tpl->tpl_vars['dialog_prefix']->value)."dialog","wa-dialog".((string)$_smarty_tpl->tpl_vars['inline_class_prefix']->value)),array(((string)$_smarty_tpl->tpl_vars['dialog_prefix']->value)."dialog-body","wa-dialog-body".((string)$_smarty_tpl->tpl_vars['inline_class_prefix']->value)),array(((string)$_smarty_tpl->tpl_vars['dialog_prefix']->value)."dialog-content","wa-dialog-content".((string)$_smarty_tpl->tpl_vars['inline_class_prefix']->value)),array(((string)$_smarty_tpl->tpl_vars['dialog_prefix']->value)."dialog-footer","wa-dialog-footer".((string)$_smarty_tpl->tpl_vars['inline_class_prefix']->value))), null, 0);?>

    <script>
        $(function () {

            $(document).on('wa_store_installer_widget_init', function () {
                $('.js-skeleton-wrapper').remove();
            });

            var init = function () {
                new InstallerProductReviewWidget({
                    $wrapper: $('#<?php echo $_smarty_tpl->tpl_vars['wrapper_id']->value;?>
'),
                    product_id: <?php echo json_encode($_smarty_tpl->tpl_vars['product_id']->value);?>
,
                    store_review_core_url: <?php echo json_encode($_smarty_tpl->tpl_vars['store_review_core_url']->value);?>
,
                    store_auth_params: <?php echo json_encode($_smarty_tpl->tpl_vars['store_auth_params']->value);?>
,
                    locale_defs: <?php echo json_encode($_smarty_tpl->tpl_vars['_locale']->value);?>
,
                    is_modal: <?php echo json_encode($_smarty_tpl->tpl_vars['_is_modal']->value);?>
,
                    view_classes: <?php echo json_encode($_smarty_tpl->tpl_vars['_view_classes']->value);?>
,
                    errors: <?php echo json_encode((($tmp = @$_smarty_tpl->tpl_vars['errors']->value)===null||$tmp==='' ? array() : $tmp));?>
,
                    installer_app_url: <?php echo json_encode((($tmp = @$_smarty_tpl->tpl_vars['installer_app_url']->value)===null||$tmp==='' ? '' : $tmp));?>
,
                    is_debug: <?php echo json_encode($_smarty_tpl->tpl_vars['is_debug']->value);?>
,
                    has_access: <?php echo json_encode($_smarty_tpl->tpl_vars['has_access']->value);?>
,
                    templates: {
                        review_dialog: <?php echo json_encode($_smarty_tpl->tpl_vars['_product_review_dialog_template']->value);?>
,
                        confirm: <?php echo json_encode($_smarty_tpl->tpl_vars['_confirm_text_template']->value);?>

                    }
                });
            };

            if (typeof InstallerProductReviewWidget === 'undefined') {
                $.getScript('<?php echo $_smarty_tpl->tpl_vars['installer_app_static_url']->value;?>
js/product_review_widget.js', init)
            } else {
                init();
            }
        });
    </script>
<?php }} ?>