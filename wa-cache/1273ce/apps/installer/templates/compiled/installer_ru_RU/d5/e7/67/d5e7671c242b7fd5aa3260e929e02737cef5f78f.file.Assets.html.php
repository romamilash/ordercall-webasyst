<?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 00:21:20
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-apps\installer\templates\actions-legacy\assets\Assets.html" */ ?>
<?php /*%%SmartyHeaderCode:877784003631273d0056691-39271363%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd5e7671c242b7fd5aa3260e929e02737cef5f78f' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-apps\\installer\\templates\\actions-legacy\\assets\\Assets.html',
      1 => 1631697813,
      2 => 'file',
    ),
    '10f555d4a7aa544aa969385bd60503ba25d08a47' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-apps\\installer\\templates\\includes-legacy\\requirements.html',
      1 => 1631697813,
      2 => 'file',
    ),
    'adad0224f1f77d67b4c83e71fc1c0a0d78fc5326' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-apps\\installer\\templates\\actions-legacy\\assets\\Assets.row.html',
      1 => 1648029633,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '877784003631273d0056691-39271363',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'messages' => 0,
    'message' => 0,
    'items' => 0,
    'app' => 0,
    'app_id' => 0,
    'plugin' => 0,
    'item_id' => 0,
    'theme' => 0,
    'widget' => 0,
    'title' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_631273d01b5fe1_49568785',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_631273d01b5fe1_49568785')) {function content_631273d01b5fe1_49568785($_smarty_tpl) {?><section class="i-assets js-assets">
    <div class="shadowed">

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

        <table class="zebra i-updates" id="i-assets-list">
            <thead>
            <tr>
                <th class="min-width"></th>
                <th>Приложение</th>
                <th>Версия</th>
                <th>&nbsp;</th>
            </tr>
            </thead>
            <tbody>

            <!-- list of available updates -->
            <?php  $_smarty_tpl->tpl_vars['app'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['app']->_loop = false;
 $_smarty_tpl->tpl_vars['app_id'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['items']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['app']->key => $_smarty_tpl->tpl_vars['app']->value){
$_smarty_tpl->tpl_vars['app']->_loop = true;
 $_smarty_tpl->tpl_vars['app_id']->value = $_smarty_tpl->tpl_vars['app']->key;
?>

                <?php if (empty($_smarty_tpl->tpl_vars['app']->value['virtual'])||!empty($_smarty_tpl->tpl_vars['app']->value['plugins'])){?>
                    <?php /*  Call merged included template "./Assets.row.html" */
