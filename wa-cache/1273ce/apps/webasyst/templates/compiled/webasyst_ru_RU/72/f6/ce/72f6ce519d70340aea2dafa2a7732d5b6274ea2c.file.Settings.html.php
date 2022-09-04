<?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 18:55:53
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-system\webasyst\templates\actions-legacy\settings\Settings.html" */ ?>
<?php /*%%SmartyHeaderCode:4595547016313790940e478-79428731%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '72f6ce519d70340aea2dafa2a7732d5b6274ea2c' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system\\webasyst\\templates\\actions-legacy\\settings\\Settings.html',
      1 => 1648029634,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4595547016313790940e478-79428731',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'wa' => 0,
    'settings' => 0,
    'locales' => 0,
    '_locale' => 0,
    '_locale_name' => 0,
    'locale_adapter' => 0,
    'locale_adapters_list' => 0,
    '_adapter' => 0,
    '_name' => 0,
    'config' => 0,
    'framework_version' => 0,
    'php_version' => 0,
    'is_good_php_version' => 0,
    'image_adapters_list' => 0,
    'image_adapter' => 0,
    '_params' => 0,
    'wa_app_url' => 0,
    '_title' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_63137909493191_53046831',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_63137909493191_53046831')) {function content_63137909493191_53046831($_smarty_tpl) {?><?php $_smarty_tpl->tpl_vars['_title'] = new Smarty_variable("Общие настройки — ".((string)$_smarty_tpl->tpl_vars['wa']->value->accountName(false)), null, 0);?>
<div class="s-general-settings-page blank block double-padded" id="s-general-settings-page">
    <h1 class="s-page-header">Общие настройки</h1>
    <div class="s-general-settings-fields-block">
        <form action="?module=settingsGeneralSave">
            <div class="field-group">
                
                <div class="field">
                    <div class="name">
                        <label for="config-name">Название компании</label>
                    </div>
                    <div class="value">
                        <input type="text" class="large" name="name" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['settings']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
" id="config-name" autocomplete="off">
                        <br>
                        <span class="hint">Может отображаться на страницах сайтов и в email-уведомлениях.</span>
                        <br>
                        <span class="hint s-error js-error-place"></span>
                    </div>
                </div>

                
                <div class="field">
                    <div class="name">
                        <label for="config-url">Адрес сайта</label>
                    </div>
                    <div class="value">
                        <input type="text" name="url" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['settings']->value['url'], ENT_QUOTES, 'UTF-8', true);?>
" id="config-url" autocomplete="off">
                        <br>
                        <span class="hint">Может использоваться на страницах сайтов и в email-уведомлениях.</span>
                        <br>
                        <span class="hint s-error js-error-place"></span>
                    </div>
                </div>

                
                <?php if ($_smarty_tpl->tpl_vars['locales']->value){?>
                    <div class="field">
                        <div class="name">
                            <label for="config-locale">Язык доступных для установки программных продуктов</label>
                        </div>
                        <div class="value no-shift">
                            <select name="locale" id="config-locale">
                                <?php  $_smarty_tpl->tpl_vars['_locale_name'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_locale_name']->_loop = false;
 $_smarty_tpl->tpl_vars['_locale'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['locales']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_locale_name']->key => $_smarty_tpl->tpl_vars['_locale_name']->value){
$_smarty_tpl->tpl_vars['_locale_name']->_loop = true;
 $_smarty_tpl->tpl_vars['_locale']->value = $_smarty_tpl->tpl_vars['_locale_name']->key;
?>
                                    <option value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_locale']->value, ENT_QUOTES, 'UTF-8', true);?>
"<?php if ($_smarty_tpl->tpl_vars['settings']->value['locale']==$_smarty_tpl->tpl_vars['_locale']->value){?> selected="selected"<?php }?>><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_locale_name']->value, ENT_QUOTES, 'UTF-8', true);?>
</option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                <?php }?>

                
                <?php if ($_smarty_tpl->tpl_vars['locale_adapter']->value!==false){?>
                    <div class="field">
                        <div class="name">Механизм локализации</div>
                        <div class="value no-shift">
                            <select name="locale_adapter">
                                <?php  $_smarty_tpl->tpl_vars['_name'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_name']->_loop = false;
 $_smarty_tpl->tpl_vars['_adapter'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['locale_adapters_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_name']->key => $_smarty_tpl->tpl_vars['_name']->value){
$_smarty_tpl->tpl_vars['_name']->_loop = true;
 $_smarty_tpl->tpl_vars['_adapter']->value = $_smarty_tpl->tpl_vars['_name']->key;
?>
                                    <option<?php if ($_smarty_tpl->tpl_vars['_adapter']->value==$_smarty_tpl->tpl_vars['locale_adapter']->value){?> selected<?php }?> value="<?php echo $_smarty_tpl->tpl_vars['_adapter']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['_name']->value;?>
</option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                <?php }?>
                
                <div class="field">
                    <div class="name">Очистка кеша</div>
                    <div class="value">
                        <input type="button" class="js-clear-cache button gray" value="Очистка кеша">
                        <i class="icon16 loading js-cache-loading" style="display: none;"></i>
                    </div>
                    <div class="value hint">
                        Кеш — это временные данные, которые помогают снизить нагрузку на сервер. Очистите кеш, чтобы обновить данные, если вы обнаружили неполадку.
                        <br><br>
                    </div>
                </div>

                
                <div class="field">
                    <div class="name">Для разработчика</div>
                    <div class="value">
                        <input type="checkbox" name="config[debug]" value="1"<?php if (isset($_smarty_tpl->tpl_vars['config']->value['debug'])&&$_smarty_tpl->tpl_vars['config']->value['debug']){?> checked="checked"<?php }?> id="config-debug-checkbox">
                        <label for="config-debug-checkbox">
                            <span>Режим отладки (debug mode)</span>
                            <div class="hint">Режим отладки отключает кеширование и включает подробный вывод сообщений об ошибках. Рекомендуется при разработке приложений.</div>
                        </label>
                    </div>
                </div>

            </div>
            <div class="field-group">

                
                <div class="field">
                    <div class="name for-checkbox">Режим интерфейса по умолчанию</div>
                    <div class="value">
                        <label>
                            <span class="wa-radio">
                                <input type="radio"<?php if (isset($_smarty_tpl->tpl_vars['config']->value['ui'])&&$_smarty_tpl->tpl_vars['config']->value['ui']==='2.0'){?> checked<?php }?> name="config[ui]" value="2.0">
                                <span></span>
                            </span>
                            2.0 (новый)
                        </label>
                    </div>
                    <div class="value">
                        <label class="custom-mr-8">
                            <span class="wa-radio">
                                <input type="radio"<?php if (!isset($_smarty_tpl->tpl_vars['config']->value['ui'])||$_smarty_tpl->tpl_vars['config']->value['ui']==='1.3'){?> checked<?php }?> name="config[ui]" value="1.3">
                                <span></span>
                            </span>
                            1.3 (старый)
                        </label>
                    </div>
                </div>

            </div>
            <div class="field-group">

                
                <div class="field">
                    <div class="name">
                        Версия Webasyst
                    </div>
                    <div class="value no-shift"><?php echo $_smarty_tpl->tpl_vars['framework_version']->value;?>
</div>
                </div>

                
                <div class="field">
                    <div class="name">
                        Версия PHP
                    </div>
                    <div class="value no-shift"><?php echo $_smarty_tpl->tpl_vars['php_version']->value;?>
</div>
                    <?php if (!$_smarty_tpl->tpl_vars['is_good_php_version']->value){?>
                        <div class="value no-shift bold">Webasyst переходит на версии PHP 5.6 и выше.</div>
                    <?php }?>
                </div>

                
                <div class="field">
                    <div class="name">Механизм обработки изображений</div>
                    <div class="value no-shift">
                        <select name="config[image_adapter]">
                            <?php  $_smarty_tpl->tpl_vars['_params'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_params']->_loop = false;
 $_smarty_tpl->tpl_vars['_adapter'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['image_adapters_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_params']->key => $_smarty_tpl->tpl_vars['_params']->value){
$_smarty_tpl->tpl_vars['_params']->_loop = true;
 $_smarty_tpl->tpl_vars['_adapter']->value = $_smarty_tpl->tpl_vars['_params']->key;
?>
                                <option <?php if ($_smarty_tpl->tpl_vars['_adapter']->value==$_smarty_tpl->tpl_vars['image_adapter']->value){?>selected<?php }?>
                                        <?php if (!$_smarty_tpl->tpl_vars['_params']->value['enabled']){?>disabled<?php }?> value="<?php echo $_smarty_tpl->tpl_vars['_adapter']->value;?>
">
                                    <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_params']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
 <?php if (!$_smarty_tpl->tpl_vars['_params']->value['enabled']){?>(не установлен)<?php }?>
                                </option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
            </div>

            <div class="s-form-buttons">
                <div class="s-footer-actions js-footer-actions">
                    <input class="button green js-submit-button" type="submit" name="" value="Сохранить">
                    <span class="s-hidden">
                        <span style="margin: 0 4px;">или</span>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['wa_app_url']->value;?>
webasyst/settings" class="js-cancel">отмена</a>
                    </span>
                    <i class="icon16 loading s-loading" style="display: none;"></i>
                </div>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
    (function($) {
        new WASettingsGeneral({
            $wrapper: $('#s-general-settings-page')
        });
        $.wa.setTitle(<?php echo json_encode($_smarty_tpl->tpl_vars['_title']->value);?>
);
    })(jQuery);
</script>
<?php }} ?>