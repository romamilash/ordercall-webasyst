<?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 18:55:45
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-system\webasyst\templates\actions\backend\BackendHeader.html" */ ?>
<?php /*%%SmartyHeaderCode:42464165363137901950390-65230364%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6b5cb925fa5620880b36926f3425d45bdf110275' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system\\webasyst\\templates\\actions\\backend\\BackendHeader.html',
      1 => 1648029634,
      2 => 'file',
    ),
    '668a8c5c2d07b0c7100acb3a64cffda9a386ce60' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system\\webasyst\\templates\\actions\\backend\\BackendLogo.inc.html',
      1 => 1617787741,
      2 => 'file',
    ),
    'ee1990fdcd7d493c663d97b190cb9b8bc03ed7dd' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system\\webasyst\\templates\\actions\\dashboard\\DashboardAnnouncement.html',
      1 => 1648029634,
      2 => 'file',
    ),
    '6c5fd29aca1f262ad2a85335bd09df368763abcf' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system\\webasyst\\templates\\actions\\backend\\BackendHeader20.html',
      1 => 1649156361,
      2 => 'file',
    ),
    '0368dd86d7807b4e82de83bce851c767ade0cf84' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system\\webasyst\\templates\\actions\\backend\\BackendHeader13.html',
      1 => 1637225471,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '42464165363137901950390-65230364',
  'function' => 
  array (
    '_renderHeaderItem' => 
    array (
      'parameter' => 
      array (
        '_id' => '',
        '_info' => 
        array (
        ),
      ),
      'compiled' => '',
    ),
  ),
  'variables' => 
  array (
    'wa' => 0,
    'wa_url' => 0,
    'backend_url' => 0,
    'app_info' => 0,
    '_force_set_wa_backend_ui_version' => 0,
    'root_url' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_63137901bffc34_20287829',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_63137901bffc34_20287829')) {function content_63137901bffc34_20287829($_smarty_tpl) {?><div id="wa-nav">
    <?php if ($_smarty_tpl->tpl_vars['wa']->value->whichUI()=='2.0'){?>
        <script>
            if (typeof wa_url === "undefined") {
                wa_url = '<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
';
            }
            const backend_url = "<?php echo $_smarty_tpl->tpl_vars['backend_url']->value;?>
";
        </script>
        <?php /*  Call merged included template "./BackendHeader20.html" */
