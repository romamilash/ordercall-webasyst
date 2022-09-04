<?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 00:21:25
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-apps\shop\templates\actions\plugins\PluginsSettings.html" */ ?>
<?php /*%%SmartyHeaderCode:160333578631273d55a6fb7-96779244%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f23cf4efa8cc4b62c1ac8f2cbf3a1744bd75c62c' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-apps\\shop\\templates\\actions\\plugins\\PluginsSettings.html',
      1 => 1630500629,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '160333578631273d55a6fb7-96779244',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'plugin_id' => 0,
    'settings_controls' => 0,
    'plugin_info' => 0,
    'wa' => 0,
    'control' => 0,
    'need_show_review_widget' => 0,
    '_need_show_review_widget' => 0,
    'app_id' => 0,
    'plugins_count' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_631273d5618455_72413231',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_631273d5618455_72413231')) {function content_631273d5618455_72413231($_smarty_tpl) {?><?php if (isset($_smarty_tpl->tpl_vars['plugin_id']->value)){?>
    <?php if (!empty($_smarty_tpl->tpl_vars['settings_controls']->value)){?>
        <?php if (!empty($_smarty_tpl->tpl_vars['plugin_info']->value['printform'])){?>
            <div class="block double-padded align-center gray">
                <p>
                    <strong><?php echo sprintf('Плагин «%s» установлен и работает.',(($tmp = @$_smarty_tpl->tpl_vars['plugin_info']->value['name'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['plugin_id']->value : $tmp));?>
</strong>
                    <br>
                    <br>
                    <?php echo sprintf('Настройте внешний вид формы в разделе «<a href="%s">Настройки &rarr; Печатные формы</a>»',(('?action=settings#/printform/').($_smarty_tpl->tpl_vars['plugin_id']->value)).('/'));?>

                </p>
            </div>
        <?php }else{ ?>
            <h1><?php echo $_smarty_tpl->tpl_vars['plugin_info']->value['name'];?>
</h1>
            <div class="fields form">
                <form action="?module=plugins&id=<?php echo $_smarty_tpl->tpl_vars['plugin_id']->value;?>
&action=save" method="post" id="plugins-settings-form" enctype="multipart/form-data" target="plugins-settings-iframe">
                    <?php echo $_smarty_tpl->tpl_vars['wa']->value->csrf();?>

                    <?php  $_smarty_tpl->tpl_vars['control'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['control']->_loop = false;
 $_smarty_tpl->tpl_vars['name'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['settings_controls']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['control']->key => $_smarty_tpl->tpl_vars['control']->value){
$_smarty_tpl->tpl_vars['control']->_loop = true;
 $_smarty_tpl->tpl_vars['name']->value = $_smarty_tpl->tpl_vars['control']->key;
?>
                    <div class="field">
                        <?php echo $_smarty_tpl->tpl_vars['control']->value;?>

                    </div>
                    <?php } ?>

                    <div class="field">
                        <div class="value submit">
                            <input type="submit" class="button green" value="Сохранить">
                            <span id="plugins-settings-form-status" style="display:none"><!-- message placeholder --></span>
                        </div>
                    </div>

                </form>
                <iframe style="display:none" name="plugins-settings-iframe" id="plugins-settings-iframe"></iframe>
            </div>
        <?php }?>
    <?php }else{ ?>
        <div class="block double-padded align-center gray">
            <p>
                <strong><?php echo sprintf('Плагин «%s» установлен и работает.',(($tmp = @$_smarty_tpl->tpl_vars['plugin_info']->value['name'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['plugin_id']->value : $tmp));?>
</strong>
                <br>
                <br>
                <?php if (!empty($_smarty_tpl->tpl_vars['plugin_info']->value['importexport'])){?>
                    <?php echo sprintf('Для использования этого плагина перейдите в раздел «<a href="%s">Импорт/экспорт &rarr; %s</a>».',(('?action=importexport#/').($_smarty_tpl->tpl_vars['plugin_id']->value)).('/'),(($tmp = @$_smarty_tpl->tpl_vars['plugin_info']->value['name'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['plugin_id']->value : $tmp));?>

                <?php }else{ ?>
                    Для этого плагина нет доступных настроек.
                <?php }?>
            </p>

        </div>
    <?php }?>

    <?php $_smarty_tpl->tpl_vars['_need_show_review_widget'] = new Smarty_variable((($tmp = @$_smarty_tpl->tpl_vars['need_show_review_widget']->value)===null||$tmp==='' ? false : $tmp), null, 0);?>
    <?php if ($_smarty_tpl->tpl_vars['_need_show_review_widget']->value){?>
        <div>
            <?php echo $_smarty_tpl->tpl_vars['wa']->value->installer->reviewWidget("plugin/".((string)$_smarty_tpl->tpl_vars['app_id']->value)."/".((string)$_smarty_tpl->tpl_vars['plugin_id']->value),array('is_inline'=>true));?>

        </div>
    <?php }?>

<?php }elseif(($_smarty_tpl->tpl_vars['plugins_count']->value>0)){?>
    Неизвестный плагин
<?php }?>

<div class="clear-left"></div>
<?php }} ?>