<?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 00:21:20
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-apps\installer\templates\layouts-legacy\BackendStore.html" */ ?>
<?php /*%%SmartyHeaderCode:856616733631273d078e2c3-83551484%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '90e494458c65bbaeb00c271b9d9a5e8c98e2fa38' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-apps\\installer\\templates\\layouts-legacy\\BackendStore.html',
      1 => 1631697813,
      2 => 'file',
    ),
    '278e0b54757173ebb3eba87f03f4c1136200fbdd' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-apps\\installer\\templates\\layouts-legacy\\BackendStoreSidebar.html',
      1 => 1658128730,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '856616733631273d078e2c3-83551484',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'sidebar_only' => 0,
    'installer_sidebar' => 0,
    'title' => 0,
    'wa' => 0,
    'wa_app_static_url' => 0,
    'wa_url' => 0,
    'messages' => 0,
    'message' => 0,
    'content' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_631273d089bb83_13990412',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_631273d089bb83_13990412')) {function content_631273d089bb83_13990412($_smarty_tpl) {?><?php if (!is_callable('smarty_block_wa_js')) include 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system/vendors/smarty-plugins\\block.wa_js.php';
?><?php $_smarty_tpl->_capture_stack[0][] = array('default', 'installer_sidebar', null); ob_start(); ?><?php /*  Call merged included template "./BackendStoreSidebar.html" */
$_tpl_stack[] = $_smarty_tpl;
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("./BackendStoreSidebar.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0, '856616733631273d078e2c3-83551484');
content_631273d0792141_01710381($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); /*  End of included template "./BackendStoreSidebar.html" */?><?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>

<?php if ($_smarty_tpl->tpl_vars['sidebar_only']->value){?>

    
    <?php echo $_smarty_tpl->tpl_vars['installer_sidebar']->value;?>


<?php }else{ ?>

<!DOCTYPE html>
<html>
<head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title><?php echo (($tmp = @$_smarty_tpl->tpl_vars['title']->value)===null||$tmp==='' ? $_smarty_tpl->tpl_vars['wa']->value->appName() : $tmp);?>
 — <?php echo $_smarty_tpl->tpl_vars['wa']->value->accountName();?>
</title>

    
    <?php echo $_smarty_tpl->tpl_vars['wa']->value->css();?>

    <link href="<?php echo $_smarty_tpl->tpl_vars['wa_app_static_url']->value;?>
css/app.installer-legacy.css?v=<?php echo $_smarty_tpl->tpl_vars['wa']->value->version();?>
" rel="stylesheet">
    <link href="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/css/jquery-ui/base/jquery.ui.autocomplete.css" rel="stylesheet" type="text/css" />

    
    <script src="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery/jquery-1.7.1.min.js"></script>
    <script defer src="<?php echo $_smarty_tpl->tpl_vars['wa_app_static_url']->value;?>
fonts/fontawesome/fontawesome-all.min.js?v=<?php echo $_smarty_tpl->tpl_vars['wa']->value->version();?>
"></script>

    <?php $_smarty_tpl->smarty->_tag_stack[] = array('wa_js', array()); $_block_repeat=true; echo smarty_block_wa_js(array(), null, $_smarty_tpl, $_block_repeat);while ($_block_repeat) { ob_start();?>

        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa.core.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-ui/jquery.ui.core.min.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-ui/jquery.ui.widget.min.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-ui/jquery.ui.mouse.min.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-ui/jquery.ui.position.min.js
        <?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-ui/jquery.ui.autocomplete.min.js
        <?php echo $_smarty_tpl->tpl_vars['wa_app_static_url']->value;?>
js/sidebar.js
        <?php echo $_smarty_tpl->tpl_vars['wa_app_static_url']->value;?>
js/licenses/licenses.js
        <?php echo $_smarty_tpl->tpl_vars['wa_app_static_url']->value;?>
js/licenses/license.js
    <?php $_block_content = ob_get_clean(); $_block_repeat=false; echo smarty_block_wa_js(array(), $_block_content, $_smarty_tpl, $_block_repeat);  } array_pop($_smarty_tpl->smarty->_tag_stack);?>


    
    <link href="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/dialog/dialog.css" rel="stylesheet">
    <script src="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/dialog/dialog.js"></script>

</head>
<body>

<div id="wa">

    
    <?php echo $_smarty_tpl->tpl_vars['wa']->value->header();?>


    <div id="wa-app">

        <section class="i-app-wrapper">
            
            <nav class="i-main-sidebar-section" role="navigation">
                <?php echo $_smarty_tpl->tpl_vars['installer_sidebar']->value;?>

            </nav>

            
            <div class="i-content js-content">

                <?php if (!empty($_smarty_tpl->tpl_vars['messages']->value)){?>
                    <?php  $_smarty_tpl->tpl_vars['message'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['message']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['messages']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['message']->key => $_smarty_tpl->tpl_vars['message']->value){
$_smarty_tpl->tpl_vars['message']->_loop = true;
?>
                        <div class="block double-padded i-message-<?php echo $_smarty_tpl->tpl_vars['message']->value['result'];?>
">
                            <?php if ($_smarty_tpl->tpl_vars['message']->value['result']=='success'){?>
                                <i class="fas fa-check-circle"></i>
                            <?php }elseif($_smarty_tpl->tpl_vars['message']->value['result']=='fail'){?>
                                <i class="fas fa-times-circle"></i>
                            <?php }?>
                            <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['message']->value['text'], ENT_QUOTES, 'UTF-8', true);?>

                        </div>
                    <?php } ?>
                <?php }?>

                <?php echo $_smarty_tpl->tpl_vars['content']->value;?>

            </div>

        </section>

    </div>

</div>

</body>
</html>

<?php }?>
<?php }} ?><?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 00:21:20
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-apps\installer\templates\layouts-legacy\BackendStoreSidebar.html" */ ?>
<?php if ($_valid && !is_callable('content_631273d0792141_01710381')) {function content_631273d0792141_01710381($_smarty_tpl) {?><div class="i-main-sidebar-wrapper"><div class="i-main-sidebar" id="js-main-sidebar"><?php if (!empty($_smarty_tpl->tpl_vars['store_sidebar_items']->value)){?><div><div class="i-type-switch"><?php  $_smarty_tpl->tpl_vars['_sidebar_item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_sidebar_item']->_loop = false;
 $_smarty_tpl->tpl_vars['_type'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['store_sidebar_items']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_sidebar_item']->key => $_smarty_tpl->tpl_vars['_sidebar_item']->value){
$_smarty_tpl->tpl_vars['_sidebar_item']->_loop = true;
 $_smarty_tpl->tpl_vars['_type']->value = $_smarty_tpl->tpl_vars['_sidebar_item']->key;
?><a href="<?php echo $_smarty_tpl->tpl_vars['wa_app_url']->value;?>
store<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_sidebar_item']->value['TOP']['base_url'], ENT_QUOTES, 'UTF-8', true);?>
"<?php if ($_smarty_tpl->tpl_vars['store_sidebar_type']->value==$_smarty_tpl->tpl_vars['_type']->value){?> class="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['_sidebar_item']->value['name'];?>
</a><?php } ?></div></div><div class="i-sidebar-top-block"><?php  $_smarty_tpl->tpl_vars['_sidebar_item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_sidebar_item']->_loop = false;
 $_smarty_tpl->tpl_vars['_type'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['store_sidebar_items']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_sidebar_item']->key => $_smarty_tpl->tpl_vars['_sidebar_item']->value){
$_smarty_tpl->tpl_vars['_sidebar_item']->_loop = true;
 $_smarty_tpl->tpl_vars['_type']->value = $_smarty_tpl->tpl_vars['_sidebar_item']->key;
?><?php if ($_smarty_tpl->tpl_vars['store_sidebar_type']->value==$_smarty_tpl->tpl_vars['_type']->value){?><ul class="menu-v i-link-block" data-type="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_type']->value, ENT_QUOTES, 'UTF-8', true);?>
"<?php if ($_smarty_tpl->tpl_vars['store_sidebar_type']->value!==$_smarty_tpl->tpl_vars['_type']->value){?> style="display: none;"<?php }?>><?php  $_smarty_tpl->tpl_vars['_item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['_sidebar_item']->value['TOP']['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_item']->key => $_smarty_tpl->tpl_vars['_item']->value){
$_smarty_tpl->tpl_vars['_item']->_loop = true;
?><?php $_smarty_tpl->tpl_vars['_store_url'] = new Smarty_variable(((string)$_smarty_tpl->tpl_vars['_sidebar_item']->value['TOP']['base_url']).((string)$_smarty_tpl->tpl_vars['_item']->value['url']), null, 0);?><?php $_smarty_tpl->tpl_vars['_link'] = new Smarty_variable(((string)$_smarty_tpl->tpl_vars['wa_app_url']->value)."store".((string)$_smarty_tpl->tpl_vars['_store_url']->value), null, 0);?><li<?php if ($_smarty_tpl->tpl_vars['_store_url']->value=="/".((string)$_smarty_tpl->tpl_vars['store_path']->value)){?> class="selected"<?php }?>><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_link']->value, ENT_QUOTES, 'UTF-8', true);?>
" data-store-url="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_store_url']->value, ENT_QUOTES, 'UTF-8', true);?>
"><i class="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_item']->value['icon'], ENT_QUOTES, 'UTF-8', true);?>
"></i><span><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_item']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
</span></a></li><?php } ?><?php  $_smarty_tpl->tpl_vars['_item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_item']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['_sidebar_item']->value['TOP']['extra']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_item']->key => $_smarty_tpl->tpl_vars['_item']->value){
$_smarty_tpl->tpl_vars['_item']->_loop = true;
?><li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_item']->value['url'], ENT_QUOTES, 'UTF-8', true);?>
"><i class="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_item']->value['icon'], ENT_QUOTES, 'UTF-8', true);?>
"></i><span style="margin-right:4px;"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_item']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
</span><?php if (!empty($_smarty_tpl->tpl_vars['_item']->value['badge'])){?><span class="indicator red" style="color:#fff !important;top:0;font-size: 12px;"><?php echo $_smarty_tpl->tpl_vars['_item']->value['badge'];?>
</span><?php }?></a></li><?php } ?></ul><?php }?><?php } ?></div><?php if ($_smarty_tpl->tpl_vars['store_sidebar_type']->value=='FEATURED'){?><?php if (!empty($_smarty_tpl->tpl_vars['store_sidebar_items']->value['FEATURED'])){?><ul class="menu-v i-link-block"><?php  $_smarty_tpl->tpl_vars['_category'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_category']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['store_sidebar_items']->value['FEATURED']['CATEGORIES']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_category']->key => $_smarty_tpl->tpl_vars['_category']->value){
$_smarty_tpl->tpl_vars['_category']->_loop = true;
?><?php $_smarty_tpl->tpl_vars['_store_url'] = new Smarty_variable(((string)$_smarty_tpl->tpl_vars['store_sidebar_items']->value['FEATURED']['TOP']['base_url']).((string)$_smarty_tpl->tpl_vars['_category']->value['url']), null, 0);?><?php $_smarty_tpl->tpl_vars['_link'] = new Smarty_variable(((string)$_smarty_tpl->tpl_vars['wa_app_url']->value)."store".((string)$_smarty_tpl->tpl_vars['_store_url']->value), null, 0);?><?php $_smarty_tpl->tpl_vars['_is_active'] = new Smarty_variable(false, null, 0);?><?php if (strstr($_smarty_tpl->tpl_vars['wa']->value->currentUrl(true),$_smarty_tpl->tpl_vars['_link']->value)){?><?php $_smarty_tpl->tpl_vars['_is_active'] = new Smarty_variable(true, null, 0);?><?php }?><li<?php if ($_smarty_tpl->tpl_vars['_is_active']->value){?> class="selected"<?php }?>><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_link']->value, ENT_QUOTES, 'UTF-8', true);?>
" data-store-url="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_store_url']->value, ENT_QUOTES, 'UTF-8', true);?>
"><?php if (!empty($_smarty_tpl->tpl_vars['_category']->value['icon'])){?><i class="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_category']->value['icon'], ENT_QUOTES, 'UTF-8', true);?>
"></i><?php }?><span><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_category']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
</span></a></li><?php } ?></ul><?php }?><?php }else{ ?><div class="i-sidebar-filters-params js-sidebar-filters-params"><?php  $_smarty_tpl->tpl_vars['_sidebar_item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_sidebar_item']->_loop = false;
 $_smarty_tpl->tpl_vars['_type'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['store_sidebar_items']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_sidebar_item']->key => $_smarty_tpl->tpl_vars['_sidebar_item']->value){
$_smarty_tpl->tpl_vars['_sidebar_item']->_loop = true;
 $_smarty_tpl->tpl_vars['_type']->value = $_smarty_tpl->tpl_vars['_sidebar_item']->key;
?><div class="i-sidebar-product-type-filters js-sidebar-product-type-filters" data-type="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_type']->value, ENT_QUOTES, 'UTF-8', true);?>
"<?php if ($_smarty_tpl->tpl_vars['store_sidebar_type']->value!==$_smarty_tpl->tpl_vars['_type']->value){?> style="display: none;"<?php }?>><?php  $_smarty_tpl->tpl_vars['_filter_data'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_filter_data']->_loop = false;
 $_smarty_tpl->tpl_vars['_filter_id'] = new Smarty_Variable;
 $_from = ifset($_smarty_tpl->tpl_vars['_sidebar_item']->value['FILTERS'],array()); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_filter_data']->key => $_smarty_tpl->tpl_vars['_filter_data']->value){
$_smarty_tpl->tpl_vars['_filter_data']->_loop = true;
 $_smarty_tpl->tpl_vars['_filter_id']->value = $_smarty_tpl->tpl_vars['_filter_data']->key;
?><div class="i-sidebar-filter-wrapper js-sidebar-spoiler-wrapper is-invisible" data-id="<?php echo mb_strtolower((($tmp = @$_smarty_tpl->tpl_vars['store_sidebar_type']->value)===null||$tmp==='' ? "unknown" : $tmp));?>
-<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_filter_id']->value, ENT_QUOTES, 'UTF-8', true);?>
"><a class="i-sidebar-spoiler-title js-sidebar-spoiler" href="javascript:void(0);"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_filter_data']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
</a><div class="s-sidebar-spoiler-block js-sidebar-spoiler-block"><?php if ($_smarty_tpl->tpl_vars['store_sidebar_type']->value=='THEMES'&&$_smarty_tpl->tpl_vars['_filter_id']->value=='color'){?><ul class="menu-v i-themes-color js-themes-color"><?php  $_smarty_tpl->tpl_vars['_filter_row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_filter_row']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['_filter_data']->value['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_filter_row']->key => $_smarty_tpl->tpl_vars['_filter_row']->value){
$_smarty_tpl->tpl_vars['_filter_row']->_loop = true;
?><?php $_smarty_tpl->tpl_vars['_store_type_url'] = new Smarty_variable($_smarty_tpl->tpl_vars['_sidebar_item']->value['TOP']['base_url'], null, 0);?><?php $_smarty_tpl->tpl_vars['_link'] = new Smarty_variable(((string)$_smarty_tpl->tpl_vars['wa_app_url']->value)."store".((string)$_smarty_tpl->tpl_vars['_store_type_url']->value), null, 0);?><li class="<?php if ($_smarty_tpl->tpl_vars['_filter_row']->value['filter_value']!='@any'){?>i-style-color-<?php echo $_smarty_tpl->tpl_vars['_filter_row']->value['filter_value'];?>
<?php }else{ ?>i-style-color-any<?php }?>"><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_link']->value, ENT_QUOTES, 'UTF-8', true);?>
<?php echo $_smarty_tpl->tpl_vars['wa']->value->installer->getFilters($_smarty_tpl->tpl_vars['_filter_row']->value['filter_name'],$_smarty_tpl->tpl_vars['_filter_row']->value['filter_value']);?>
"<?php if (isset($_smarty_tpl->tpl_vars['filters']->value['color'])&&$_smarty_tpl->tpl_vars['filters']->value['color']==$_smarty_tpl->tpl_vars['_filter_row']->value['filter_value']){?> class="selected"<?php }?>><span class="i-style-color-icon js-style-color-icon"><?php if (isset($_smarty_tpl->tpl_vars['filters']->value['color'])&&$_smarty_tpl->tpl_vars['filters']->value['color']==$_smarty_tpl->tpl_vars['_filter_row']->value['filter_value']){?> <i class="fas fa-check i-check-icon"></i> <i class="fas fa-times i-close-icon"></i><?php }?></span></a></li><?php } ?></ul><?php }else{ ?><ul class="menu-v i-sidebar-spoiler-content"><?php  $_smarty_tpl->tpl_vars['_filter_row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_filter_row']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['_filter_data']->value['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_filter_row']->key => $_smarty_tpl->tpl_vars['_filter_row']->value){
$_smarty_tpl->tpl_vars['_filter_row']->_loop = true;
?><?php $_smarty_tpl->tpl_vars['_store_type_url'] = new Smarty_variable($_smarty_tpl->tpl_vars['_sidebar_item']->value['TOP']['base_url'], null, 0);?><?php $_smarty_tpl->tpl_vars['_link'] = new Smarty_variable(((string)$_smarty_tpl->tpl_vars['wa_app_url']->value)."store".((string)$_smarty_tpl->tpl_vars['_store_type_url']->value), null, 0);?><li><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_link']->value, ENT_QUOTES, 'UTF-8', true);?>
<?php echo $_smarty_tpl->tpl_vars['wa']->value->installer->getFilters($_smarty_tpl->tpl_vars['_filter_row']->value['filter_name'],$_smarty_tpl->tpl_vars['_filter_row']->value['filter_value']);?>
"<?php if (isset($_smarty_tpl->tpl_vars['filters']->value[$_smarty_tpl->tpl_vars['_filter_row']->value['filter_name']])&&$_smarty_tpl->tpl_vars['filters']->value[$_smarty_tpl->tpl_vars['_filter_row']->value['filter_name']]==$_smarty_tpl->tpl_vars['_filter_row']->value['filter_value']){?> class="selected"><i class="fas fa-check i-selected-icon"></i><i class="fas fa-times i-close-icon"></i><?php }else{ ?>><?php }?><div class="i-filter-name"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_filter_row']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
<?php if (array_key_exists('count',$_smarty_tpl->tpl_vars['_filter_row']->value)){?><span class="i-count"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_filter_row']->value['count'], ENT_QUOTES, 'UTF-8', true);?>
</span><?php }?></div></a></li><?php } ?></ul><?php }?></div></div><?php } ?></div><?php } ?></div><?php }?><?php }?><div class="i-app-links"><div class="i-sticky-links-wrapper js-sticky-links-wrapper"><ul class="menu-v i-link-block"><li<?php if ($_smarty_tpl->tpl_vars['module']->value=='assets'){?> class="selected"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['wa_app_url']->value;?>
assets/"><i class="fas fa-check-double"></i><span>Установлено</span></a></li><li<?php if ($_smarty_tpl->tpl_vars['module']->value=='reviews'){?> class="selected"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['wa_app_url']->value;?>
reviews/"><i class="fas fa-star"></i><span>Отзывы</span></a></li><li<?php if ($_smarty_tpl->tpl_vars['module']->value=='update'){?> class="selected"<?php }?> id="i-apply-updates-sidebar-item"><a href="<?php echo $_smarty_tpl->tpl_vars['wa_app_url']->value;?>
updates/"><i class="fas fa-sync"></i><span>Обновления</span><?php if ($_smarty_tpl->tpl_vars['update_counter']->value>0){?><span class="i-count"><?php echo $_smarty_tpl->tpl_vars['update_counter']->value;?>
</span><?php }?></a></li><li<?php if ($_smarty_tpl->tpl_vars['module']->value=='settings'){?> class="selected"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['wa_app_url']->value;?>
settings/"><i class="fas fa-cogs"></i><span>Настройки</span></a></li></ul></div></div><script>( function($) {var installer = window.waInstaller;installer.sidebar = new installer.init.Sidebar({$wrapper: $("#js-main-sidebar").removeAttr("id")});})(jQuery);</script></div></div>
<?php }} ?>