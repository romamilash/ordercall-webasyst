<?php /* Smarty version Smarty-3.1.14, created on 2022-09-03 18:51:39
         compiled from "C:\OpenServer\domains\webasyst2.loc\wa-apps\site\themes\default\main.html" */ ?>
<?php /*%%SmartyHeaderCode:11932820706313780b77b2c6-12064329%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '896029d3dba1527a8972d9576cfac80b61281ca1' => 
    array (
      0 => 'C:\\OpenServer\\domains\\webasyst2.loc\\wa-apps\\site\\themes\\default\\main.html',
      1 => 1560932160,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11932820706313780b77b2c6-12064329',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'wa' => 0,
    'wa_app_url' => 0,
    'page' => 0,
    'wa_backend_url' => 0,
    'content' => 0,
    'action' => 0,
    'theme_settings' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_6313780b7aa0c2_47986113',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_6313780b7aa0c2_47986113')) {function content_6313780b7aa0c2_47986113($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['wa']->value->currentUrl()==$_smarty_tpl->tpl_vars['wa_app_url']->value&&(empty($_smarty_tpl->tpl_vars['page']->value['id'])&&empty($_smarty_tpl->tpl_vars['page']->value['content']))){?>

    <div class="welcome">
        <h1>Добро пожаловать на ваш новый сайт!</h1>
        <p><?php echo sprintf('Перейдите в раздел «<a href="%s">Страницы</a>» и создайте страницу с пустым адресом. Здесь вы увидите её текст.',($_smarty_tpl->tpl_vars['wa_backend_url']->value).('site/#/pages/'));?>
</p>
    </div>

<?php }else{ ?>

    <article class="content with-sidebar" itemscope itemtype="http://schema.org/WebPage">
        <?php echo $_smarty_tpl->tpl_vars['content']->value;?>
 
    </article>

    <?php if (isset($_smarty_tpl->tpl_vars['page']->value)&&(empty($_smarty_tpl->tpl_vars['action']->value)||$_smarty_tpl->tpl_vars['action']->value=='page')){?>
        <div class="content">

            <!-- FOLLOW -->
            <aside class="connect inline">
                <?php if (!empty($_smarty_tpl->tpl_vars['theme_settings']->value['facebook_likebox_code'])){?>
                    <div class="likebox">
                        <?php echo $_smarty_tpl->tpl_vars['theme_settings']->value['facebook_likebox_code'];?>

                    </div>
                <?php }?>
                <?php if (!empty($_smarty_tpl->tpl_vars['theme_settings']->value['twitter_timeline_code'])){?>
                    <div class="likebox">
                        <?php echo $_smarty_tpl->tpl_vars['theme_settings']->value['twitter_timeline_code'];?>

                    </div>
                <?php }?>
                <?php if (!empty($_smarty_tpl->tpl_vars['theme_settings']->value['vk_widget_code'])){?>
                    <div class="likebox">
                        <?php echo $_smarty_tpl->tpl_vars['theme_settings']->value['vk_widget_code'];?>

                    </div>
                <?php }?>
                
            </aside>

        </div>
    <?php }?>

<?php }?><?php }} ?>