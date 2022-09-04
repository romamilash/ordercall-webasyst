<?php
return array (
  'plugins' => 
  array (
    'shop' => 
    array (
      'migrate' => 
      array (
        'name' => 'Переход на Shop-Script',
        'description' => 'Перенос данных в Shop-Script из других CMS для интернет-магазинов',
        'img' => 'wa-apps/shop/plugins/migrate/img/migrate.png',
        'vendor' => 'webasyst',
        'version' => '2.1.4',
        'importexport' => true,
        'handlers' => 
        array (
          'backend_welcome' => 'backendWelcomeHandler',
        ),
        'id' => 'migrate',
        'app_id' => 'shop',
      ),
      'redirect' => 
      array (
        'name' => '301 Редирект',
        'description' => 'Помогает перейти на Shop-Script с других CMS и обновить адреса страниц интернет-магазина, сохранив их индексацию поисковыми системами.',
        'vendor' => 'webasyst',
        'version' => '1.1',
        'img' => 'wa-apps/shop/plugins/redirect/img/redirect.png',
        'icons' => 
        array (
          16 => 'img/redirect.png',
        ),
        'shop_settings' => true,
        'handlers' => 
        array (
          'frontend_error' => 'frontendError',
          'frontend_search' => 'frontendSearch',
        ),
        'id' => 'redirect',
        'app_id' => 'shop',
        'custom_settings' => true,
      ),
      'ordercall' => 
      array (
        'name' => 'Заказ обратного звонка',
        'img' => 'wa-apps/shop/plugins/ordercall/img/icon.png',
        'description' => 'Заказ обратного звонка',
        'vendor' => 'romamilash',
        'version' => '1.0.0',
        'frontend' => true,
        'handlers' => 
        array (
          'frontend_head' => 'frontendHead',
          'routing' => 'routing',
        ),
        'id' => 'ordercall',
        'app_id' => 'shop',
      ),
    ),
    'blog' => 
    array (
      'tag' => 
      array (
        'name' => 'Теги',
        'description' => 'Фильтрация записей по тегам',
        'vendor' => 'webasyst',
        'version' => '1.0.0',
        'img' => 'wa-apps/blog/plugins/tag/img/tags.png',
        'frontend' => true,
        'handlers' => 
        array (
          'search_posts_backend' => 'postSearch',
          'search_posts_frontend' => 'postSearch',
          'backend_sidebar' => 'backendSidebar',
          'prepare_posts_backend' => 'prepareBackendView',
          'prepare_posts_frontend' => 'prepareFrontendView',
          'backend_post_edit' => 'backendPostEdit',
          'post_save' => 'postSave',
          'post_publish' => 'postSave',
          'post_shedule' => 'postSave',
          'post_delete' => 'postDelete',
          'frontend_action_default' => 'frontendSidebar',
          'frontend_action_post' => 'frontendSidebar',
          'frontend_action_page' => 'frontendSidebar',
          'routing' => 'routing',
        ),
        'id' => 'tag',
        'app_id' => 'blog',
      ),
      'troll' => 
      array (
        'name' => 'Тролль',
        'description' => 'Выделение выбранных комментаторов троллфейсом (trollface)',
        'vendor' => 'webasyst',
        'version' => '1.0.0',
        'img' => 'wa-apps/blog/plugins/troll/img/troll.png',
        'settings' => 
        array (
          'email' => 
          array (
            'title' => 'Troll list',
            'description' => 'A list defining troll search criteria (each line of the textarea defines a criteria). If any of the criteria match commentator\'s email, name or site URL, a troll face is shown.<br /><br />Example:<br /><em>koe9s@gmail.com<br />unwanteddomain.com<br />Alxs29<br />@troll.com</em>',
            'value' => '',
            'settings_html_function' => 'textarea',
          ),
        ),
        'handlers' => 
        array (
          'backend_comments' => 'addControls',
          'backend_post' => 'addControls',
          'prepare_comments_backend' => 'prepareView',
          'prepare_comments_frontend' => 'prepareView',
          'frontend_action_post' => 'postView',
        ),
        'id' => 'troll',
        'app_id' => 'blog',
      ),
      'emailsubscription' => 
      array (
        'name' => 'Подписка по почте',
        'description' => 'Позволяет пользователям бекенда получать email-уведомления о новых записях в блогах',
        'img' => 'wa-apps/blog/plugins/emailsubscription/img/emailsubscription.png',
        'version' => '1.1.2',
        'custom_settings' => true,
        'vendor' => 'webasyst',
        'handlers' => 
        array (
          'post_publish' => 'postPublishAction',
          'cron_action' => 'cronAction',
          'backend_stream' => 'blogAction',
          'backend_blog_edit' => 'settingsAction',
          'contacts_delete' => 'contactsDelete',
        ),
        'id' => 'emailsubscription',
        'app_id' => 'blog',
      ),
    ),
  ),
  'handlers' => 
  array (
    'webasyst' => 
    array (
      'backend_header' => 
      array (
        0 => 
        array (
          'app_id' => 'installer',
          'regex' => '/backend_header/',
          'file' => 'webasyst.backend_header.handler.php',
          'class' => 'installerWebasystBackend_headerHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
      ),
      'waid_auth' => 
      array (
        0 => 
        array (
          'app_id' => 'installer',
          'regex' => '/waid_auth/',
          'file' => 'webasyst.waid_auth.handler.php',
          'class' => 'installerWebasystWaid_authHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
      ),
      'backend_push' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'regex' => '/backend_push/',
          'file' => 'webasyst.backend_push.handler.php',
          'class' => 'shopWebasystBackend_pushHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
      ),
      'backend_dispatch_miss' => 
      array (
        0 => 
        array (
          'app_id' => 'team',
          'regex' => '/backend_dispatch_miss/',
          'file' => 'webasyst.backend_dispatch_miss.handler.php',
          'class' => 'teamWebasystBackend_dispatch_missHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
      ),
      'backend_personal_profile' => 
      array (
        0 => 
        array (
          'app_id' => 'team',
          'regex' => '/backend_personal_profile/',
          'file' => 'webasyst.backend_personal_profile.handler.php',
          'class' => 'teamWebasystBackend_personal_profileHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
      ),
    ),
    'contacts' => 
    array (
      'contacts_collection' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'regex' => '/contacts_collection/',
          'file' => 'contacts.contacts_collection.handler.php',
          'class' => 'shopContactsContacts_collectionHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
        1 => 
        array (
          'app_id' => 'team',
          'regex' => '/contacts_collection/',
          'file' => 'contacts.contacts_collection.handler.php',
          'class' => 'teamContactsContacts_collectionHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
      ),
      'delete' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'regex' => '/delete/',
          'file' => 'contacts.delete.handler.php',
          'class' => 'shopContactsDeleteHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
        1 => 
        array (
          'app_id' => 'team',
          'regex' => '/delete/',
          'file' => 'contacts.delete.handler.php',
          'class' => 'teamContactsDeleteHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
        2 => 
        array (
          'app_id' => 'blog',
          'regex' => '/delete/',
          'file' => 'contacts.delete.handler.php',
          'class' => 'blogContactsDeleteHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
        3 => 
        array (
          'app_id' => 'webasyst',
          'regex' => '/delete/',
          'file' => 'contacts.delete.handler.php',
          'class' => 'webasystContactsDeleteHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
      ),
      'explore' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'regex' => '/explore/',
          'file' => 'contacts.explore.handler.php',
          'class' => 'shopContactsExploreHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
      ),
      'links' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'regex' => '/links/',
          'file' => 'contacts.links.handler.php',
          'class' => 'shopContactsLinksHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
        1 => 
        array (
          'app_id' => 'blog',
          'regex' => '/links/',
          'file' => 'contacts.links.handler.php',
          'class' => 'blogContactsLinksHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
      ),
      'merge' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'regex' => '/merge/',
          'file' => 'contacts.merge.handler.php',
          'class' => 'shopContactsMergeHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
        1 => 
        array (
          'app_id' => 'blog',
          'regex' => '/merge/',
          'file' => 'contacts.merge.handler.php',
          'class' => 'blogContactsMergeHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
      ),
      'profile.tab' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'regex' => '/profile\\.tab/',
          'file' => 'contacts.profile.tab.handler.php',
          'class' => 'shopContactsProfileTabHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
        1 => 
        array (
          'app_id' => 'team',
          'regex' => '/profile\\.tab/',
          'file' => 'contacts.profile.tab.handler.php',
          'class' => 'teamContactsProfileTabHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
      ),
    ),
    'installer' => 
    array (
      'end_installation' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'regex' => '/end_installation/',
          'file' => 'installer.end_installation.handler.php',
          'class' => 'shopInstallerEnd_installationHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
      ),
    ),
    'site' => 
    array (
      'route_delete.after' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'regex' => '/route_delete\\.after/',
          'file' => 'site.route_delete.after.handler.php',
          'class' => 'shopSiteRoute_deleteAfterHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
      ),
      'route_save.after' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'regex' => '/route_save\\.after/',
          'file' => 'site.route_save.after.handler.php',
          'class' => 'shopSiteRoute_saveAfterHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
      ),
      'route_save.before' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'regex' => '/route_save\\.before/',
          'file' => 'site.route_save.before.handler.php',
          'class' => 'shopSiteRoute_saveBeforeHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
      ),
      'update.route' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'regex' => '/update\\.route/',
          'file' => 'site.update.route.handler.php',
          'class' => 'shopSiteUpdateRouteHandler',
          'method' => 
          array (
            0 => 'execute',
          ),
        ),
      ),
    ),
    'shop' => 
    array (
      'backend_welcome' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'plugin_id' => 'migrate',
          'regex' => '/backend_welcome/',
          'class' => 'shopMigratePlugin',
          'method' => 
          array (
            0 => 'backendWelcomeHandler',
          ),
        ),
      ),
      'frontend_error' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'plugin_id' => 'redirect',
          'regex' => '/frontend_error/',
          'class' => 'shopRedirectPlugin',
          'method' => 
          array (
            0 => 'frontendError',
          ),
        ),
      ),
      'frontend_search' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'plugin_id' => 'redirect',
          'regex' => '/frontend_search/',
          'class' => 'shopRedirectPlugin',
          'method' => 
          array (
            0 => 'frontendSearch',
          ),
        ),
      ),
      'frontend_head' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'plugin_id' => 'ordercall',
          'regex' => '/frontend_head/',
          'class' => 'shopOrdercallPlugin',
          'method' => 
          array (
            0 => 'frontendHead',
          ),
        ),
      ),
      'routing' => 
      array (
        0 => 
        array (
          'app_id' => 'shop',
          'plugin_id' => 'ordercall',
          'regex' => '/routing/',
          'class' => 'shopOrdercallPlugin',
          'method' => 
          array (
            0 => 'routing',
          ),
        ),
      ),
    ),
    'blog' => 
    array (
      'search_posts_backend' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'tag',
          'regex' => '/search_posts_backend/',
          'class' => 'blogTagPlugin',
          'method' => 
          array (
            0 => 'postSearch',
          ),
        ),
      ),
      'search_posts_frontend' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'tag',
          'regex' => '/search_posts_frontend/',
          'class' => 'blogTagPlugin',
          'method' => 
          array (
            0 => 'postSearch',
          ),
        ),
      ),
      'backend_sidebar' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'tag',
          'regex' => '/backend_sidebar/',
          'class' => 'blogTagPlugin',
          'method' => 
          array (
            0 => 'backendSidebar',
          ),
        ),
      ),
      'prepare_posts_backend' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'tag',
          'regex' => '/prepare_posts_backend/',
          'class' => 'blogTagPlugin',
          'method' => 
          array (
            0 => 'prepareBackendView',
          ),
        ),
      ),
      'prepare_posts_frontend' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'tag',
          'regex' => '/prepare_posts_frontend/',
          'class' => 'blogTagPlugin',
          'method' => 
          array (
            0 => 'prepareFrontendView',
          ),
        ),
      ),
      'backend_post_edit' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'tag',
          'regex' => '/backend_post_edit/',
          'class' => 'blogTagPlugin',
          'method' => 
          array (
            0 => 'backendPostEdit',
          ),
        ),
      ),
      'post_save' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'tag',
          'regex' => '/post_save/',
          'class' => 'blogTagPlugin',
          'method' => 
          array (
            0 => 'postSave',
          ),
        ),
      ),
      'post_publish' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'tag',
          'regex' => '/post_publish/',
          'class' => 'blogTagPlugin',
          'method' => 
          array (
            0 => 'postSave',
          ),
        ),
        1 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'emailsubscription',
          'regex' => '/post_publish/',
          'class' => 'blogEmailsubscriptionPlugin',
          'method' => 
          array (
            0 => 'postPublishAction',
          ),
        ),
      ),
      'post_shedule' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'tag',
          'regex' => '/post_shedule/',
          'class' => 'blogTagPlugin',
          'method' => 
          array (
            0 => 'postSave',
          ),
        ),
      ),
      'post_delete' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'tag',
          'regex' => '/post_delete/',
          'class' => 'blogTagPlugin',
          'method' => 
          array (
            0 => 'postDelete',
          ),
        ),
      ),
      'frontend_action_default' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'tag',
          'regex' => '/frontend_action_default/',
          'class' => 'blogTagPlugin',
          'method' => 
          array (
            0 => 'frontendSidebar',
          ),
        ),
      ),
      'frontend_action_post' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'tag',
          'regex' => '/frontend_action_post/',
          'class' => 'blogTagPlugin',
          'method' => 
          array (
            0 => 'frontendSidebar',
          ),
        ),
        1 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'troll',
          'regex' => '/frontend_action_post/',
          'class' => 'blogTrollPlugin',
          'method' => 
          array (
            0 => 'postView',
          ),
        ),
      ),
      'frontend_action_page' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'tag',
          'regex' => '/frontend_action_page/',
          'class' => 'blogTagPlugin',
          'method' => 
          array (
            0 => 'frontendSidebar',
          ),
        ),
      ),
      'routing' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'tag',
          'regex' => '/routing/',
          'class' => 'blogTagPlugin',
          'method' => 
          array (
            0 => 'routing',
          ),
        ),
      ),
      'backend_comments' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'troll',
          'regex' => '/backend_comments/',
          'class' => 'blogTrollPlugin',
          'method' => 
          array (
            0 => 'addControls',
          ),
        ),
      ),
      'backend_post' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'troll',
          'regex' => '/backend_post/',
          'class' => 'blogTrollPlugin',
          'method' => 
          array (
            0 => 'addControls',
          ),
        ),
      ),
      'prepare_comments_backend' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'troll',
          'regex' => '/prepare_comments_backend/',
          'class' => 'blogTrollPlugin',
          'method' => 
          array (
            0 => 'prepareView',
          ),
        ),
      ),
      'prepare_comments_frontend' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'troll',
          'regex' => '/prepare_comments_frontend/',
          'class' => 'blogTrollPlugin',
          'method' => 
          array (
            0 => 'prepareView',
          ),
        ),
      ),
      'cron_action' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'emailsubscription',
          'regex' => '/cron_action/',
          'class' => 'blogEmailsubscriptionPlugin',
          'method' => 
          array (
            0 => 'cronAction',
          ),
        ),
      ),
      'backend_stream' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'emailsubscription',
          'regex' => '/backend_stream/',
          'class' => 'blogEmailsubscriptionPlugin',
          'method' => 
          array (
            0 => 'blogAction',
          ),
        ),
      ),
      'backend_blog_edit' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'emailsubscription',
          'regex' => '/backend_blog_edit/',
          'class' => 'blogEmailsubscriptionPlugin',
          'method' => 
          array (
            0 => 'settingsAction',
          ),
        ),
      ),
      'contacts_delete' => 
      array (
        0 => 
        array (
          'app_id' => 'blog',
          'plugin_id' => 'emailsubscription',
          'regex' => '/contacts_delete/',
          'class' => 'blogEmailsubscriptionPlugin',
          'method' => 
          array (
            0 => 'contactsDelete',
          ),
        ),
      ),
    ),
  ),
);