$_tpl_stack[] = $_smarty_tpl;
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("./BackendHeader20.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0, '42464165363137901950390-65230364');
content_63137901983022_86033053($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); /*  End of included template "./BackendHeader20.html" */?>
    <?php }else{ ?>
        <?php /*  Call merged included template "./BackendHeader13.html" */
$_tpl_stack[] = $_smarty_tpl;
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("./BackendHeader13.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0, '42464165363137901950390-65230364');
content_63137901b38882_70793785($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); /*  End of included template "./BackendHeader13.html" */?>
    <?php }?>

    

    

    <script>
        function _setCookie(cname, cvalue, exdays) {
            var d = new Date();
            d.setTime(d.getTime() + (exdays*24*60*60*1000));
            var expires = "expires="+d.toUTCString();
            document.cookie = cname + "=" + cvalue + "; " + expires + "; path=/";
        }
    </script>

    <?php $_smarty_tpl->tpl_vars['_force_set_wa_backend_ui_version'] = new Smarty_variable(waSystemConfig::whichBackendUI(), null, 0);?>

    <?php if (ifset($_smarty_tpl->tpl_vars['app_info']->value,'ui','1.3')==='1.3,2.0'){?>

        <?php if ($_smarty_tpl->tpl_vars['wa']->value->debug()){?>

            
            <style>
                .wa-general-settings-place {
                    position: fixed;
                    right: 0;
                    bottom: 20px;
                    z-index: 9999;

                    pointer-events: none;
                    font-size: 16px;
                }

                .wa-general-settings-place__toggler {
                    position: absolute;
                    top: 0;
                    left: 0;
                    bottom: 0;

                    display: flex;
                    align-items: center;
                    justify-content: center;

                    width: 55px;
                    color: #1a9afe;
                    font-weight: bold;
                    cursor: pointer;
                }
                .wa-general-settings-place__toggler:hover {
                    text-decoration: underline;
                }

                .wa-general-settings-place__checkbox {
                    position: absolute;
                    left: -99999px;
                }

                .wa-general-settings-place__inner {
                    pointer-events: auto;
                    background-color: #fea;
                    border: 2px solid #eda;
                    border-radius: 4px;
                    padding: 12px;
                    padding-left: 55px;
                    box-shadow: 0 5px 20px -10px rgba(0,0,0,0.2), 0 3px 10px -5px rgba(0,0,0,0.1);
                    transform: translate(calc(100% - 55px));
                    transition: .3s transform;
                }

                .wa-general-settings-place__checkbox:checked + .wa-general-settings-place__inner {
                    transform: translate(-20px);
                }
            </style>

            <div class="wa-general-settings-place">
                <input type="checkbox" class="wa-general-settings-place__checkbox" id="wa-general-settings-place">

                <div class="wa-general-settings-place__inner">
                    <label class="wa-general-settings-place__toggler" for="wa-general-settings-place">
                        <?php if ($_smarty_tpl->tpl_vars['wa']->value->whichUI()=='1.3'){?>
                        1.3
                        <?php }else{ ?>
                        2.0
                        <?php }?>
                    </label>

                    <span class="desktop-only">Режим интерфейса (debug):</span>

                    <select onChange="_setCookie('force_set_wa_backend_ui_version', this.options[this.selectedIndex].value, 180); window.location.reload();" style="font-size: 16px;">
                        <option value="1.3"<?php if ($_smarty_tpl->tpl_vars['_force_set_wa_backend_ui_version']->value=='1.3'){?> selected<?php }?>>1.3</option>
                        <option value="2.0"<?php if ($_smarty_tpl->tpl_vars['_force_set_wa_backend_ui_version']->value=='2.0'){?> selected<?php }?>>2.0</option>
                    </select>
                    <?php if ($_smarty_tpl->tpl_vars['_force_set_wa_backend_ui_version']->value=='2.0'){?>
                        <span style="display: inline-block; border-radius: 50%; border: 1px solid rgba(0,0,0,0.2); width: 18px; height: 18px; background: white; box-shadow: 0 3px 5px -2px rgba(0,0,0,0.2); position: relative; top: 3px; margin: 0 1px 0 8px; cursor: pointer" title="Светлый режим" data-wa-theme-mode="light"></span>
                        <span style="display: inline-block; border-radius: 50%; border: 1px solid rgba(0,0,0,0.2); width: 18px; height: 18px; background: #333; box-shadow: 0 3px 6px -2px rgba(0,0,0,0.42); position: relative; top: 3px; margin: 0 2px; cursor: pointer" title="Темный режим" data-wa-theme-mode="dark"></span>
                        <span style="display: inline-block; border-radius: 50%; overflow: hidden; border: 1px solid rgba(0,0,0,0.2); width: 18px; height: 18px; position: relative; top: 3px; margin: 0 2px; cursor: pointer" title="Авто (зависит от настроек устройства)" data-wa-theme-mode="auto"><i style="background: linear-gradient(-90deg, rgba(51,51,51,1) 40%, rgba(255,255,255,1) 60%); box-shadow: 0 3px 6px -2px rgba(0,0,0,0.42); display: block; width: 18px; height: 18px;"></i></span>
                    <?php }?>
                </div>
            </div>

        <?php }else{ ?>

            

            <?php if ($_smarty_tpl->tpl_vars['wa']->value->whichUI()=='1.3'&&$_smarty_tpl->tpl_vars['app_info']->value['id']!='webasyst'){?>

                <style>
                    @-webkit-keyframes wa2uiAlertBottom {
                        from { opacity: 0; -webkit-transform: translate3d(0, 10%, 0); transform: translate3d(0, 10%, 0); }
                        to { opacity: 1; -webkit-transform: translate3d(0, 0, 0); transform: translate3d(0, 0, 0); }
                    }
                    @keyframes wa2uiAlertBottom {
                        from { opacity: 0; -webkit-transform: translate3d(0, 10%, 0); transform: translate3d(0, 10%, 0); }
                        to { opacity: 1; -webkit-transform: translate3d(0, 0, 0); transform: translate3d(0, 0, 0); }
                    }

                    .popup-notification-new {
                        position: fixed;
                        right: 20px;
                        bottom: 20px;
                        z-index: 9999;

                        max-width: 500px;
                        background-image: linear-gradient(135deg, #9fff77 0%, #ecf60c 80%);
                        border-radius: 4px;
                        padding: 25px;
                        box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.05), 0 0.5rem 0.5rem -0.5rem rgba(0, 0, 0, 0.13);
                        -webkit-animation: 300ms wa2uiAlertBottom;
                        animation: 300ms wa2uiAlertBottom;
                    }

                    .popup-notification-new__close {
                        position: relative;
                        top: -4px;

                        float: right;

                        color: rgba(0,0,0,0.5);
                        font-size: 28px;
                        padding: 0px;
                    }

                    .popup-notification-new__title {
                        font-size: 22px;
                        margin-bottom: 12px;
                    }

                    .popup-notification-new__title-img {
                        position: relative;
                        top: 3px;

                        width: 24px;
                        height: 24px;
                    }

                    .popup-notification-new__title-color {
                        opacity: .42;
                    }

                    .popup-notification-new__text {
                        font-size: 13px;
                    }

                    .popup-notification-new__button {
                        position: relative;
                        top: 0;

                        display: inline-block;

                        color: #fff;
                        font-size: 16px;
                        font-weight: 500;
                        line-height: 1;
                        white-space: nowrap;

                        background: #09f;
                        border-radius: 4px;
                        border: none;
                        outline: 0 none;
                        padding: 10px 12px;
                        margin: 0 2px 0 0;

                        box-shadow: 0 0.25em 0.75em -0.25em rgba(0, 0, 0, 0.2);
                        transition: 0.1s;
                        cursor: pointer;
                    }

                    .popup-notification-new__icon {
                        position: relative;
                        top: 11px;
                        left: 2px;
                    }
                </style>

                <div class="popup-notification-new js-popup-notification-new"<?php if ($_smarty_tpl->tpl_vars['wa']->value->cookie('force_hide_wa2ui_teaser')&&$_smarty_tpl->tpl_vars['app_info']->value['id']!='ui'){?> style="display: none;"<?php }?>>
                    <a href="#" class="popup-notification-new__close js-popup-notification-new-close">&times;</a>
                    <h3 class="popup-notification-new__title">
                        <?php if ($_smarty_tpl->tpl_vars['app_info']->value['id']!='webasyst'){?><img src="<?php echo $_smarty_tpl->tpl_vars['root_url']->value;?>
<?php echo $_smarty_tpl->tpl_vars['app_info']->value['icon'][48];?>
" class="popup-notification-new__title-img"><?php }?>
                        Новый интерфейс Webasyst 2 <span class="popup-notification-new__title-color">(бета)</span>
                    </h3>
                    <p class="popup-notification-new__text">Это приложение поддерживает новый интерфейс Webasyst 2 (бета)! Включите режим нового интерфейса и посмотрите, как классно приложение выглядит в новых стилях. И не волнуйтесь — вы всегда сможете вернуться обратно в старый режим.</p>
                    <button class="popup-notification-new__button" onClick="_setCookie('force_set_wa_backend_ui_version', '2.0', 180); window.location.reload();">Включить новый интерфейс</button>
                    или
                    <a href="http://2.webasyst.ru" target="_blank">подробнее о Webasyst 2 <i class="icon10 new-window" class="popup-notification-new__icon"></i></a>
                </div>

                <script>
                  ( function($) {
                    $('.js-popup-notification-new-close').click(function(e) {
                      e.preventDefault()
                      _setCookie('force_hide_wa2ui_teaser', 1, 180);
                      $(this).parent('.js-popup-notification-new').hide();
                    })
                  })(jQuery);
                </script>

            <?php }?>

        <?php }?>


    <?php }elseif(ifset($_smarty_tpl->tpl_vars['app_info']->value,'ui','1.3')==='1.3'&&!$_smarty_tpl->tpl_vars['wa']->value->debug()){?>

        <?php if ($_smarty_tpl->tpl_vars['_force_set_wa_backend_ui_version']->value=='2.0'){?>

            <div style="position: fixed; z-index: 9999; bottom: 20px; right: 20px; border-radius: 4px; background: #eee; padding: 25px; box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.05), 0 0.5rem 0.5rem -0.5rem rgba(0, 0, 0, 0.13); max-width: 500px;<?php if ($_smarty_tpl->tpl_vars['wa']->value->cookie('force_hide_wa2ui_teaser')&&$_smarty_tpl->tpl_vars['app_info']->value['id']!='ui'){?> display: none;<?php }?>">
                <a href="#" onClick="_setCookie('force_hide_wa2ui_teaser', 1, 180); $(this).parent().hide();
    " style="padding: 6px; float: right; font-size: 24px; color: rgba(0,0,0,0.5); position: relative; top: -10px; right: -6px;">&times;</a>
                <h3 style="font-size: 20px; margin-bottom: 12px; color: #777; margin-top: -7px;">
                    <?php if ($_smarty_tpl->tpl_vars['app_info']->value['id']!='webasyst'){?><img src="<?php echo $_smarty_tpl->tpl_vars['root_url']->value;?>
<?php echo $_smarty_tpl->tpl_vars['app_info']->value['icon'][48];?>
" style="width: 24px; height: 24px; position: relative; top: 4px;"><?php }?>
                    Новый интерфейс пока не поддерживается.
                </h3>
                <p style="font-size: 13px; margin-bottom: 0;">Вы включили режим нового интерфейса Webasyst 2, но это приложение его пока не поддерживает. Пожалуйста, свяжитесь с разработчиком приложения и узнайте, когда новый интерфейс станет доступен.</p>
            </div>

        <?php }?>

    <?php }?>

    

</div>
<?php if ($_smarty_tpl->tpl_vars['wa']->value->whichUI()=='2.0'){?>
<div class="wa-header-background dialog-background js-header-background"></div>
<?php }?>
<?php }} ?><?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 18:55:45
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-system\webasyst\templates\actions\backend\BackendHeader20.html" */ ?>
<?php if ($_valid && !is_callable('content_63137901983022_86033053')) {function content_63137901983022_86033053($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_truncate')) include 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system\\vendors\\smarty3\\plugins\\modifier.truncate.php';
if (!is_callable('smarty_modifier_regex_replace')) include 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system\\vendors\\smarty3\\plugins\\modifier.regex_replace.php';
?>
<?php if (!function_exists('smarty_template_function__renderHeaderItem')) {
    function smarty_template_function__renderHeaderItem($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->smarty->template_functions['_renderHeaderItem']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?><?php if (!empty($_smarty_tpl->tpl_vars['_info']->value['app_id'])&&!empty($_smarty_tpl->tpl_vars['_info']->value['link'])){?><?php $_smarty_tpl->tpl_vars['_item_url'] = new Smarty_variable(((string)$_smarty_tpl->tpl_vars['backend_url']->value).((string)$_smarty_tpl->tpl_vars['_info']->value['app_id'])."/".((string)$_smarty_tpl->tpl_vars['_info']->value['link'])."/", null, 0);?><?php }else{ ?><?php $_smarty_tpl->tpl_vars['_item_url'] = new Smarty_variable(((string)$_smarty_tpl->tpl_vars['backend_url']->value).((string)$_smarty_tpl->tpl_vars['_id']->value)."/", null, 0);?><?php }?><?php if (!empty($_smarty_tpl->tpl_vars['_info']->value['version'])){?><?php $_smarty_tpl->tpl_vars['_version'] = new Smarty_variable("?v=".((string)htmlspecialchars($_smarty_tpl->tpl_vars['_info']->value['version'], ENT_QUOTES, 'UTF-8', true)), null, 0);?><?php }else{ ?><?php $_smarty_tpl->tpl_vars['_version'] = new Smarty_variable(null, null, 0);?><?php }?><li id="wa-app-<?php echo str_replace('.','-',$_smarty_tpl->tpl_vars['_id']->value);?>
" data-app="<?php echo $_smarty_tpl->tpl_vars['_id']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['_id']->value==$_smarty_tpl->tpl_vars['current_app']->value||stristr($_smarty_tpl->tpl_vars['request_uri']->value,$_smarty_tpl->tpl_vars['_item_url']->value)!==false){?> class="selected"<?php }?>><?php $_smarty_tpl->tpl_vars['_count'] = new Smarty_variable(null, null, 0);?><?php if ($_smarty_tpl->tpl_vars['counts']->value&&isset($_smarty_tpl->tpl_vars['counts']->value[$_smarty_tpl->tpl_vars['_id']->value])){?><?php if (is_array($_smarty_tpl->tpl_vars['counts']->value[$_smarty_tpl->tpl_vars['_id']->value])){?><?php $_smarty_tpl->tpl_vars['_item_url'] = new Smarty_variable($_smarty_tpl->tpl_vars['counts']->value[$_smarty_tpl->tpl_vars['_id']->value]['url'], null, 0);?><?php $_smarty_tpl->tpl_vars['_count'] = new Smarty_variable($_smarty_tpl->tpl_vars['counts']->value[$_smarty_tpl->tpl_vars['_id']->value]['count'], null, 0);?><?php }else{ ?><?php $_smarty_tpl->tpl_vars['_count'] = new Smarty_variable($_smarty_tpl->tpl_vars['counts']->value[$_smarty_tpl->tpl_vars['_id']->value], null, 0);?><?php }?><?php }?><a href="<?php echo $_smarty_tpl->tpl_vars['_item_url']->value;?>
"<?php if (!$_smarty_tpl->tpl_vars['wa']->value->isMobile()&&$_smarty_tpl->tpl_vars['_info']->value['name']){?> data-wa-tooltip-content="<?php echo ifempty($_smarty_tpl->tpl_vars['_info']->value['name']);?>
"<?php }?>><?php if (isset($_smarty_tpl->tpl_vars['_info']->value['img'])){?><img<?php if (!empty($_smarty_tpl->tpl_vars['_info']->value['icon'][96])){?> data-src2="<?php echo $_smarty_tpl->tpl_vars['root_url']->value;?>
<?php echo $_smarty_tpl->tpl_vars['_info']->value['icon'][96];?>
<?php echo $_smarty_tpl->tpl_vars['_version']->value;?>
"<?php }?> src="<?php echo $_smarty_tpl->tpl_vars['root_url']->value;?>
<?php if (!empty($_smarty_tpl->tpl_vars['_info']->value['icon'][96])){?><?php echo $_smarty_tpl->tpl_vars['_info']->value['icon'][96];?>
<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['_info']->value['img'];?>
<?php }?><?php echo $_smarty_tpl->tpl_vars['_version']->value;?>
" alt=""><?php }?><span class="wa-app-name"><?php echo ifempty($_smarty_tpl->tpl_vars['_info']->value['name']);?>
</span><?php if ($_smarty_tpl->tpl_vars['_count']->value){?><span class="badge indicator"><?php echo $_smarty_tpl->tpl_vars['_count']->value;?>
</span><?php }?></a></li><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;
foreach (Smarty::$global_tpl_vars as $key => $value) if(!isset($_smarty_tpl->tpl_vars[$key])) $_smarty_tpl->tpl_vars[$key] = $value;}}?>
<?php if (!empty($_smarty_tpl->tpl_vars['header_top']->value)){?><?php  $_smarty_tpl->tpl_vars['_'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['header_top']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_']->key => $_smarty_tpl->tpl_vars['_']->value){
$_smarty_tpl->tpl_vars['_']->_loop = true;
?><?php echo $_smarty_tpl->tpl_vars['_']->value;?>
<?php } ?><?php }?><?php if (!empty($_smarty_tpl->tpl_vars['include_wa_push']->value)){?><script src="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa.push.js"></script><?php }?><div id="wa-header"><div id="wa-header-logo-area"><?php /*  Call merged included template "./BackendLogo.inc.html" */
$_tpl_stack[] = $_smarty_tpl;
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("./BackendLogo.inc.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('backend_url'=>$_smarty_tpl->tpl_vars['backend_url']->value,'company_name'=>$_smarty_tpl->tpl_vars['company_name']->value,'position'=>"header"), 0, '42464165363137901950390-65230364');
content_631379019ec7b0_81875506($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); /*  End of included template "./BackendLogo.inc.html" */?><p class="wa-header-sitename flexbox middle space-16"><span class="h2 wa-sitename<?php if ($_smarty_tpl->tpl_vars['request_uri']->value==$_smarty_tpl->tpl_vars['backend_url']->value||$_smarty_tpl->tpl_vars['request_uri']->value==((string)$_smarty_tpl->tpl_vars['backend_url']->value)."/"){?> is-main-dashboard<?php }?>"><?php echo smarty_modifier_truncate($_smarty_tpl->tpl_vars['wa']->value->accountName(),42);?>
</span></p></div><div id="wa-header-content-area"><div class="wa-header-custom-main-content"><?php echo $_smarty_tpl->tpl_vars['custom_params']->value['main'];?>
</div><div id="wa-applist" class="js-applist js-applist-header<?php if (is_array($_smarty_tpl->tpl_vars['counts']->value)){?> counts-cached<?php }?><?php if ($_smarty_tpl->tpl_vars['custom_params']->value['main']){?> wa-applist-with-custom-main-content<?php }?><?php if ($_smarty_tpl->tpl_vars['wa']->value->isMobile()){?> is-mobile<?php }?>"><ul><?php  $_smarty_tpl->tpl_vars['_info'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_info']->_loop = false;
 $_smarty_tpl->tpl_vars['_id'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['header_items']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_info']->key => $_smarty_tpl->tpl_vars['_info']->value){
$_smarty_tpl->tpl_vars['_info']->_loop = true;
 $_smarty_tpl->tpl_vars['_id']->value = $_smarty_tpl->tpl_vars['_info']->key;
?><?php smarty_template_function__renderHeaderItem($_smarty_tpl,array('_id'=>$_smarty_tpl->tpl_vars['_id']->value,'_info'=>$_smarty_tpl->tpl_vars['_info']->value));?>
<?php } ?></ul>
        </div>


    </div>
    <div id="wa-header-user-area" class="flexbox space-16">
        
        <?php $_smarty_tpl->tpl_vars['dashboards'] = new Smarty_variable(strpos($_smarty_tpl->tpl_vars['request_uri']->value,"/webasyst/dashboard/"), null, 0);?>
        <?php $_smarty_tpl->tpl_vars['dashboard_url'] = new Smarty_variable(strpos($_smarty_tpl->tpl_vars['request_uri']->value,"/webasyst/dashboard/dashboard/"), null, 0);?>
        <?php $_smarty_tpl->tpl_vars['is_dashboards'] = new Smarty_variable(false, null, 0);?>
        <?php $_smarty_tpl->tpl_vars['is_dashboard'] = new Smarty_variable(false, null, 0);?>
        <?php if ($_smarty_tpl->tpl_vars['dashboards']->value!==false){?>
            <?php $_smarty_tpl->tpl_vars['is_dashboards'] = new Smarty_variable(true, null, 0);?>
        <?php }?>
        <?php if ($_smarty_tpl->tpl_vars['dashboard_url']->value!==false){?>
            <?php $_smarty_tpl->tpl_vars['is_dashboard'] = new Smarty_variable(true, null, 0);?>
        <?php }?>

        <?php if ($_smarty_tpl->tpl_vars['custom_params']->value['aux']||$_smarty_tpl->tpl_vars['header_user_area']->value['aux']){?><div class="wa-header-custom-aux-content"><?php echo $_smarty_tpl->tpl_vars['custom_params']->value['aux'];?>
<?php  $_smarty_tpl->tpl_vars['_aux_content'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_aux_content']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['header_user_area']->value['aux']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_aux_content']->key => $_smarty_tpl->tpl_vars['_aux_content']->value){
$_smarty_tpl->tpl_vars['_aux_content']->_loop = true;
?><?php echo $_smarty_tpl->tpl_vars['_aux_content']->value;?>
<?php } ?></div><?php }?><?php if ($_smarty_tpl->tpl_vars['request_uri']->value==$_smarty_tpl->tpl_vars['backend_url']->value||$_smarty_tpl->tpl_vars['request_uri']->value==((string)$_smarty_tpl->tpl_vars['backend_url']->value)."/"||$_smarty_tpl->tpl_vars['is_dashboards']->value){?><?php }else{ ?><a class="wa-toggle-apps rotate180 js-toggle-apps" href="#" title="Все приложения"><i class="fas fa-th fa-lg"></i></a><?php }?><?php if ($_smarty_tpl->tpl_vars['request_uri']->value==$_smarty_tpl->tpl_vars['backend_url']->value||$_smarty_tpl->tpl_vars['request_uri']->value==((string)$_smarty_tpl->tpl_vars['backend_url']->value)."/"||$_smarty_tpl->tpl_vars['is_dashboard']->value){?><!-- <a href="#" class="button nobutton gray"><i class="fas fa-sliders-h"></i> Customize</a> --><div class="dashboard-customize"><a href="javascript:void(0);"class="button nobutton rounded nowrap gray js-dashboard-edit"data-current_dashboard-id="<?php echo smarty_modifier_regex_replace((($tmp = @$_smarty_tpl->tpl_vars['selected_sidebar_item']->value)===null||$tmp==='' ? 0 : $tmp),'/[^0-9]/','');?>
"id="show-dashboard-editable-mode_"><i class="fas fa-plus-circle"></i> <span>Виджеты</span></a><a href="javascript:void(0);"class="button js-dashboard-edit-close"style="display: none;"><i class="fas fa-check"></i> <span>Готово</span></a></div><?php }?><div class="dropdown" id="wa-notifications-dropdown"><button class="icon large wa-notifications-bell dropdown-toggle without-arrow js-notifications-bell" title="Уведомления"><i class="fas fa-bell"></i><?php if (!empty($_smarty_tpl->tpl_vars['notifications']->value)){?><span class="badge"><?php echo count($_smarty_tpl->tpl_vars['notifications']->value);?>
</span><?php }?></button><?php /*  Call merged included template "../dashboard/DashboardAnnouncement.html" */
$_tpl_stack[] = $_smarty_tpl;
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("../dashboard/DashboardAnnouncement.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('notifications'=>$_smarty_tpl->tpl_vars['notifications']->value), 0, '42464165363137901950390-65230364');
content_63137901acb273_98974896($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); /*  End of included template "../dashboard/DashboardAnnouncement.html" */?></div><?php if (isset($_smarty_tpl->tpl_vars['app_info']->value['ui'])&&$_smarty_tpl->tpl_vars['app_info']->value['ui']==='2.0'){?><button class="icon large js-mode-toggle" title="Светлый/темный режим" data-wa-mode-toggle><i class="fas fa-adjust"></i></button><?php }?><?php if (!$_smarty_tpl->tpl_vars['wa']->value->debug()&&ifset($_smarty_tpl->tpl_vars['app_info']->value,'ui','1.3')==='1.3,2.0'&&$_smarty_tpl->tpl_vars['app_info']->value['id']!='webasyst'){?><div class="dropdown" id="wa2ui-dropdown"><span class="dropdown-toggle without-arrow js-wa2ui" title="Новый интерфейс Webasyst 2" style="color: var(--text-color-link); cursor: pointer;"><span class="badge blue">2.0</span></span><div class="alert-fixed-box large hidden d-notification-wrapper js-notification-wrapper" id="d-notification-wrapper"><div class="wa-notification"><div class="wa-notification-header wa2ui-teaser"><div class="flexbox middle space-8"><?php if ($_smarty_tpl->tpl_vars['app_info']->value['id']!='webasyst'){?><img src="<?php echo $_smarty_tpl->tpl_vars['root_url']->value;?>
<?php echo $_smarty_tpl->tpl_vars['app_info']->value['icon'][48];?>
" style="width: 24px; height: 24px;"><?php }?>Новый интерфейс Webasyst 2&nbsp;<span style="opacity: 0.42;">(бета)</span></div></div><div class="wa-notification-body"><p><?php echo sprintf('Вы используете новую версию интерфейса этого приложения. Если вдруг что-то пошло не так, пожалуйста, <a href="%s" target="_blank">сообщите нам %s</a>. Будем рады вашим отзывам!','https://support.webasyst.ru','<i class="fas fa-external-link-alt"></i>');?>
</p><p>Попробуйте его в светлом и темном режимах:<span style="display: inline-block; border-radius: 50%; border: 1px solid rgba(0,0,0,0.2); width: 18px; height: 18px; background: white; box-shadow: 0 3px 5px -2px rgba(0,0,0,0.2); position: relative; top: 3px; margin: 0 5px 0 8px; cursor: pointer" title="Светлый режим" data-wa-theme-mode="light"></span><span style="display: inline-block; border-radius: 50%; border: 1px solid rgba(0,0,0,0.2); width: 18px; height: 18px; background: #333; box-shadow: 0 3px 6px -2px rgba(0,0,0,0.42); position: relative; top: 3px; margin: 0 2px; cursor: pointer" title="Темный режим" data-wa-theme-mode="dark"></span><span style="display: inline-block; border-radius: 50%; overflow: hidden; border: 1px solid rgba(0,0,0,0.2); width: 18px; height: 18px; position: relative; top: 3px; margin: 0 2px; cursor: pointer" title="Авто (зависит от настроек устройства)" data-wa-theme-mode="auto"><i style="background: linear-gradient(-90deg, rgba(51,51,51,1) 40%, rgba(255,255,255,1) 60%); box-shadow: 0 3px 6px -2px rgba(0,0,0,0.42); display: block; width: 18px; height: 18px;"></i></span></p><button class="button gray outlined small custom-mr-4" onClick="_setCookie('force_set_wa_backend_ui_version', '1.3', 365); _setCookie('force_hide_wa2ui_teaser', 0, -1); window.location.reload();"><span>Вернуться в старый интерфейс</span></button>или <a href="http://2.webasyst.ru" target="_blank">подробнее о Webasyst 2</a></div></div></div></div><?php }?><div class="dropdown" id="wa-userprofile" data-user-id="<?php echo $_smarty_tpl->tpl_vars['user']->value['id'];?>
"><a href="<?php echo $_smarty_tpl->tpl_vars['backend_url']->value;?>
?module=profile" title="Мой профиль" class="dropdown-toggle without-arrow"><img src="<?php echo $_smarty_tpl->tpl_vars['user']->value->getPhoto(96);?>
" alt="" class="wa-userpic" /></a><div class="dropdown-body right"><ul class="menu"><li><a href="<?php echo $_smarty_tpl->tpl_vars['backend_url']->value;?>
?module=profile"><i class="fas fa-user"></i><span>Мой профиль</span></a></li><li><a href="<?php echo $_smarty_tpl->tpl_vars['backend_url']->value;?>
?action=logout"><i class="fas fa-sign-out-alt"></i><span>Выйти</span></a></li></ul></div></div>
    </div>
</div>
<script id="wa-header-js"
        type="text/javascript"
        src="<?php echo $_smarty_tpl->tpl_vars['root_url']->value;?>
wa-content/js/jquery-wa/wa.header.js?<?php echo $_smarty_tpl->tpl_vars['wa_version']->value;?>
"
        <?php if (!$_smarty_tpl->tpl_vars['user']->value['timezone']){?> data-determine-timezone="1"<?php }?>>
</script>
    <script>
        $(function () {
            new WaHeader();

            /* Notification Actions */
            const $notifications_bell = $('.js-notifications-bell');
            $notifications_bell.on('click', function (e){
                e.preventDefault();
                $(this).toggleClass('wa-animation-bell');
                setTimeout(() => $(this).toggleClass('wa-animation-bell'), 1000);
                $(this).next('.js-notification-wrapper').toggle().removeClass('hidden');
            });
            /* Active All Notifications On Main Dashboard */
            <?php if (!empty($_smarty_tpl->tpl_vars['notifications']->value)&&($_smarty_tpl->tpl_vars['request_uri']->value==$_smarty_tpl->tpl_vars['backend_url']->value||$_smarty_tpl->tpl_vars['request_uri']->value==((string)$_smarty_tpl->tpl_vars['backend_url']->value)."/"||$_smarty_tpl->tpl_vars['is_dashboard']->value)){?>
                $notifications_bell.trigger('click');
            <?php }?>

            <?php if (!$_smarty_tpl->tpl_vars['wa']->value->debug()){?>
                
                const $wa2ui = $('.js-wa2ui');
                $wa2ui.on('click', function (e){
                    e.preventDefault();
                    $(this).next('.alert-fixed-box').toggle().removeClass('hidden');
                });
            <?php }?>

            /* User Profile Dropdown*/
            const userprofile_options = { };
            <?php if ($_smarty_tpl->tpl_vars['wa']->value->isMobile()){?>
                userprofile_options.hover = false;
            <?php }?>
            $("#wa-userprofile").waDropdown(userprofile_options);

        });
    </script>

    <?php $_smarty_tpl->tpl_vars['_request_uri'] = new Smarty_variable(rtrim($_smarty_tpl->tpl_vars['request_uri']->value,'/'), null, 0);?>
    <?php $_smarty_tpl->tpl_vars['_bashend_url'] = new Smarty_variable(rtrim($_smarty_tpl->tpl_vars['backend_url']->value,'/'), null, 0);?>

    <?php if ($_smarty_tpl->tpl_vars['_request_uri']->value==$_smarty_tpl->tpl_vars['_bashend_url']->value||$_smarty_tpl->tpl_vars['_request_uri']->value==((string)$_smarty_tpl->tpl_vars['_bashend_url']->value)."/webasyst"||$_smarty_tpl->tpl_vars['dashboards']->value){?>
        <script src="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/sortable/sortable.min.js"></script>
        <script src="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/sortable/jquery-sortable.min.js"></script>
        <script src="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/dashboard.js?v=<?php echo $_smarty_tpl->tpl_vars['wa']->value->version();?>
"></script>
    <?php }?>


<?php }} ?><?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 18:55:45
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-system\webasyst\templates\actions\backend\BackendLogo.inc.html" */ ?>
<?php if ($_valid && !is_callable('content_631379019ec7b0_81875506')) {function content_631379019ec7b0_81875506($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_truncate')) include 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system\\vendors\\smarty3\\plugins\\modifier.truncate.php';
?><?php if ($_smarty_tpl->tpl_vars['logo']->value['mode']==='gradient'||empty($_smarty_tpl->tpl_vars['logo']->value['image']['thumbs'])){?><?php $_smarty_tpl->tpl_vars['two_lines'] = new Smarty_variable($_smarty_tpl->tpl_vars['logo']->value['two_lines'], null, 0);?><?php $_smarty_tpl->tpl_vars['text_value'] = new Smarty_variable(htmlspecialchars(trim($_smarty_tpl->tpl_vars['logo']->value['text']['value']), ENT_QUOTES, 'UTF-8', true), null, 0);?><?php if ($_smarty_tpl->tpl_vars['position']->value==='header'){?><div id="wa-account" style="background: linear-gradient(<?php echo $_smarty_tpl->tpl_vars['logo']->value['gradient']['angle'];?>
deg, <?php echo $_smarty_tpl->tpl_vars['logo']->value['gradient']['from'];?>
, <?php echo $_smarty_tpl->tpl_vars['logo']->value['gradient']['to'];?>
); color: <?php echo (($tmp = @$_smarty_tpl->tpl_vars['logo']->value['text']['color'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['logo']->value['text']['default_color'] : $tmp);?>
"><a href="<?php echo $_smarty_tpl->tpl_vars['backend_url']->value;?>
"><?php }?><h3<?php if ($_smarty_tpl->tpl_vars['two_lines']->value){?> class="two-lines"<?php }?> title="<?php echo $_smarty_tpl->tpl_vars['company_name']->value;?>
" style="<?php if ($_smarty_tpl->tpl_vars['position']->value==='sidebar'){?>background: linear-gradient(<?php echo $_smarty_tpl->tpl_vars['logo']->value['gradient']['angle'];?>
deg, <?php echo $_smarty_tpl->tpl_vars['logo']->value['gradient']['from'];?>
, <?php echo $_smarty_tpl->tpl_vars['logo']->value['gradient']['to'];?>
); color: <?php echo (($tmp = @$_smarty_tpl->tpl_vars['logo']->value['text']['color'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['logo']->value['text']['default_color'] : $tmp);?>
<?php }else{ ?>color: <?php echo (($tmp = @$_smarty_tpl->tpl_vars['logo']->value['text']['color'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['logo']->value['text']['default_color'] : $tmp);?>
<?php }?>"><?php if ($_smarty_tpl->tpl_vars['text_value']->value){?><?php if ($_smarty_tpl->tpl_vars['two_lines']->value){?><?php echo nl2br(htmlspecialchars(trim((($tmp = @$_smarty_tpl->tpl_vars['logo']->value['text']['formatted_value'])===null||$tmp==='' ? $_smarty_tpl->tpl_vars['logo']->value['text']['value'] : $tmp)), ENT_QUOTES, 'UTF-8', true));?>
<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['text_value']->value;?>
<?php }?><?php }else{ ?><i class="fas fa-home"></i><?php }?></h3><?php if ($_smarty_tpl->tpl_vars['position']->value==='header'){?></a></div><?php }?><?php }elseif($_smarty_tpl->tpl_vars['logo']->value['mode']==='image'&&!empty($_smarty_tpl->tpl_vars['logo']->value['image']['thumbs'])){?><?php $_smarty_tpl->tpl_vars['logo_url_1x'] = new Smarty_variable(($_smarty_tpl->tpl_vars['logo']->value['image']['thumbs']['64x64']['url']).($_smarty_tpl->tpl_vars['wa']->value->version(true)), null, 0);?><?php $_smarty_tpl->tpl_vars['logo_url_2x'] = new Smarty_variable(($_smarty_tpl->tpl_vars['logo']->value['image']['thumbs']['128x128']['url']).($_smarty_tpl->tpl_vars['wa']->value->version(true)), null, 0);?><?php $_smarty_tpl->tpl_vars['logo_url_3x'] = new Smarty_variable(($_smarty_tpl->tpl_vars['logo']->value['image']['thumbs']['192x192']['url']).($_smarty_tpl->tpl_vars['wa']->value->version(true)), null, 0);?><?php $_smarty_tpl->tpl_vars['logo_url_sidebar'] = new Smarty_variable(($_smarty_tpl->tpl_vars['logo']->value['image']['thumbs']['512x512']['url']).($_smarty_tpl->tpl_vars['wa']->value->version(true)), null, 0);?><div id="wa-account"<?php if ($_smarty_tpl->tpl_vars['position']->value==='sidebar'){?> class="wa-sidebar-logo"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['backend_url']->value;?>
"><img<?php if ($_smarty_tpl->tpl_vars['position']->value==='sidebar'){?> src="<?php echo $_smarty_tpl->tpl_vars['logo_url_sidebar']->value;?>
"<?php }else{ ?> src="<?php echo $_smarty_tpl->tpl_vars['logo_url_1x']->value;?>
" srcset="<?php echo $_smarty_tpl->tpl_vars['logo_url_1x']->value;?>
 1x, <?php echo $_smarty_tpl->tpl_vars['logo_url_2x']->value;?>
 2x, <?php echo $_smarty_tpl->tpl_vars['logo_url_3x']->value;?>
 3x"<?php }?> class="wa-header-logo" alt="<?php echo smarty_modifier_truncate($_smarty_tpl->tpl_vars['company_name']->value,2,'');?>
"></a></div><?php }?>
<?php }} ?><?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 18:55:45
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-system\webasyst\templates\actions\dashboard\DashboardAnnouncement.html" */ ?>
<?php if ($_valid && !is_callable('content_63137901acb273_98974896')) {function content_63137901acb273_98974896($_smarty_tpl) {?><div class="alert-fixed-box large hidden d-notification-wrapper js-notification-wrapper" id="d-notification-wrapper">
    <?php if (!empty($_smarty_tpl->tpl_vars['notifications']->value)){?>
        <?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['n']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['notifications']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
$_smarty_tpl->tpl_vars['n']->_loop = true;
?>
            <div class="alert wa-notification js-wa-announcement" data-id="<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
">
                <div class="wa-notification-header wa-gradient-overlay-medium">
                    <div class="flexbox middle space-8">
                        <?php $_smarty_tpl->tpl_vars['_info'] = new Smarty_variable($_smarty_tpl->tpl_vars['n']->value['app'], null, 0);?>

                        
                        <?php if (!empty($_smarty_tpl->tpl_vars['_info']->value['version'])){?>
                            <?php $_smarty_tpl->tpl_vars['_version'] = new Smarty_variable("?v=".((string)htmlspecialchars($_smarty_tpl->tpl_vars['_info']->value['version'], ENT_QUOTES, 'UTF-8', true)), null, 0);?>
                        <?php }else{ ?>
                            <?php $_smarty_tpl->tpl_vars['_version'] = new Smarty_variable(null, null, 0);?>
                        <?php }?>

                        <i class="icon size-20" style="background: url('<?php echo $_smarty_tpl->tpl_vars['root_url']->value;?>
<?php if (!empty($_smarty_tpl->tpl_vars['_info']->value['icon'][24])){?><?php echo $_smarty_tpl->tpl_vars['_info']->value['icon'][24];?>
<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['_info']->value['img'];?>
<?php }?><?php echo $_smarty_tpl->tpl_vars['_version']->value;?>
'); background-size: 20px 20px;"></i>
                        <strong class="nowrap uppercase wide"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['_info']->value['name'], ENT_QUOTES, 'UTF-8', true);?>
</strong>
                        <span class="nowrap"><?php echo waDateTime::format('humandatetime',$_smarty_tpl->tpl_vars['n']->value['datetime']);?>
</span>
                        <a href="javascript:void(0);" class="alert-close js-announcement-hide" title="Закрыть"><i class="fas fa-times"></i></a>
                    </div>
                </div>
                <div class="wa-notification-body">
                    <?php echo $_smarty_tpl->tpl_vars['n']->value['text'];?>

                </div>
                <?php if ($_smarty_tpl->tpl_vars['n']->value['app_id']!=='installer'){?>
                    <a data-app-id="<?php echo $_smarty_tpl->tpl_vars['n']->value['app_id'];?>
" href="javascript:void(0);" class="custom-ml-16 custom-py-4 hint js-announcement-close flexbox" title="Закрыть">Пометить как прочитанное</a>
                <?php }?>
            </div>
        <?php } ?>
    <?php }else{ ?>
        <div class="alert wa-notification">
            <div class="wa-notification-body-empty">
                Новых уведомлений нет.
            </div>
        </div>
    <?php }?>
</div>
<?php }} ?><?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 18:55:45
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-system\webasyst\templates\actions\backend\BackendHeader13.html" */ ?>
<?php if ($_valid && !is_callable('content_63137901b38882_70793785')) {function content_63137901b38882_70793785($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_truncate')) include 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-system\\vendors\\smarty3\\plugins\\modifier.truncate.php';
?>
<?php if (!function_exists('smarty_template_function__renderHeaderItem')) {
    function smarty_template_function__renderHeaderItem($_smarty_tpl,$params) {
    $saved_tpl_vars = $_smarty_tpl->tpl_vars;
    foreach ($_smarty_tpl->smarty->template_functions['_renderHeaderItem']['parameter'] as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);};
    foreach ($params as $key => $value) {$_smarty_tpl->tpl_vars[$key] = new Smarty_variable($value);}?><?php if (!empty($_smarty_tpl->tpl_vars['_info']->value['app_id'])&&!empty($_smarty_tpl->tpl_vars['_info']->value['link'])){?><?php $_smarty_tpl->tpl_vars['_item_url'] = new Smarty_variable(((string)$_smarty_tpl->tpl_vars['backend_url']->value).((string)$_smarty_tpl->tpl_vars['_info']->value['app_id'])."/".((string)$_smarty_tpl->tpl_vars['_info']->value['link'])."/", null, 0);?><?php }else{ ?><?php $_smarty_tpl->tpl_vars['_item_url'] = new Smarty_variable(((string)$_smarty_tpl->tpl_vars['backend_url']->value).((string)$_smarty_tpl->tpl_vars['_id']->value)."/", null, 0);?><?php }?><?php if (!empty($_smarty_tpl->tpl_vars['_info']->value['version'])){?><?php $_smarty_tpl->tpl_vars['_version'] = new Smarty_variable("?v=".((string)htmlspecialchars($_smarty_tpl->tpl_vars['_info']->value['version'], ENT_QUOTES, 'UTF-8', true)), null, 0);?><?php }else{ ?><?php $_smarty_tpl->tpl_vars['_version'] = new Smarty_variable(null, null, 0);?><?php }?><li id="wa-app-<?php echo str_replace('.','-',$_smarty_tpl->tpl_vars['_id']->value);?>
" data-app="<?php echo $_smarty_tpl->tpl_vars['_id']->value;?>
" <?php if ($_smarty_tpl->tpl_vars['_id']->value==$_smarty_tpl->tpl_vars['current_app']->value||stristr($_smarty_tpl->tpl_vars['request_uri']->value,$_smarty_tpl->tpl_vars['_item_url']->value)!==false){?> class="selected"<?php }?>><?php $_smarty_tpl->tpl_vars['_count'] = new Smarty_variable(null, null, 0);?><?php if ($_smarty_tpl->tpl_vars['counts']->value&&isset($_smarty_tpl->tpl_vars['counts']->value[$_smarty_tpl->tpl_vars['_id']->value])){?><?php if (is_array($_smarty_tpl->tpl_vars['counts']->value[$_smarty_tpl->tpl_vars['_id']->value])){?><?php $_smarty_tpl->tpl_vars['_item_url'] = new Smarty_variable($_smarty_tpl->tpl_vars['counts']->value[$_smarty_tpl->tpl_vars['_id']->value]['url'], null, 0);?><?php $_smarty_tpl->tpl_vars['_count'] = new Smarty_variable($_smarty_tpl->tpl_vars['counts']->value[$_smarty_tpl->tpl_vars['_id']->value]['count'], null, 0);?><?php }else{ ?><?php $_smarty_tpl->tpl_vars['_count'] = new Smarty_variable($_smarty_tpl->tpl_vars['counts']->value[$_smarty_tpl->tpl_vars['_id']->value], null, 0);?><?php }?><?php }?><a href="<?php echo $_smarty_tpl->tpl_vars['_item_url']->value;?>
"><?php if (isset($_smarty_tpl->tpl_vars['_info']->value['img'])){?><img<?php if (!empty($_smarty_tpl->tpl_vars['_info']->value['icon'][96])){?> data-src2="<?php echo $_smarty_tpl->tpl_vars['root_url']->value;?>
<?php echo $_smarty_tpl->tpl_vars['_info']->value['icon'][96];?>
<?php echo $_smarty_tpl->tpl_vars['_version']->value;?>
"<?php }?> src="<?php echo $_smarty_tpl->tpl_vars['root_url']->value;?>
<?php echo $_smarty_tpl->tpl_vars['_info']->value['img'];?>
<?php echo $_smarty_tpl->tpl_vars['_version']->value;?>
" alt=""><?php }?><?php echo ifempty($_smarty_tpl->tpl_vars['_info']->value['name']);?>
<?php if ($_smarty_tpl->tpl_vars['_count']->value){?><span class="indicator"><?php echo $_smarty_tpl->tpl_vars['_count']->value;?>
</span><?php }?></a></li><?php $_smarty_tpl->tpl_vars = $saved_tpl_vars;
foreach (Smarty::$global_tpl_vars as $key => $value) if(!isset($_smarty_tpl->tpl_vars[$key])) $_smarty_tpl->tpl_vars[$key] = $value;}}?>

<?php if (!empty($_smarty_tpl->tpl_vars['header_top']->value)){?><?php  $_smarty_tpl->tpl_vars['_'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['header_top']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_']->key => $_smarty_tpl->tpl_vars['_']->value){
$_smarty_tpl->tpl_vars['_']->_loop = true;
?><?php echo $_smarty_tpl->tpl_vars['_']->value;?>
<?php } ?><?php }?><script type="text/javascript">var backend_url = "<?php echo $_smarty_tpl->tpl_vars['backend_url']->value;?>
";var webasyst_id_settings_url = <?php echo json_encode($_smarty_tpl->tpl_vars['webasyst_id_settings_url']->value);?>
;</script><?php if (!empty($_smarty_tpl->tpl_vars['include_wa_push']->value)){?><script src="<?php echo $_smarty_tpl->tpl_vars['wa_url']->value;?>
wa-content/js/jquery-wa/wa.push.js"></script><?php }?><div id="wa-announcement"><?php if (!empty($_smarty_tpl->tpl_vars['show_connection_banner']->value)){?><div class="js-webasyst-id-announcement js-webasyst-id-auth-announcement js-webasyst-id-connect-announcement w-webasyst-id-banner"><a href="javascript:void(0);" class="wa-announcement-close js-close-webasyst-id-announcement" title="close"  data-name="webasyst_id_announcement_close" rel="webasyst">&times;</a><p><i class="icon16 waid-green"></i><strong>Подключите вход с Webasyst ID</strong> — единый способ авторизации, который объединяет вход в бекенд Webasyst на вашем сайте, Центр заказчика Webasyst, все приложения, сайты и сервисы экосистемы Webasyst.&nbsp;<a href="javascript:void(0)"class="bold js-webasyst-id-connect"><?php echo sprintf('Подключить&nbsp;Webasyst&nbsp;ID на %s — бесплатно и безопасно!',mb_strtoupper(htmlspecialchars($_smarty_tpl->tpl_vars['current_domain']->value, ENT_QUOTES, 'UTF-8', true)));?>
</a>&nbsp;<a href="javascript:void(0);" class="gray js-webasyst-id-helplink">Как это работает?</a></p></div><?php }elseif(!empty($_smarty_tpl->tpl_vars['webasyst_id_auth_banner']->value)){?><div class="js-webasyst-id-announcement js-webasyst-id-auth-announcement js-webasyst-id-auth-announcement w-webasyst-id-banner"><a href="javascript:void(0);" class="wa-announcement-close js-close-webasyst-id-announcement" title="close"  data-name="webasyst_id_announcement_close" rel="webasyst">&times;</a><p><i class="icon16 userpic20" style="background-image: url('<?php echo $_smarty_tpl->tpl_vars['user']->value->getPhoto(32);?>
');"></i>+ <i class="icon16 waid-green"></i> <?php echo sprintf('<strong>Подключите для своего аккаунта (%s) вход с помощью Webasyst ID</strong> — единой системы авторизации, объединяющей Центр заказчика Webasyst, мобильные приложения, сайты и сервисы Webasyst. Подключение займет всего минуту.',strtoupper(htmlspecialchars($_smarty_tpl->tpl_vars['user']->value['login'], ENT_QUOTES, 'UTF-8', true)));?>
&nbsp;<a href="<?php echo $_smarty_tpl->tpl_vars['webasyst_id_auth_banner']->value['url'];?>
"class="bold js-webasyst-id-auth"><?php echo sprintf('Подключить&nbsp;Webasyst&nbsp;ID для %s сейчас!',strtoupper(htmlspecialchars($_smarty_tpl->tpl_vars['user']->value['login'], ENT_QUOTES, 'UTF-8', true)));?>
</a>&nbsp;<a href="javascript:void(0);" class="gray js-webasyst-id-helplink">Как это работает?</a></p></div><?php }?></div><div id="wa-header"><div id="wa-account"><?php if ($_smarty_tpl->tpl_vars['request_uri']->value==$_smarty_tpl->tpl_vars['backend_url']->value||$_smarty_tpl->tpl_vars['request_uri']->value==((string)$_smarty_tpl->tpl_vars['backend_url']->value)."/"){?><h3 title="<?php echo $_smarty_tpl->tpl_vars['company_name']->value;?>
"><?php echo smarty_modifier_truncate($_smarty_tpl->tpl_vars['company_name']->value,18,'...');?>
<a href="<?php echo $_smarty_tpl->tpl_vars['company_url']->value;?>
" class="wa-frontend-link" target="_blank"><i class="icon16 new-window"></i></a></h3><a class="inline-link" id="show-dashboard-editable-mode" href="<?php echo $_smarty_tpl->tpl_vars['backend_url']->value;?>
"><b><i>Настроить виджеты</i></b></a><input id="close-dashboard-editable-mode" type="button" value="Готово" style="display: none;"><?php }else{ ?><a href="<?php echo $_smarty_tpl->tpl_vars['backend_url']->value;?>
" class="wa-dashboard-link"><h3 title="<?php echo $_smarty_tpl->tpl_vars['company_name']->value;?>
"><?php echo smarty_modifier_truncate($_smarty_tpl->tpl_vars['company_name']->value,18,'...');?>
</h3><span class="gray"><?php echo $_smarty_tpl->tpl_vars['date']->value;?>
</span></a><?php }?></div><div id="wa-usercorner" data-user-id="<?php echo $_smarty_tpl->tpl_vars['user']->value['id'];?>
"><div class="profile image32px"><div class="image"><a href="<?php echo $_smarty_tpl->tpl_vars['backend_url']->value;?>
?module=profile"><img width="32" height="32" src="<?php echo $_smarty_tpl->tpl_vars['user']->value->getPhoto(32);?>
" alt=""></a></div><div class="details"><a href="<?php echo $_smarty_tpl->tpl_vars['backend_url']->value;?>
?module=profile" id="wa-my-username"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['user']->value->getName(), ENT_QUOTES, 'UTF-8', true);?>
</a><p class="status"></p><?php if (ifset($_smarty_tpl->tpl_vars['app_info']->value,'ui','1.3')==='1.3,2.0'&&$_smarty_tpl->tpl_vars['app_info']->value['id']!='webasyst'){?><a href="javascript:void(0);" style="background: #09f; border-radius: 8px; font-size: 12px; color: #fff; padding: 1px 4px; font-weight: bold; margin-right: 5px;" onClick="_setCookie('force_set_wa_backend_ui_version', '2.0', 365); window.location.reload();" title="Включить новый интерфейс">Включить 2.0</a><?php }?><a class="hint" href="<?php echo $_smarty_tpl->tpl_vars['backend_url']->value;?>
?action=logout">выйти</a></div></div></div><div id="wa-applist"<?php if (is_array($_smarty_tpl->tpl_vars['counts']->value)){?> class="counts-cached"<?php }?>><ul><?php  $_smarty_tpl->tpl_vars['_info'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_info']->_loop = false;
 $_smarty_tpl->tpl_vars['_id'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['header_items']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_info']->key => $_smarty_tpl->tpl_vars['_info']->value){
$_smarty_tpl->tpl_vars['_info']->_loop = true;
 $_smarty_tpl->tpl_vars['_id']->value = $_smarty_tpl->tpl_vars['_info']->key;
?><?php smarty_template_function__renderHeaderItem($_smarty_tpl,array('_id'=>$_smarty_tpl->tpl_vars['_id']->value,'_info'=>$_smarty_tpl->tpl_vars['_info']->value));?>
<?php } ?><li><a href="#" id="wa-moreapps"></a></li></ul>

        <?php if ($_smarty_tpl->tpl_vars['request_uri']->value==$_smarty_tpl->tpl_vars['backend_url']->value||$_smarty_tpl->tpl_vars['request_uri']->value==((string)$_smarty_tpl->tpl_vars['backend_url']->value)."/"){?>
            <div class="d-dashboard-header-content">
                <div class="d-dashboards-list-wrapper" id="d-dashboards-list-wrapper"></div>
                <div class="d-dashboard-link-wrapper" id="d-dashboard-link-wrapper">
                    <i class="icon10 lock-bw"></i> Этот дашборд видите только вы.
                </div>
            </div>
        <?php }?>
    </div>
</div>
<script id="wa-header-js" type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['root_url']->value;?>
wa-content/js/jquery-wa/wa.header-legacy.js?<?php echo $_smarty_tpl->tpl_vars['wa_version']->value;?>
"<?php if (!$_smarty_tpl->tpl_vars['user']->value['timezone']){?> data-determine-timezone="1"<?php }?>></script>


<?php if (!empty($_smarty_tpl->tpl_vars['header_middle']->value)){?><?php  $_smarty_tpl->tpl_vars['_'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['header_middle']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_']->key => $_smarty_tpl->tpl_vars['_']->value){
$_smarty_tpl->tpl_vars['_']->_loop = true;
?><?php echo $_smarty_tpl->tpl_vars['_']->value;?>
<?php } ?><?php }?>


<?php if (!empty($_smarty_tpl->tpl_vars['header_bottom']->value)){?><?php  $_smarty_tpl->tpl_vars['_'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['_']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['header_bottom']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['_']->key => $_smarty_tpl->tpl_vars['_']->value){
$_smarty_tpl->tpl_vars['_']->_loop = true;
?><?php echo $_smarty_tpl->tpl_vars['_']->value;?>
<?php } ?><?php }?>

<?php }} ?>