$_tpl_stack[] = $_smarty_tpl;
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("./Assets.row.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('item'=>$_smarty_tpl->tpl_vars['app']->value,'item_id'=>$_smarty_tpl->tpl_vars['app_id']->value,'item_type'=>'app'), 0, '877784003631273d0056691-39271363');
content_631273d00b42a2_23987646($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); /*  End of included template "./Assets.row.html" */?>
                <?php }?>

                <?php if (!empty($_smarty_tpl->tpl_vars['app']->value['plugins'])){?>
                    <?php  $_smarty_tpl->tpl_vars['plugin'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['plugin']->_loop = false;
 $_smarty_tpl->tpl_vars['item_id'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['app']->value['plugins']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['plugin']->key => $_smarty_tpl->tpl_vars['plugin']->value){
$_smarty_tpl->tpl_vars['plugin']->_loop = true;
 $_smarty_tpl->tpl_vars['item_id']->value = $_smarty_tpl->tpl_vars['plugin']->key;
?>
                        <?php /*  Call merged included template "./Assets.row.html" */
$_tpl_stack[] = $_smarty_tpl;
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("./Assets.row.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('item'=>$_smarty_tpl->tpl_vars['plugin']->value,'item_id'=>$_smarty_tpl->tpl_vars['item_id']->value,'item_type'=>'plugin'), 0, '877784003631273d0056691-39271363');
content_631273d00b42a2_23987646($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); /*  End of included template "./Assets.row.html" */?>
                    <?php } ?>
                <?php }?>

                <?php if (!empty($_smarty_tpl->tpl_vars['app']->value['themes'])){?>
                    <?php  $_smarty_tpl->tpl_vars['theme'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['theme']->_loop = false;
 $_smarty_tpl->tpl_vars['item_id'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['app']->value['themes']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['theme']->key => $_smarty_tpl->tpl_vars['theme']->value){
$_smarty_tpl->tpl_vars['theme']->_loop = true;
 $_smarty_tpl->tpl_vars['item_id']->value = $_smarty_tpl->tpl_vars['theme']->key;
?>
                        <?php if ($_smarty_tpl->tpl_vars['item_id']->value!='default'){?>
                            <?php /*  Call merged included template "./Assets.row.html" */
$_tpl_stack[] = $_smarty_tpl;
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("./Assets.row.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('item'=>$_smarty_tpl->tpl_vars['theme']->value,'item_id'=>$_smarty_tpl->tpl_vars['item_id']->value,'item_type'=>'theme'), 0, '877784003631273d0056691-39271363');
content_631273d00b42a2_23987646($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); /*  End of included template "./Assets.row.html" */?>
                        <?php }?>
                    <?php } ?>
                <?php }?>

                <?php if (!empty($_smarty_tpl->tpl_vars['app']->value['widgets'])){?>
                    <?php  $_smarty_tpl->tpl_vars['widget'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['widget']->_loop = false;
 $_smarty_tpl->tpl_vars['item_id'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['app']->value['widgets']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['widget']->key => $_smarty_tpl->tpl_vars['widget']->value){
$_smarty_tpl->tpl_vars['widget']->_loop = true;
 $_smarty_tpl->tpl_vars['item_id']->value = $_smarty_tpl->tpl_vars['widget']->key;
?>
                        <?php /*  Call merged included template "./Assets.row.html" */
$_tpl_stack[] = $_smarty_tpl;
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("./Assets.row.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('item'=>$_smarty_tpl->tpl_vars['widget']->value,'item_id'=>$_smarty_tpl->tpl_vars['item_id']->value,'item_type'=>'widget','app'=>$_smarty_tpl->tpl_vars['app']->value), 0, '877784003631273d0056691-39271363');
content_631273d00b42a2_23987646($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); /*  End of included template "./Assets.row.html" */?>
                    <?php } ?>
                <?php }?>

            <?php } ?>

            </tbody>
        </table>
    </div>
</section>

<script type="text/javascript">
    document.title = <?php echo json_encode($_smarty_tpl->tpl_vars['title']->value);?>
;

    $('#i-assets-list a.js-remove-item').click(function () {
        var $link = $(this);
        if (confirm($link.data('confirm'))) {
            $link.parent('li').find('form:first').submit();
        }
        return false;
    });
    $('#i-assets-list a.js-switch-item').click(function () {
        var $link = $(this);
        var url = $link.data('url');
        var data = $link.data('data');
        $link.data('url', null);
        $link.find('.icon16').removeClass('pause play').addClass('loading');
        if (url) {
            $.post(url, data, function (data, textStatus) {
                if (data.status == 'ok') {
                    $link.find('.icon16').removeClass('pause play loading').addClass('yes');
                    setTimeout(function () {
                        window.location.reload();
                    }, 1000);

                } else {
                    var message = '';
                    if (data.errors) {
                        for (var i = 0; i < data.errors.length; i++) {
                            message = (message ? (message + ' ') : '') + data.errors[i][0];
                        }
                    } else {
                        message = textStatus;
                    }
                    $link.parent().text(message)
                }

            });
        }
        return false;
    });


    //-->
</script><?php }} ?><?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 00:21:20
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-apps\installer\templates\actions-legacy\assets\Assets.row.html" */ ?>
<?php if ($_valid && !is_callable('content_631273d00b42a2_23987646')) {function content_631273d00b42a2_23987646($_smarty_tpl) {?><?php $_smarty_tpl->tpl_vars['_product_is_disabled'] = new Smarty_variable(in_array($_smarty_tpl->tpl_vars['item_type']->value,array('app','plugin'))&&empty($_smarty_tpl->tpl_vars['item']->value['enabled'])&&empty($_smarty_tpl->tpl_vars['app']->value['virtual']), null, 0);?>

<tr<?php if ($_smarty_tpl->tpl_vars['_product_is_disabled']->value){?> class="grey"<?php }?>>
    <td class="i-update-icon">
        
        <?php if (($_smarty_tpl->tpl_vars['item_type']->value=='app')&&!empty($_smarty_tpl->tpl_vars['item']->value['icons'][48])){?>
            <img src="<?php echo $_smarty_tpl->tpl_vars['item']->value['icons'][48];?>
" alt="">
        <?php }else{ ?>
            &nbsp;
        <?php }?>

    </td>
    <td class="i-update-name">
        
        <?php if ($_smarty_tpl->tpl_vars['item_type']->value=='plugin'||$_smarty_tpl->tpl_vars['item_type']->value=='theme'||$_smarty_tpl->tpl_vars['item_type']->value=='widget'){?>

            
            <?php if (!empty($_smarty_tpl->tpl_vars['item']->value['icons'])&&false){?>
                <img src="<?php echo $_smarty_tpl->tpl_vars['item']->value['icons'][16];?>
" alt="">
            <?php }else{ ?>
                <i class="icon16 <?php if ($_smarty_tpl->tpl_vars['item_type']->value=='plugin'){?>plugins<?php }elseif($_smarty_tpl->tpl_vars['item_type']->value=='widget'){?>widgets<?php }else{ ?>design<?php }?>"></i>
            <?php }?>

            <?php if ($_smarty_tpl->tpl_vars['item_type']->value=='plugin'){?>

                <?php if (strpos($_smarty_tpl->tpl_vars['item']->value['slug'],'wa-plugins/')===0){?>

                    <?php ob_start();?><?php echo str_replace('wa-plugins/','',htmlspecialchars($_smarty_tpl->tpl_vars['item']->value['slug'], ENT_QUOTES, 'UTF-8', true));?>
<?php $_tmp1=ob_get_clean();?><?php echo sprintf('Плагин «<a href="%s">%s</a>» (%s)',((string)$_smarty_tpl->tpl_vars['wa_app_url']->value)."store/plugin/".$_tmp1."/",htmlspecialchars((($tmp = @$_smarty_tpl->tpl_vars['item']->value['name'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['item_id']->value : $tmp), ENT_QUOTES, 'UTF-8', true),htmlspecialchars($_smarty_tpl->tpl_vars['item_id']->value, ENT_QUOTES, 'UTF-8', true));?>


                <?php }else{ ?>

                    <?php ob_start();?><?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value['app'])===null||$tmp==='' ? '' : $tmp);?>
<?php $_tmp2=ob_get_clean();?><?php ob_start();?><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['item']->value['id'], ENT_QUOTES, 'UTF-8', true);?>
<?php $_tmp3=ob_get_clean();?><?php echo sprintf('Плагин «<a href="%s">%s</a>» (%s)',((string)$_smarty_tpl->tpl_vars['wa_app_url']->value)."store/plugin/".$_tmp2."/".$_tmp3."/",htmlspecialchars((($tmp = @$_smarty_tpl->tpl_vars['item']->value['name'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['item_id']->value : $tmp), ENT_QUOTES, 'UTF-8', true),htmlspecialchars($_smarty_tpl->tpl_vars['item_id']->value, ENT_QUOTES, 'UTF-8', true));?>


                <?php }?>

            <?php }elseif($_smarty_tpl->tpl_vars['item_type']->value=='theme'){?>

                <?php ob_start();?><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['item']->value['id'], ENT_QUOTES, 'UTF-8', true);?>
<?php $_tmp4=ob_get_clean();?><?php echo sprintf('Тема дизайна «<a href="%s">%s</a>» (%s)',((string)$_smarty_tpl->tpl_vars['wa_app_url']->value)."store/theme/".$_tmp4."/",htmlspecialchars((($tmp = @$_smarty_tpl->tpl_vars['item']->value['name'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['item_id']->value : $tmp), ENT_QUOTES, 'UTF-8', true),htmlspecialchars($_smarty_tpl->tpl_vars['item_id']->value, ENT_QUOTES, 'UTF-8', true));?>


            <?php }elseif($_smarty_tpl->tpl_vars['item_type']->value=='widget'){?>

                <?php ob_start();?><?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value['app'])===null||$tmp==='' ? '' : $tmp);?>
<?php $_tmp5=ob_get_clean();?><?php ob_start();?><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['item']->value['id'], ENT_QUOTES, 'UTF-8', true);?>
<?php $_tmp6=ob_get_clean();?><?php echo sprintf('Виджет «<a href="%s">%s</a>» (%s)',((string)$_smarty_tpl->tpl_vars['wa_app_url']->value)."store/widget/".$_tmp5."/".$_tmp6."/",htmlspecialchars((($tmp = @$_smarty_tpl->tpl_vars['item']->value['name'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['item_id']->value : $tmp), ENT_QUOTES, 'UTF-8', true),htmlspecialchars($_smarty_tpl->tpl_vars['item_id']->value, ENT_QUOTES, 'UTF-8', true));?>


            <?php }else{ ?>

                <?php echo htmlspecialchars((($tmp = @$_smarty_tpl->tpl_vars['item']->value['name'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['item_id']->value : $tmp), ENT_QUOTES, 'UTF-8', true);?>


            <?php }?>

        <?php }else{ ?>
            
            <?php if ($_smarty_tpl->tpl_vars['item_type']->value=='systemplugin'){?>
                <strong><?php ob_start();?><?php echo htmlspecialchars((($tmp = @$_smarty_tpl->tpl_vars['item']->value['name'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['item_id']->value : $tmp), ENT_QUOTES, 'UTF-8', true);?>
<?php $_tmp7=ob_get_clean();?><?php echo sprintf('Плагин «<strong>%s</strong>»',$_tmp7);?>
</strong>

            <?php }elseif(($_smarty_tpl->tpl_vars['item']->value['slug']=='installer')){?>
                <strong class="large"><?php echo htmlspecialchars((($tmp = @$_smarty_tpl->tpl_vars['item']->value['name'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['item_id']->value : $tmp), ENT_QUOTES, 'UTF-8', true);?>
</strong>

            <?php }elseif(empty($_smarty_tpl->tpl_vars['item']->value['virtual'])){?>
                <a href="<?php echo $_smarty_tpl->tpl_vars['wa_app_url']->value;?>
store/app/<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['item']->value['id'], ENT_QUOTES, 'UTF-8', true);?>
/"><strong class="large"><?php echo htmlspecialchars((($tmp = @$_smarty_tpl->tpl_vars['item']->value['name'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['item_id']->value : $tmp), ENT_QUOTES, 'UTF-8', true);?>
</strong></a>

            <?php }else{ ?>
                <a href="<?php echo $_smarty_tpl->tpl_vars['wa_app_url']->value;?>
store/?filters[category]=plugins:<?php echo str_replace('wa-plugins/','',htmlspecialchars($_smarty_tpl->tpl_vars['item']->value['slug'], ENT_QUOTES, 'UTF-8', true));?>
"><strong class="large"><?php echo htmlspecialchars((($tmp = @$_smarty_tpl->tpl_vars['item']->value['name'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['item_id']->value : $tmp), ENT_QUOTES, 'UTF-8', true);?>
</strong></a>

            <?php }?>
        <?php }?>
        <?php if (!empty($_smarty_tpl->tpl_vars['item']->value['vendor_name'])&&empty($_smarty_tpl->tpl_vars['item']->value['virtual'])){?>
            <span class="hint"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['item']->value['vendor_name'], ENT_QUOTES, 'UTF-8', true);?>
</span>
        <?php }?>
    </td>

    <td class="i-update-data">
        <?php if (!empty($_smarty_tpl->tpl_vars['item']->value['installed']['version'])){?>
            <?php $_smarty_tpl->tpl_vars['_version'] = new Smarty_variable($_smarty_tpl->tpl_vars['item']->value['installed']['version'], null, 0);?>
            <?php if (substr($_smarty_tpl->tpl_vars['_version']->value,-2)==='.p'){?>
                <?php $_smarty_tpl->tpl_vars['_version'] = new Smarty_variable(substr($_smarty_tpl->tpl_vars['_version']->value,0,-2), null, 0);?>
            <?php }?>
            <span class="<?php if ($_smarty_tpl->tpl_vars['item_type']->value=='app'){?> bold<?php }?>"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_version']->value, ENT_QUOTES, 'UTF-8', true);?>
</span>
        <?php }?>
        <?php if (($_smarty_tpl->tpl_vars['item_type']->value!='theme')&&empty($_smarty_tpl->tpl_vars['item']->value['virtual'])){?>
            <?php if ($_smarty_tpl->tpl_vars['item_type']->value!='widget'&&($_smarty_tpl->tpl_vars['item_type']->value!='plugin'||empty($_smarty_tpl->tpl_vars['app']->value['virtual']))){?>
                <?php if (empty($_smarty_tpl->tpl_vars['item']->value['enabled'])){?>
                    (Выключен)
                <?php }?>
            <?php }?>
            <?php if (!$_smarty_tpl->tpl_vars['item']->value['applicable']){?>
                <i class="icon10 exclamation"></i>
                Системные требования не выполнены:
            <?php }?>
            <?php /*  Call merged included template "../../includes-legacy/requirements.html" */
$_tpl_stack[] = $_smarty_tpl;
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("../../includes-legacy/requirements.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0, '877784003631273d0056691-39271363');
content_631273d0138fc3_10984982($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); /*  End of included template "../../includes-legacy/requirements.html" */?>
        <?php }?>
    </td>

    <td>
        <?php if (empty($_smarty_tpl->tpl_vars['item']->value['virtual'])&&(!in_array($_smarty_tpl->tpl_vars['item_type']->value,array('plugin','widget'))||!empty($_smarty_tpl->tpl_vars['app']->value['enabled'])||!empty($_smarty_tpl->tpl_vars['app']->value['virtual'])||($_smarty_tpl->tpl_vars['item_type']->value=='app'))){?>
        <ul class="menu-h with-icons float-right">
            <?php if (in_array($_smarty_tpl->tpl_vars['item_type']->value,array('plugin','app'))){?>
                <?php if (empty($_smarty_tpl->tpl_vars['app']->value['virtual'])){?>
                    <?php if (empty($_smarty_tpl->tpl_vars['item']->value['enabled'])){?>
                        <?php if ($_smarty_tpl->tpl_vars['item']->value['applicable']){?>
                            <li><a href="<?php echo $_smarty_tpl->tpl_vars['wa_app_url']->value;?>
assets/"
                                   data-url="?module=<?php echo $_smarty_tpl->tpl_vars['item_type']->value;?>
s&action=enable"
                                   data-data="app_id=<?php echo $_smarty_tpl->tpl_vars['app']->value['id'];?>
<?php if ($_smarty_tpl->tpl_vars['item_type']->value=='plugin'){?>&plugin_id=<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value['id'])===null||$tmp==='' ? 'wtf' : $tmp);?>
<?php }?>"
                                   style="color: #03c; display: block" class="js-switch-item"><i class="icon16 play"></i>Включить</a></li>
                        <?php }else{ ?>
                            
                        <?php }?>
                    <?php }elseif(empty($_smarty_tpl->tpl_vars['item']->value['system'])){?>
                        <li><a href="<?php echo $_smarty_tpl->tpl_vars['wa_app_url']->value;?>
assets/"
                               data-url="?module=<?php echo $_smarty_tpl->tpl_vars['item_type']->value;?>
s&action=disable"
                               data-data="app_id=<?php echo $_smarty_tpl->tpl_vars['app']->value['id'];?>
<?php if ($_smarty_tpl->tpl_vars['item_type']->value=='plugin'){?>&plugin_id=<?php echo (($tmp = @$_smarty_tpl->tpl_vars['item']->value['id'])===null||$tmp==='' ? 'wtf' : $tmp);?>
<?php }?>"
                               class="gray js-switch-item" style="display: block"><i class="icon16 pause"></i>Выключить</a></li>
                    <?php }?>
                <?php }?>

            <?php }?>

            <?php if (empty($_smarty_tpl->tpl_vars['item']->value['system'])&&(!in_array($_smarty_tpl->tpl_vars['item_type']->value,array('app','plugin'))||($_smarty_tpl->tpl_vars['item_type']->value=='plugin'&&!empty($_smarty_tpl->tpl_vars['app']->value['virtual']))||!empty($_smarty_tpl->tpl_vars['item']->value['enabled']))){?>
            <li><a href="<?php echo $_smarty_tpl->tpl_vars['wa_app_url']->value;?>
assets/" class="js-remove-item" style="color: #03c; display: block" data-confirm="Это полностью удалит код и данные продукта без возможности восстановления. Вы уверены?"><i class="icon16 delete"></i>Удалить</a>
                <?php if ($_smarty_tpl->tpl_vars['item_type']->value=='app'){?><?php $_smarty_tpl->tpl_vars['field'] = new Smarty_variable('app_id', null, 0);?><?php }else{ ?><?php $_smarty_tpl->tpl_vars['field'] = new Smarty_variable('extras_id', null, 0);?><?php }?>
                <form action="?module=<?php echo $_smarty_tpl->tpl_vars['item_type']->value;?>
s&action=remove" method="post">
                    <?php echo $_smarty_tpl->tpl_vars['wa']->value->csrf();?>

                    <input type="hidden" name="<?php echo $_smarty_tpl->tpl_vars['field']->value;?>
[<?php echo $_smarty_tpl->tpl_vars['item']->value['slug'];?>
]" value="<?php echo htmlspecialchars((($tmp = @$_smarty_tpl->tpl_vars['item']->value['installed']['vendor'])===null||$tmp==='' ? 'webasyst' : $tmp), ENT_QUOTES, 'UTF-8', true);?>
"/>
                </form>
                <?php }?>
            </li>
            <?php }?>
        </ul>

    </td>
</tr>
<?php }} ?><?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 00:21:20
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-apps\installer\templates\includes-legacy\requirements.html" */ ?>
<?php if ($_valid && !is_callable('content_631273d0138fc3_10984982')) {function content_631273d0138fc3_10984982($_smarty_tpl) {?>
<?php if (!empty($_smarty_tpl->tpl_vars['item']->value['requirements'])){?>
    <?php $_smarty_tpl->tpl_vars['_warning_meets'] = new Smarty_variable(false, null, 0);?>

    <?php $_smarty_tpl->_capture_stack[0][] = array('default', '_warning', null); ob_start(); ?>
        <?php if (!isset($_smarty_tpl->tpl_vars['class']->value)){?><?php $_smarty_tpl->tpl_vars['class'] = new Smarty_variable("small red", null, 0);?><?php }?>
        <?php if (!isset($_smarty_tpl->tpl_vars['icon']->value)){?><?php $_smarty_tpl->tpl_vars['icon'] = new Smarty_variable(false, null, 0);?><?php }?>
        <ul class="menu-v">
            <?php  $_smarty_tpl->tpl_vars['requirement'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['requirement']->_loop = false;
 $_smarty_tpl->tpl_vars['subject'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['item']->value['requirements']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['requirement']->key => $_smarty_tpl->tpl_vars['requirement']->value){
$_smarty_tpl->tpl_vars['requirement']->_loop = true;
 $_smarty_tpl->tpl_vars['subject']->value = $_smarty_tpl->tpl_vars['requirement']->key;
?>
                <?php if (($_smarty_tpl->tpl_vars['requirement']->value['warning']&&!$_smarty_tpl->tpl_vars['requirement']->value['passed'])){?>
                    <?php $_smarty_tpl->tpl_vars['_warning_meets'] = new Smarty_variable(true, null, 0);?>
                    <li>
                        <span class="<?php if (strstr($_smarty_tpl->tpl_vars['subject']->value,'app.')==$_smarty_tpl->tpl_vars['subject']->value){?>hint<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['class']->value;?>
<?php }?>" title="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['requirement']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
">
                            <?php if ($_smarty_tpl->tpl_vars['icon']->value){?><i class="icon10 no<?php if ($_smarty_tpl->tpl_vars['requirement']->value['passed']){?>-bw<?php }?>"></i><?php }?>
                            <?php echo htmlspecialchars((($tmp = @$_smarty_tpl->tpl_vars['requirement']->value['warning'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['requirement']->value['note'] : $tmp), ENT_QUOTES, 'UTF-8', true);?>

                        </span>
                    </li>
                <?php }?>
            <?php } ?>
        </ul>
    <?php list($_capture_buffer, $_capture_assign, $_capture_append) = array_pop($_smarty_tpl->_capture_stack[0]);
if (!empty($_capture_buffer)) {
 if (isset($_capture_assign)) $_smarty_tpl->assign($_capture_assign, ob_get_contents());
 if (isset( $_capture_append)) $_smarty_tpl->append( $_capture_append, ob_get_contents());
 Smarty::$_smarty_vars['capture'][$_capture_buffer]=ob_get_clean();
} else $_smarty_tpl->capture_error();?>
    <?php if ($_smarty_tpl->tpl_vars['_warning_meets']->value&&$_smarty_tpl->tpl_vars['_warning']->value){?>
        <?php echo $_smarty_tpl->tpl_vars['_warning']->value;?>

    <?php }?>
<?php }?>
<?php }} ?>