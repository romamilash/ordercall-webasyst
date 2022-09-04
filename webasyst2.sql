-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 04 2022 г., 22:23
-- Версия сервера: 5.6.51-log
-- Версия PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `webasyst2`
--
CREATE DATABASE IF NOT EXISTS `webasyst2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `webasyst2`;

-- --------------------------------------------------------

--
-- Структура таблицы `blog_blog`
--

CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `status` enum('public','private') NOT NULL DEFAULT 'public',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `color` varchar(50) NOT NULL DEFAULT '',
  `qty` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blog_blog`
--

INSERT INTO `blog_blog` (`id`, `url`, `name`, `status`, `icon`, `color`, `qty`, `sort`) VALUES
(1, 'mebelnaya-kompaniya', 'Мебельная компания', 'public', 'blog', 'b-white', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `blog_comment`
--

CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL,
  `left` int(11) DEFAULT NULL,
  `right` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` enum('approved','deleted') NOT NULL DEFAULT 'approved',
  `text` text NOT NULL,
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `auth_provider` varchar(100) DEFAULT NULL,
  `ip` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `blog_page`
--

CREATE TABLE `blog_page` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  `full_url` varchar(255) DEFAULT NULL,
  `content` mediumtext NOT NULL,
  `create_datetime` datetime NOT NULL,
  `update_datetime` datetime NOT NULL,
  `create_contact_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `blog_page_params`
--

CREATE TABLE `blog_page_params` (
  `page_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL DEFAULT '1',
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(150) DEFAULT '',
  `datetime` datetime DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `status` enum('draft','deadline','scheduled','published') NOT NULL DEFAULT 'draft',
  `text` mediumtext NOT NULL,
  `text_before_cut` text,
  `cut_link_label` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `comments_allowed` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` text,
  `meta_description` text,
  `album_id` int(11) DEFAULT NULL,
  `album_link_type` enum('blog','photos') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `blog_post_params`
--

CREATE TABLE `blog_post_params` (
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `blog_post_tag`
--

CREATE TABLE `blog_post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `blog_tag`
--

CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_abtest`
--

CREATE TABLE `shop_abtest` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_abtest_variants`
--

CREATE TABLE `shop_abtest_variants` (
  `id` int(11) UNSIGNED NOT NULL,
  `abtest_id` int(11) UNSIGNED NOT NULL,
  `code` varchar(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_affiliate_transaction`
--

CREATE TABLE `shop_affiliate_transaction` (
  `id` int(11) UNSIGNED NOT NULL,
  `contact_id` int(11) UNSIGNED NOT NULL,
  `create_datetime` datetime NOT NULL,
  `order_id` int(11) UNSIGNED DEFAULT NULL,
  `amount` decimal(15,4) NOT NULL,
  `balance` decimal(15,4) NOT NULL,
  `comment` text,
  `type` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_api_courier`
--

CREATE TABLE `shop_api_courier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `enabled` int(1) NOT NULL DEFAULT '1',
  `contact_id` int(11) DEFAULT NULL,
  `create_datetime` datetime NOT NULL,
  `orders_processed` int(11) NOT NULL DEFAULT '0',
  `note` text,
  `api_token` varchar(32) DEFAULT NULL,
  `api_pin` varchar(32) DEFAULT NULL,
  `api_pin_expire` datetime DEFAULT NULL,
  `api_last_use` datetime DEFAULT NULL,
  `all_storefronts` int(1) NOT NULL DEFAULT '1',
  `rights_order_edit` int(11) NOT NULL DEFAULT '0',
  `rights_customer_edit` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_api_courier_storefronts`
--

CREATE TABLE `shop_api_courier_storefronts` (
  `courier_id` int(11) NOT NULL,
  `storefront` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_cart_items`
--

CREATE TABLE `shop_cart_items` (
  `id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `sku_id` int(11) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `quantity` decimal(15,3) NOT NULL DEFAULT '1.000',
  `type` enum('product','service') NOT NULL DEFAULT 'product',
  `service_id` int(11) DEFAULT NULL,
  `service_variant_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_category`
--

CREATE TABLE `shop_category` (
  `id` int(11) NOT NULL,
  `left_key` int(11) DEFAULT NULL,
  `right_key` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` text,
  `meta_description` text,
  `type` int(1) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `full_url` varchar(255) DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `description` mediumtext,
  `conditions` text,
  `create_datetime` datetime NOT NULL,
  `edit_datetime` datetime DEFAULT NULL,
  `filter` text,
  `sort_products` varchar(32) DEFAULT NULL,
  `include_sub_categories` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_category_og`
--

CREATE TABLE `shop_category_og` (
  `category_id` int(11) NOT NULL,
  `property` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_category_params`
--

CREATE TABLE `shop_category_params` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_category_products`
--

CREATE TABLE `shop_category_products` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_category_routes`
--

CREATE TABLE `shop_category_routes` (
  `category_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_checkout_flow`
--

CREATE TABLE `shop_checkout_flow` (
  `id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL,
  `quarter` smallint(6) DEFAULT NULL,
  `month` smallint(6) DEFAULT NULL,
  `step` tinyint(2) NOT NULL DEFAULT '0',
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_contact_category_discount`
--

CREATE TABLE `shop_contact_category_discount` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `discount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_coupon`
--

CREATE TABLE `shop_coupon` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(32) NOT NULL,
  `type` varchar(3) NOT NULL,
  `limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL DEFAULT '0',
  `value` decimal(15,4) DEFAULT NULL,
  `url` text,
  `comment` text,
  `expire_datetime` datetime DEFAULT NULL,
  `create_datetime` datetime NOT NULL,
  `create_contact_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `products_hash` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_currency`
--

CREATE TABLE `shop_currency` (
  `code` char(3) NOT NULL,
  `rate` decimal(18,10) NOT NULL DEFAULT '1.0000000000',
  `rounding` decimal(8,2) DEFAULT NULL,
  `round_up_only` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_currency`
--

INSERT INTO `shop_currency` (`code`, `rate`, `rounding`, `round_up_only`, `sort`) VALUES
('RUB', '1.0000000000', NULL, 1, 0),
('USD', '65.0000000000', NULL, 1, 1),
('EUR', '75.0000000000', NULL, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_customer`
--

CREATE TABLE `shop_customer` (
  `contact_id` int(11) UNSIGNED NOT NULL,
  `total_spent` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `affiliate_bonus` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `number_of_orders` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_order_id` int(11) UNSIGNED DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_customers_filter`
--

CREATE TABLE `shop_customers_filter` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `hash` text,
  `create_datetime` datetime NOT NULL,
  `contact_id` int(11) NOT NULL,
  `mass_edit` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_customers_filter`
--

INSERT INTO `shop_customers_filter` (`id`, `name`, `hash`, `create_datetime`, `contact_id`, `mass_edit`, `icon`) VALUES
(1, 'Из Москвы', 'contact_info.address.country=rus&contact_info.address.region=rus:77', '2022-09-02 21:53:31', 1, 1, 'marker'),
(2, 'Из Вконтакте', 'app.referer=vk.com', '2022-09-02 21:53:31', 1, 1, 'vkontakte'),
(3, 'Из Фейсбука', 'app.referer=facebook.com', '2022-09-02 21:53:31', 1, 1, 'facebook'),
(4, 'Из Твиттера', 'app.referer=twitter.com', '2022-09-02 21:53:31', 1, 1, 'twitter'),
(5, 'Заказывали более месяца назад', 'app.last_order_datetime<=-30d', '2022-09-02 21:53:31', 1, 1, 'clock');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_discount_by_sum`
--

CREATE TABLE `shop_discount_by_sum` (
  `type` varchar(32) NOT NULL,
  `sum` decimal(15,4) NOT NULL,
  `discount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_expense`
--

CREATE TABLE `shop_expense` (
  `id` int(11) NOT NULL,
  `type` varchar(16) NOT NULL,
  `name` varchar(255) NOT NULL,
  `storefront` varchar(255) DEFAULT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  `note` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_feature`
--

CREATE TABLE `shop_feature` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(64) NOT NULL,
  `status` enum('public','hidden','private') NOT NULL DEFAULT 'public',
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `selectable` int(11) NOT NULL,
  `multiple` int(11) NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `available_for_sku` int(11) DEFAULT NULL,
  `default_unit` varchar(255) DEFAULT NULL,
  `builtin` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_feature`
--

INSERT INTO `shop_feature` (`id`, `parent_id`, `code`, `status`, `name`, `type`, `selectable`, `multiple`, `count`, `available_for_sku`, `default_unit`, `builtin`) VALUES
(1, NULL, 'weight', 'public', 'Вес', 'dimension.weight', 0, 0, 0, NULL, '', 1),
(2, NULL, 'length', 'public', 'Длина', 'dimension.length', 0, 0, 0, NULL, '', 0),
(3, NULL, 'color', 'public', 'Цвет', 'color', 1, 1, 10, 1, '', 0),
(4, NULL, 'gtin', 'private', 'GTIN', 'varchar', 0, 0, 0, 1, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_feature_values_color`
--

CREATE TABLE `shop_feature_values_color` (
  `id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `code` mediumint(8) UNSIGNED DEFAULT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_feature_values_color`
--

INSERT INTO `shop_feature_values_color` (`id`, `feature_id`, `sort`, `code`, `value`) VALUES
(1, 3, 1, 16777215, 'белый'),
(2, 3, 2, 16776960, 'желтый'),
(3, 3, 3, 65280, 'зеленый'),
(4, 3, 4, 255, 'синий'),
(5, 3, 5, 9849600, 'коричневый'),
(6, 3, 6, 16711680, 'красный'),
(7, 3, 7, 16753920, 'оранжевый'),
(8, 3, 8, 12632256, 'серебро'),
(9, 3, 9, 8421504, 'серый'),
(10, 3, 10, 0, 'черный');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_feature_values_dimension`
--

CREATE TABLE `shop_feature_values_dimension` (
  `id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `value` double NOT NULL,
  `unit` varchar(255) NOT NULL,
  `type` varchar(16) NOT NULL,
  `value_base_unit` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_feature_values_double`
--

CREATE TABLE `shop_feature_values_double` (
  `id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `value` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_feature_values_range`
--

CREATE TABLE `shop_feature_values_range` (
  `id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `begin` double DEFAULT NULL,
  `end` double DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  `type` varchar(16) NOT NULL,
  `begin_base_unit` double DEFAULT NULL,
  `end_base_unit` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_feature_values_text`
--

CREATE TABLE `shop_feature_values_text` (
  `id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_feature_values_varchar`
--

CREATE TABLE `shop_feature_values_varchar` (
  `id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_followup`
--

CREATE TABLE `shop_followup` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `delay` int(10) UNSIGNED NOT NULL,
  `first_order_only` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `same_state_id` tinyint(4) DEFAULT '0',
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `last_cron_time` datetime NOT NULL,
  `from` varchar(32) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `transport` enum('email','sms') NOT NULL DEFAULT 'email',
  `state_id` varchar(32) DEFAULT 'paid'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_followup_sources`
--

CREATE TABLE `shop_followup_sources` (
  `followup_id` int(11) NOT NULL,
  `source` varchar(510) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_importexport`
--

CREATE TABLE `shop_importexport` (
  `id` int(11) NOT NULL,
  `plugin` varchar(64) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `config` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_notification`
--

CREATE TABLE `shop_notification` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `event` varchar(64) NOT NULL,
  `transport` enum('email','sms','http') NOT NULL DEFAULT 'email',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_notification`
--

INSERT INTO `shop_notification` (`id`, `name`, `event`, `transport`, `status`) VALUES
(1, 'Заказ оформлен (Покупатель)', 'order.create', 'email', 1),
(2, 'Заказ оформлен (Администратор магазина)', 'order.create', 'email', 1),
(3, 'Заказ подтвержден и принят в обработку (Покупатель)', 'order.process', 'email', 1),
(4, 'Заказ отправлен (Покупатель)', 'order.ship', 'email', 1),
(5, 'Заказ удален (Покупатель)', 'order.delete', 'email', 1),
(6, 'Добавлен комментарий к заказу (Покупатель)', 'order.comment', 'email', 1),
(7, 'Изменены параметры доставки (Покупатель)', 'order.editshippingdetails', 'email', 1),
(8, 'Заказ был объединен с другим (Покупатель)', 'order.settle', 'email', 1),
(9, 'Возврат (Покупатель)', 'order.refund', 'email', 1),
(10, 'Заказ отредактирован (Покупатель)', 'order.edit', 'email', 1),
(11, 'Заказ восстановлен (Покупатель)', 'order.restore', 'email', 1),
(12, 'Заказ выполнен (Покупатель)', 'order.complete', 'email', 1),
(13, 'Сообщение отправлено (Покупатель)', 'order.message', 'email', 1),
(14, 'Ответ платежной системы (callback) (Покупатель)', 'order.callback', 'email', 1),
(15, 'Заказ оплачен (Покупатель)', 'order.pay', 'email', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_notification_params`
--

CREATE TABLE `shop_notification_params` (
  `notification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_notification_params`
--

INSERT INTO `shop_notification_params` (`notification_id`, `name`, `value`) VALUES
(1, 'description', 'Оформление заказа на витрине или создание заказа администратором в бекенде магазина.'),
(1, 'subject', 'Новый заказ {$order.id}'),
(1, 'body', '{strip}\n\n{$_background_color = \"#eeeeee\"}\n{$_products_bg = \"#ffffff\"}\n{$_bonus_background = \"#ffffcc\"}\n{$_button_background = \"#fcd630\"}\n{$_main_border_color = \"#cccccc\"}\n{$_border_color = \"#dddddd\"}\n\n<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"{$_background_color}\" style=\"\n        font-family:Helvetica,Arial,sans-serif;\n        letter-spacing:normal;\n        text-indent:0;\n        text-transform:none;\n        word-spacing:0;\n        background-color:rgb(232,232,232);\n        border-collapse:collapse\n    \">\n    <tr>\n        <td style=\"padding: 20px;\">\n            <table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"\n                width: 600px !important;\n                background-color:#fff;\n                border:1px solid {$_main_border_color};\n                border-radius: 4px;\n                margin:auto;\n                overflow: hidden;\n                \">\n\n                <!-- HEADER -->\n                <tr>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                    <td height=\"70\" align=\"center\" valign=\"middle\" style=\"border: solid {$_border_color}; border-width: 0 0 1px 0;\">\n                        <table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100% !important;\">\n                            <tr>\n                                <td>\n                                    <font style=\"font-weight: bold; font-size: 20px; margin: 0 12px 0 0;\"><b>{$order.id}</b></font>\n                                    <font style=\"color: #888\">{$order.create_datetime|wa_date:\'humandate\'}</font>\n                                </td>\n                                <td style=\"text-align: right;\">\n                                    <font style=\"{if !empty($order.style)}{$order.style}{/if}\">{$status}</font>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                </tr>\n\n                <!-- STATUS -->\n                <tr>\n                    <td></td>\n                    <td>\n                        <table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse\">\n                            <tr>\n                                <td>\n                                    <p style=\"\n                                        color:rgb(48,48,48);\n                                        font-style:normal;\n                                        font-variant:normal;\n                                        font-weight:normal;\n                                        font-size:14px;\n                                        line-height:16px;\n                                        font-family:Helvetica,Arial,sans-serif;\n                                        margin: 20px 0 0;\n                                        text-align:center;\n                                        \">Спасибо за покупку в магазине «{$wa->shop->settings(\"name\")}»!</p>\n                                    <p align=\"center\" style=\"margin: 20px 0;\">\n                                        <a href=\"{$order_url}\" style=\"\n                                        text-decoration:none;\n                                        font-style:normal;\n                                        font-variant:normal;\n                                        font-weight:normal;font-size:17px;line-height:40px;font-family:Helvetica,Arial,sans-serif;color:rgb(48,48,48);display:block;\n                                        width:225px;\n                                        background: {$_button_background};\n                                        border-radius: 4px;\n                                        \" target=\"_blank\">[`Order status`]</a>\n                                    </p>\n                                    {if !empty($order.params.auth_pin)}\n                                        <p style=\"\n                                            color:rgb(48,48,48);\n                                            font-style:normal;\n                                            font-variant:normal;\n                                            font-weight:normal;\n                                            font-size:14px;\n                                            line-height:16px;\n                                            font-family:Helvetica,Arial,sans-serif;\n                                            margin: 20px 0;\n                                            text-align:center;\n                                            text-transform: uppercase;\n                                            \">\n                                            PIN: <b>{$order.params.auth_pin}</b>\n                                        </p>\n                                    {/if}\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- LIST -->\n                <tr>\n                    <td bgcolor=\"{$_products_bg}\">\n                    </td>\n                    <td bgcolor=\"{$_products_bg}\" style=\"\">\n                        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                            {$subtotal = 0}\n                            {foreach $order.items as $item}\n                                {$_border_style = \"border: 0;\"}\n                                {$_is_service = ($item.type == \"service\")}\n                                {if $item@index > 0}\n                                    {$_border_style = \"border: solid `{$_border_color}`; border-width: 1px 0  0;\"}\n                                {/if}\n                                <tr>\n                                    <td width=\"40\" style=\"padding: 8px 4px 8px 0; {$_border_style}\">\n                                        {if !$_is_service && !empty($item.product.image.crop_url)}\n                                            <img src=\"{$item.product.image.crop_url}\" alt=\"\" style=\"width: 48px; height: 48px; vertical-align: middle;\">\n                                        {/if}\n                                    </td>\n                                    <td style=\"padding: 8px 0 8px 4px; {$_border_style}\">\n                                        <p style=\"\n                                            font-style:normal;\n                                            font-variant:normal;\n                                            font-weight:normal;\n                                            font-size: {if $_is_service}12{else}14{/if}px;\n                                            line-height:16px;\n                                            font-family:Helvetica,Arial,sans-serif;\n                                            \">\n                                            {if !$_is_service}\n                                                <a href=\"{$item.product.frontend_url|default:\'javascript:void(0);\'}\">\n                                                    <font style=\"text-decoration: underline;\">{if $_is_service}+&nbsp;{/if}{$item.name|escape}</font>\n                                                    {if !empty($item.sku_code)} <font style=\"color: #aaaaaa; font-size: 0.8em;\">{$item.sku_code|escape}</font>{/if}\n                                                </a>\n                                            {else}\n                                                {if $_is_service}+&nbsp;{/if}{$item.name|escape}\n                                                {if !empty($item.sku_code)} <font style=\"color: #aaaaaa; font-size: 0.8em;\">{$item.sku_code|escape}</font>{/if}\n                                            {/if}\n                                            {if !empty($item.download_link)}<a href=\"{$item.download_link}\"><strong>Скачать</strong></a>{/if}\n                                        </p>\n                                    </td>\n                                    <td style=\"padding: 8px 4px 8px 4px; white-space: nowrap; text-align: right; {$_border_style}\">\n                                        <font style=\"color:#aaa;\">{wa_currency($item.price, $order.currency)}&nbsp;&times;</font>&nbsp;{$item.quantity}\n                                    </td>\n                                    <td style=\"padding: 8px 0 8px 8px; white-space: nowrap; text-align: right; {$_border_style}\">\n                                        <font style=\"font-weight: bold;\">{wa_currency($item.price * $item.quantity, $order.currency)}</font>\n                                    </td>\n                                </tr>\n                                {$subtotal = $subtotal + $item.price * $item.quantity}\n                            {/foreach}\n                        </table>\n                    </td>\n                    <td bgcolor=\"{$_products_bg}\"></td>\n                </tr>\n                <tr>\n                    <td></td>\n                    <td style=\"padding: 20px 0; border-bottom: 1px solid {$_border_color}\">\n                        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse; text-align: right;\">\n                            <tr>\n                                <td style=\"padding: 8px 0;\">Подытог</td>\n                                <td style=\"white-space: nowrap; width: 20%; padding: 8px 0 8px 8px;\">{wa_currency($subtotal, $order.currency)}</td>\n                            </tr>\n                            {if !empty((float)$order.discount)}\n                                <tr>\n                                    <td style=\"padding: 8px 0;\">Скидка</td>\n                                    <td style=\"white-space: nowrap; padding: 8px 0 8px 8px;\">− {wa_currency($order.discount, $order.currency)}</td>\n                                </tr>\n                            {/if}\n                            <tr>\n                                <td style=\"padding: 8px 0;\">Доставка</td>\n                                <td style=\"white-space: nowrap; padding: 8px 0 8px 8px;\">\n                                    {if empty((float)$order.shipping)}\n                                        [`free`]\n                                    {else}\n                                        {wa_currency($order.shipping, $order.currency)}\n                                    {/if}\n                                </td>\n                            </tr>\n                            {if !empty($order.tax)}\n                                <tr>\n                                    <td style=\"padding: 8px 0;\">Налог</td>\n                                    <td style=\"white-space: nowrap; padding: 8px 0 8px 8px;\">{wa_currency($order.tax, $order.currency)}</td>\n                                </tr>\n                            {/if}\n                            <tr>\n                                <td style=\"padding: 8px 0;\">\n                                    <h3 style=\"font-size:18px;margin:0;\">Итого</h3>\n                                </td>\n                                <td style=\"white-space: nowrap; padding: 8px 0 8px 8px;\">\n                                    <h3 style=\"font-size:18px;margin:0;\">{wa_currency($order.total, $order.currency)}</h3>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- DETAILS -->\n                <tr>\n                    <td style=\"border: 0;\">\n                    </td>\n                    <td style=\"border: 0; padding: 16px 0 0;\">\n                        {if strlen($customer->get(\'email\', \'default\'))}\n                            <p style=\"margin: 10px 0 0;\">\n                                [`Email`]: {$customer->get(\'email\', \'default\')|escape}\n                            </p>\n                        {/if}\n                        {if strlen($customer->get(\'phone\', \'default\'))}\n                            <p style=\"margin: 10px 0 0;\">\n                                [`Phone`]: {$customer->get(\'phone\', \'default\')|escape}\n                            </p>\n                        {/if}\n                    </td>\n                    <td style=\"border: 0;\">\n                    </td>\n                </tr>\n                {if $order.comment}\n                    <tr>\n                        <td style=\"border: 0;\">\n                        </td>\n                        <td style=\"border: 0; padding: 16px 0 0;\">\n                            <h3>Комментарий к заказу</h3>\n                            <p style=\"margin: 10px 0 0;\">\n                                <pre>{$order.comment|escape}</pre>\n                            </p>\n                        </td>\n                        <td style=\"border: 0;\">\n                        </td>\n                    </tr>\n                {/if}\n                <tr>\n                    <td style=\"border: 0;\">\n                    </td>\n                    <td style=\"border: 0; padding: 16px 0;\">\n                        <b>\n                            {if !empty($order.params.shipping_name)}\n                                <font style=\"color: #aaa;\">Доставка&nbsp;—</font>&nbsp;{$order.params.shipping_name}\n                            {else}\n                                <font style=\"color: #aaa;\">Доставка</font>\n                            {/if}\n                        </b>\n                        <p style=\"margin: 10px 0 0;\">\n                            {$customer.name|escape}<br>{$shipping_address}\n                        </p>\n                    </td>\n                    <td style=\"border: 0;\">\n                    </td>\n                </tr>\n                <tr>\n                    <td style=\"border: 0;\">\n                    </td>\n                    <td style=\"border: 0; padding: 16px 0;\">\n                        <b>\n                            {if !empty($order.params.payment_name)}\n                                <font style=\"color: #aaa;\">Оплата&nbsp;—</font>&nbsp;{$order.params.payment_name}\n                            {else}\n                                <font style=\"color: #aaa;\">Оплата</font>\n                            {/if}\n                        </b>\n                        <p style=\"margin: 10px 0 0;\">{$customer.name|escape}<br>{$billing_address}</p>\n                    </td>\n                    <td style=\"border: 0;\">\n                    </td>\n                </tr>\n\n                <!-- BONUS POINTS -->\n                {if $is_affiliate_enabled}\n                    <tr>\n                        <td style=\"background: {$_bonus_background};\"></td>\n                        <td height=\"50\" align=\"center\" style=\"background: {$_bonus_background}; padding: 16px 0;\">\n                            {if $add_affiliate_bonus}\n                                <p style=\"\n                                    font-style:normal;\n                                    font-variant:normal;\n                                    font-size:16px;\n                                    line-height:16px;\n                                    font-family:Helvetica,Arial,sans-serif;\n                                    margin: 0;\n                                    color:rgb(48,48,48);\n                                        \">\n                                    <b>{sprintf(\"[`This order will add +%s points to your affiliate bonus.`]\", round($add_affiliate_bonus, 2))}</b>\n                                </p>\n                                <p style=\"margin: 16px 0 0;\">\n                                {if $signup_url}\n                                    [`Registered customers apply for affiliate bonuses and discounts on future orders.`]\n&nbsp;<a href=\"{$signup_url}\" target=\"_blank\">[`Create permanent user account`]</a>\n                                {else}\n                                    {sprintf(\'[`When this order is paid, your affiliate bonus will be increased to %s.`]\', round($customer.affiliate_bonus + $add_affiliate_bonus, 2))}\n                                {/if}\n                                </p>\n\n                            {/if}\n                        </td>\n                        <td style=\"background: {$_bonus_background}\"></td>\n                    </tr>\n                {else}\n                    <br>\n                    <br>\n                {/if}\n            </table>\n\n            <!-- BOTTOM SITE INFORMATION -->\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                <tr>\n                    <td valign=\"middle\" align=\"center\" height=\"45\">\n                        <p style=\"\n                            font-style:normal;\n                            font-variant:normal;\n                            font-weight:normal;\n                            font-size:13px;\n                            line-height:16px;\n                            font-family:Arial,sans-serif,Helvetica;\n                            color:rgb(147,154,164);\n                            margin: 20px 0 0;\n                            \">\n                            &copy;&nbsp;{date(\"Y\")}&nbsp;{$wa->shop->settings(\"name\")}<br>\n                            <a href=\"http://{$order.params.storefront_decoded|default:\'\'}\" target=\"_blank\">{$order.params.storefront_decoded|default:\'\'}</a>\n                        </p>\n                    </td>\n                </tr>\n            </table>\n\n        </td>\n    </tr>\n</table>\n\n{/strip}\n'),
(1, 'sms', 'Ваш заказ успешно оформлен. Мы свяжемся с вами в ближайшее время. Ваш номер заказа: {$order.id}. Сумма заказа: {wa_currency($order.total, $order.currency)}'),
(1, 'to', 'customer'),
(2, 'description', 'Оформление заказа на витрине или создание заказа администратором в бекенде магазина.'),
(2, 'subject', 'Новый заказ {$order.id}'),
(2, 'body', '{strip}\n\n{$_background_color = \"#eeeeee\"}\n{$_products_bg = \"#ffffff\"}\n{$_bonus_background = \"#ffffcc\"}\n{$_button_background = \"#fcd630\"}\n{$_main_border_color = \"#cccccc\"}\n{$_border_color = \"#dddddd\"}\n\n<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"{$_background_color}\" style=\"\n        font-family:Helvetica,Arial,sans-serif;\n        letter-spacing:normal;\n        text-indent:0;\n        text-transform:none;\n        word-spacing:0;\n        background-color:rgb(232,232,232);\n        border-collapse:collapse\n    \">\n    <tr>\n        <td style=\"padding: 20px;\">\n            <table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"\n                width: 600px !important;\n                background-color:#fff;\n                border:1px solid {$_main_border_color};\n                border-radius: 4px;\n                margin:auto;\n                overflow: hidden;\n                \">\n\n                <!-- HEADER -->\n                <tr>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                    <td height=\"70\" align=\"center\" valign=\"middle\" style=\"border: solid {$_border_color}; border-width: 0 0 1px 0;\">\n                        <table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100% !important;\">\n                            <tr>\n                                <td>\n                                    <font style=\"font-weight: bold; font-size: 20px; margin: 0 12px 0 0;\"><b>{$order.id}</b></font>\n                                    <font style=\"color: #888\">{$order.create_datetime|wa_date:\'humandate\'}</font>\n                                </td>\n                                <td style=\"text-align: right;\">\n                                    <font style=\"{if !empty($order.style)}{$order.style}{/if}\">{$status}</font>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                </tr>\n\n                <!-- STATUS -->\n                <tr>\n                    <td></td>\n                    <td>\n                        <table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse\">\n                            <tr>\n                                <td>\n                                    <p style=\"\n                                        color:rgb(48,48,48);\n                                        font-style:normal;\n                                        font-variant:normal;\n                                        font-weight:normal;\n                                        font-size:14px;\n                                        line-height:16px;\n                                        font-family:Helvetica,Arial,sans-serif;\n                                        margin: 20px 0 0;\n                                        text-align:center;\n                                        \">Спасибо за покупку в магазине «{$wa->shop->settings(\"name\")}»!</p>\n                                    <p align=\"center\" style=\"margin: 20px 0;\">\n                                        <a href=\"{$order_url}\" style=\"\n                                        text-decoration:none;\n                                        font-style:normal;\n                                        font-variant:normal;\n                                        font-weight:normal;font-size:17px;line-height:40px;font-family:Helvetica,Arial,sans-serif;color:rgb(48,48,48);display:block;\n                                        width:225px;\n                                        background: {$_button_background};\n                                        border-radius: 4px;\n                                        \" target=\"_blank\">[`Order status`]</a>\n                                    </p>\n                                    {if !empty($order.params.auth_pin)}\n                                        <p style=\"\n                                            color:rgb(48,48,48);\n                                            font-style:normal;\n                                            font-variant:normal;\n                                            font-weight:normal;\n                                            font-size:14px;\n                                            line-height:16px;\n                                            font-family:Helvetica,Arial,sans-serif;\n                                            margin: 20px 0;\n                                            text-align:center;\n                                            text-transform: uppercase;\n                                            \">\n                                            PIN: <b>{$order.params.auth_pin}</b>\n                                        </p>\n                                    {/if}\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- LIST -->\n                <tr>\n                    <td bgcolor=\"{$_products_bg}\">\n                    </td>\n                    <td bgcolor=\"{$_products_bg}\" style=\"\">\n                        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                            {$subtotal = 0}\n                            {foreach $order.items as $item}\n                                {$_border_style = \"border: 0;\"}\n                                {$_is_service = ($item.type == \"service\")}\n                                {if $item@index > 0}\n                                    {$_border_style = \"border: solid `{$_border_color}`; border-width: 1px 0  0;\"}\n                                {/if}\n                                <tr>\n                                    <td width=\"40\" style=\"padding: 8px 4px 8px 0; {$_border_style}\">\n                                        {if !$_is_service && !empty($item.product.image.crop_url)}\n                                            <img src=\"{$item.product.image.crop_url}\" alt=\"\" style=\"width: 48px; height: 48px; vertical-align: middle;\">\n                                        {/if}\n                                    </td>\n                                    <td style=\"padding: 8px 0 8px 4px; {$_border_style}\">\n                                        <p style=\"\n                                            font-style:normal;\n                                            font-variant:normal;\n                                            font-weight:normal;\n                                            font-size: {if $_is_service}12{else}14{/if}px;\n                                            line-height:16px;\n                                            font-family:Helvetica,Arial,sans-serif;\n                                            \">\n                                            {if !$_is_service}\n                                                <a href=\"{$item.product.frontend_url|default:\'javascript:void(0);\'}\">\n                                                    <font style=\"text-decoration: underline;\">{if $_is_service}+&nbsp;{/if}{$item.name|escape}</font>\n                                                    {if !empty($item.sku_code)} <font style=\"color: #aaaaaa; font-size: 0.8em;\">{$item.sku_code|escape}</font>{/if}\n                                                </a>\n                                            {else}\n                                                {if $_is_service}+&nbsp;{/if}{$item.name|escape}\n                                                {if !empty($item.sku_code)} <font style=\"color: #aaaaaa; font-size: 0.8em;\">{$item.sku_code|escape}</font>{/if}\n                                            {/if}\n                                            {if !empty($item.download_link)}<a href=\"{$item.download_link}\"><strong>Скачать</strong></a>{/if}\n                                        </p>\n                                    </td>\n                                    <td style=\"padding: 8px 4px 8px 4px; white-space: nowrap; text-align: right; {$_border_style}\">\n                                        <font style=\"color:#aaa;\">{wa_currency($item.price, $order.currency)}&nbsp;&times;</font>&nbsp;{$item.quantity}\n                                    </td>\n                                    <td style=\"padding: 8px 0 8px 8px; white-space: nowrap; text-align: right; {$_border_style}\">\n                                        <font style=\"font-weight: bold;\">{wa_currency($item.price * $item.quantity, $order.currency)}</font>\n                                    </td>\n                                </tr>\n                                {$subtotal = $subtotal + $item.price * $item.quantity}\n                            {/foreach}\n                        </table>\n                    </td>\n                    <td bgcolor=\"{$_products_bg}\"></td>\n                </tr>\n                <tr>\n                    <td></td>\n                    <td style=\"padding: 20px 0; border-bottom: 1px solid {$_border_color}\">\n                        <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse; text-align: right;\">\n                            <tr>\n                                <td style=\"padding: 8px 0;\">Подытог</td>\n                                <td style=\"white-space: nowrap; width: 20%; padding: 8px 0 8px 8px;\">{wa_currency($subtotal, $order.currency)}</td>\n                            </tr>\n                            {if !empty((float)$order.discount)}\n                                <tr>\n                                    <td style=\"padding: 8px 0;\">Скидка</td>\n                                    <td style=\"white-space: nowrap; padding: 8px 0 8px 8px;\">− {wa_currency($order.discount, $order.currency)}</td>\n                                </tr>\n                            {/if}\n                            <tr>\n                                <td style=\"padding: 8px 0;\">Доставка</td>\n                                <td style=\"white-space: nowrap; padding: 8px 0 8px 8px;\">\n                                    {if empty((float)$order.shipping)}\n                                        [`free`]\n                                    {else}\n                                        {wa_currency($order.shipping, $order.currency)}\n                                    {/if}\n                                </td>\n                            </tr>\n                            {if !empty($order.tax)}\n                                <tr>\n                                    <td style=\"padding: 8px 0;\">Налог</td>\n                                    <td style=\"white-space: nowrap; padding: 8px 0 8px 8px;\">{wa_currency($order.tax, $order.currency)}</td>\n                                </tr>\n                            {/if}\n                            <tr>\n                                <td style=\"padding: 8px 0;\">\n                                    <h3 style=\"font-size:18px;margin:0;\">Итого</h3>\n                                </td>\n                                <td style=\"white-space: nowrap; padding: 8px 0 8px 8px;\">\n                                    <h3 style=\"font-size:18px;margin:0;\">{wa_currency($order.total, $order.currency)}</h3>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- DETAILS -->\n                <tr>\n                    <td style=\"border: 0;\">\n                    </td>\n                    <td style=\"border: 0; padding: 16px 0 0;\">\n                        {if strlen($customer->get(\'email\', \'default\'))}\n                            <p style=\"margin: 10px 0 0;\">\n                                [`Email`]: {$customer->get(\'email\', \'default\')|escape}\n                            </p>\n                        {/if}\n                        {if strlen($customer->get(\'phone\', \'default\'))}\n                            <p style=\"margin: 10px 0 0;\">\n                                [`Phone`]: {$customer->get(\'phone\', \'default\')|escape}\n                            </p>\n                        {/if}\n                    </td>\n                    <td style=\"border: 0;\">\n                    </td>\n                </tr>\n                {if $order.comment}\n                    <tr>\n                        <td style=\"border: 0;\">\n                        </td>\n                        <td style=\"border: 0; padding: 16px 0 0;\">\n                            <h3>Комментарий к заказу</h3>\n                            <p style=\"margin: 10px 0 0;\">\n                                <pre>{$order.comment|escape}</pre>\n                            </p>\n                        </td>\n                        <td style=\"border: 0;\">\n                        </td>\n                    </tr>\n                {/if}\n                <tr>\n                    <td style=\"border: 0;\">\n                    </td>\n                    <td style=\"border: 0; padding: 16px 0;\">\n                        <b>\n                            {if !empty($order.params.shipping_name)}\n                                <font style=\"color: #aaa;\">Доставка&nbsp;—</font>&nbsp;{$order.params.shipping_name}\n                            {else}\n                                <font style=\"color: #aaa;\">Доставка</font>\n                            {/if}\n                        </b>\n                        <p style=\"margin: 10px 0 0;\">\n                            {$customer.name|escape}<br>{$shipping_address}\n                        </p>\n                    </td>\n                    <td style=\"border: 0;\">\n                    </td>\n                </tr>\n                <tr>\n                    <td style=\"border: 0;\">\n                    </td>\n                    <td style=\"border: 0; padding: 16px 0;\">\n                        <b>\n                            {if !empty($order.params.payment_name)}\n                                <font style=\"color: #aaa;\">Оплата&nbsp;—</font>&nbsp;{$order.params.payment_name}\n                            {else}\n                                <font style=\"color: #aaa;\">Оплата</font>\n                            {/if}\n                        </b>\n                        <p style=\"margin: 10px 0 0;\">{$customer.name|escape}<br>{$billing_address}</p>\n                    </td>\n                    <td style=\"border: 0;\">\n                    </td>\n                </tr>\n\n                <!-- BONUS POINTS -->\n                {if $is_affiliate_enabled}\n                    <tr>\n                        <td style=\"background: {$_bonus_background};\"></td>\n                        <td height=\"50\" align=\"center\" style=\"background: {$_bonus_background}; padding: 16px 0;\">\n                            {if $add_affiliate_bonus}\n                                <p style=\"\n                                    font-style:normal;\n                                    font-variant:normal;\n                                    font-size:16px;\n                                    line-height:16px;\n                                    font-family:Helvetica,Arial,sans-serif;\n                                    margin: 0;\n                                    color:rgb(48,48,48);\n                                        \">\n                                    <b>{sprintf(\"[`This order will add +%s points to your affiliate bonus.`]\", round($add_affiliate_bonus, 2))}</b>\n                                </p>\n                                <p style=\"margin: 16px 0 0;\">\n                                {if $signup_url}\n                                    [`Registered customers apply for affiliate bonuses and discounts on future orders.`]\n&nbsp;<a href=\"{$signup_url}\" target=\"_blank\">[`Create permanent user account`]</a>\n                                {else}\n                                    {sprintf(\'[`When this order is paid, your affiliate bonus will be increased to %s.`]\', round($customer.affiliate_bonus + $add_affiliate_bonus, 2))}\n                                {/if}\n                                </p>\n\n                            {/if}\n                        </td>\n                        <td style=\"background: {$_bonus_background}\"></td>\n                    </tr>\n                {else}\n                    <br>\n                    <br>\n                {/if}\n            </table>\n\n            <!-- BOTTOM SITE INFORMATION -->\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                <tr>\n                    <td valign=\"middle\" align=\"center\" height=\"45\">\n                        <p style=\"\n                            font-style:normal;\n                            font-variant:normal;\n                            font-weight:normal;\n                            font-size:13px;\n                            line-height:16px;\n                            font-family:Arial,sans-serif,Helvetica;\n                            color:rgb(147,154,164);\n                            margin: 20px 0 0;\n                            \">\n                            &copy;&nbsp;{date(\"Y\")}&nbsp;{$wa->shop->settings(\"name\")}<br>\n                            <a href=\"http://{$order.params.storefront_decoded|default:\'\'}\" target=\"_blank\">{$order.params.storefront_decoded|default:\'\'}</a>\n                        </p>\n                    </td>\n                </tr>\n            </table>\n\n        </td>\n    </tr>\n</table>\n\n{/strip}\n'),
(2, 'sms', 'Ваш заказ успешно оформлен. Мы свяжемся с вами в ближайшее время. Ваш номер заказа: {$order.id}. Сумма заказа: {wa_currency($order.total, $order.currency)}'),
(2, 'to', 'admin'),
(3, 'description', 'Выполнение действия «В обработку» в бекенде магазина.'),
(3, 'subject', 'Заказ {$order.id} подтвержден'),
(3, 'body', '{strip}\n\n{$_background_color = \"#eeeeee\"}\n{$_products_bg = \"#ffffff\"}\n{$_bonus_background = \"#ffffcc\"}\n{$_button_background = \"#fcd630\"}\n{$_main_border_color = \"#cccccc\"}\n{$_border_color = \"#dddddd\"}\n\n<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"{$_background_color}\" style=\"\nfont-family:Helvetica,Arial,sans-serif;\nletter-spacing:normal;\ntext-indent:0;\ntext-transform:none;\nword-spacing:0;\nbackground-color:rgb(232,232,232);\nborder-collapse:collapse\n\">\n    <tr>\n        <td style=\"padding: 20px;\">\n            <table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"\n                width: 600px !important;\n                background-color:#fff;\n                border:1px solid {$_main_border_color};\n                border-radius: 4px;\n                margin:auto;\n                overflow: hidden;\n                \">\n\n                <!-- HEADER -->\n                <tr>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                    <td height=\"70\" align=\"center\" valign=\"middle\" style=\"border: solid {$_border_color}; border-width: 0 0 1px 0;\">\n                        <table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100% !important;\">\n                            <tr>\n                                <td>\n                                    <font style=\"font-weight: bold; font-size: 20px; margin: 0 12px 0 0;\"><b>{$order.id}</b></font>\n                                    <font style=\"color: #888\">{$order.create_datetime|wa_date:\'humandate\'}</font>\n                                </td>\n                                <td style=\"text-align: right;\">\n                                    <font style=\"{if !empty($order.style)}{$order.style}{/if}\">{$status}</font>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                </tr>\n\n                <!-- STATUS -->\n                <tr>\n                    <td></td>\n                    <td>\n                        <table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse\">\n                            <tr>\n                                <td>\n                                    <p style=\"\n                            color:rgb(48,48,48);\n                            font-style:normal;\n                            font-variant:normal;\n                            font-weight:normal;\n                            font-size:14px;\n                            line-height:16px;\n                            font-family:Helvetica,Arial,sans-serif;\n                            margin: 20px 0 0;\n                            text-align:center;\n                            \">Спасибо за покупку в магазине «{$wa->shop->settings(\"name\")}»!</p>\n                                    <p align=\"center\" style=\"margin: 20px 0;\">\n                                        <a href=\"{$order_url}\" style=\"\n                                            text-decoration:none;\n                                            font-style:normal;\n                                            font-variant:normal;\n                                            font-weight:normal;font-size:17px;line-height:40px;font-family:Helvetica,Arial,sans-serif;color:rgb(48,48,48);display:block;\n                                            width:225px;\n                                            background: {$_button_background};\n                                            border-radius: 4px;\n                                            \" target=\"_blank\">Статус заказа</a>\n                                    </p>\n                                    {if !empty($order.params.auth_pin)}\n                                        <p style=\"\n                                color:rgb(48,48,48);\n                                font-style:normal;\n                                font-variant:normal;\n                                font-weight:normal;\n                                font-size:14px;\n                                line-height:16px;\n                                font-family:Helvetica,Arial,sans-serif;\n                                margin: 20px 0;\n                                text-align:center;\n                                text-transform: uppercase;\n                                \">\n                                            PIN: <b>{$order.params.auth_pin}</b>\n                                        </p>\n                                    {/if}\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                    <td bgcolor=\"{$_bonus_background}\" style=\"padding: 12px 0 12px 0;\">\n                        <p>Здравствуйте, {$customer->get(\"name\", \"html\")}!</p>\n                        <p>Ваш заказ {$order.id} подтвержден и принят в обработку.</p>\n                    </td>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td></td>\n                    <td style=\"padding: 24px 0 36px 0;\">\n                        <h3 style=\"margin: 0;\">Контактная информация</h3>\n                        {if strlen($wa->shop->settings(\"email\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Email: <a href=\"mailto:{$wa->shop->settings(\"email\")}\">{$wa->shop->settings(\"email\")}</a>\n                            </p>\n                        {/if}\n                        {if strlen($wa->shop->settings(\"phone\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Телефон: {$wa->shop->settings(\"phone\")}\n                            </p>\n                        {/if}\n                    </td>\n                    <td></td>\n                </tr>\n            </table>\n\n            <!-- BOTTOM SITE INFORMATION -->\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                <tr>\n                    <td valign=\"middle\" align=\"center\" height=\"45\">\n                        <p style=\"\n                font-style:normal;\n                font-variant:normal;\n                font-weight:normal;\n                font-size:13px;\n                line-height:16px;\n                font-family:Arial,sans-serif,Helvetica;\n                color:rgb(147,154,164);\n                margin: 20px 0 0;\n                \">\n                            &copy;&nbsp;{date(\"Y\")}&nbsp;{$wa->shop->settings(\"name\")}<br>\n                            <a href=\"http://{$order.params.storefront_decoded}\" target=\"_blank\">{$order.params.storefront_decoded}</a>\n                        </p>\n                    </td>\n                </tr>\n            </table>\n\n        </td>\n    </tr>\n</table>\n\n{/strip}\n\n'),
(3, 'sms', 'Ваш заказ {$order.id} подтвержден и принят в обработку.'),
(3, 'to', 'customer'),
(4, 'description', 'Выполнение действия «Отправлен» в бекенде магазина.'),
(4, 'subject', 'Заказ {$order.id} отправлен!');
INSERT INTO `shop_notification_params` (`notification_id`, `name`, `value`) VALUES
(4, 'body', '{strip}\n\n{$_background_color = \"#eeeeee\"}\n{$_products_bg = \"#ffffff\"}\n{$_bonus_background = \"#ffffcc\"}\n{$_button_background = \"#fcd630\"}\n{$_main_border_color = \"#cccccc\"}\n{$_border_color = \"#dddddd\"}\n\n<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"{$_background_color}\" style=\"\nfont-family:Helvetica,Arial,sans-serif;\nletter-spacing:normal;\ntext-indent:0;\ntext-transform:none;\nword-spacing:0;\nbackground-color:rgb(232,232,232);\nborder-collapse:collapse\n\">\n    <tr>\n        <td style=\"padding: 20px;\">\n            <table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"\n                width: 600px !important;\n                background-color:#fff;\n                border:1px solid {$_main_border_color};\n                border-radius: 4px;\n                margin:auto;\n                overflow: hidden;\n                \">\n\n                <!-- HEADER -->\n                <tr>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                    <td height=\"70\" align=\"center\" valign=\"middle\" style=\"border: solid {$_border_color}; border-width: 0 0 1px 0;\">\n                        <table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100% !important;\">\n                            <tr>\n                                <td>\n                                    <font style=\"font-weight: bold; font-size: 20px; margin: 0 12px 0 0;\"><b>{$order.id}</b></font>\n                                    <font style=\"color: #888\">{$order.create_datetime|wa_date:\'humandate\'}</font>\n                                </td>\n                                <td style=\"text-align: right;\">\n                                    <font style=\"{if !empty($order.style)}{$order.style}{/if}\">{$status}</font>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                </tr>\n\n                <!-- STATUS -->\n                <tr>\n                    <td></td>\n                    <td>\n                        <table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse\">\n                            <tr>\n                                <td>\n                                    <p style=\"\n                                color:rgb(48,48,48);\n                                font-style:normal;\n                                font-variant:normal;\n                                font-weight:normal;\n                                font-size:14px;\n                                line-height:16px;\n                                font-family:Helvetica,Arial,sans-serif;\n                                margin: 20px 0 0;\n                                text-align:center;\n                                \">Спасибо за покупку в магазине «{$wa->shop->settings(\"name\")}»!</p>\n                                    <p align=\"center\" style=\"margin: 20px 0;\">\n                                        <a href=\"{$order_url}\" style=\"\n                                            text-decoration:none;\n                                            font-style:normal;\n                                            font-variant:normal;\n                                            font-weight:normal;font-size:17px;line-height:40px;font-family:Helvetica,Arial,sans-serif;color:rgb(48,48,48);display:block;\n                                            width:225px;\n                                            background: {$_button_background};\n                                            border-radius: 4px;\n                                            \" target=\"_blank\">Статус заказа</a>\n                                    </p>\n                                    {if !empty($order.params.auth_pin)}\n                                        <p style=\"\n                                    color:rgb(48,48,48);\n                                    font-style:normal;\n                                    font-variant:normal;\n                                    font-weight:normal;\n                                    font-size:14px;\n                                    line-height:16px;\n                                    font-family:Helvetica,Arial,sans-serif;\n                                    margin: 20px 0;\n                                    text-align:center;\n                                    text-transform: uppercase;\n                                    \">\n                                            PIN: <b>{$order.params.auth_pin}</b>\n                                        </p>\n                                    {/if}\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                    <td bgcolor=\"{$_bonus_background}\" style=\"padding: 12px 0 12px 0;\">\n                        <p>Здравствуйте, {$customer->get(\"name\", \"html\")}!</p>\n                        <p>Ваш заказ {$order.id} был отправлен!</p>\n                        {if !empty($action_data.params.tracking_number)}\n                            <p>Номер отслеживания отправления: <strong>{$action_data.params.tracking_number|escape}</strong></p>\n                        {/if}\n                        {if !empty($action_data.params.tracking_number) && !empty($shipping_plugin)}\n                            {$tracking = $shipping_plugin->tracking($action_data.params.tracking_number)}\n                            {if $tracking}\n                                <p>{$tracking}</p>\n                            {/if}\n                        {/if}\n                    </td>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td></td>\n                    <td style=\"padding: 24px 0 36px 0;\">\n                        <h3 style=\"margin: 0;\">Контактная информация</h3>\n                        {if strlen($wa->shop->settings(\"email\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Email: <a href=\"mailto:{$wa->shop->settings(\"email\")}\">{$wa->shop->settings(\"email\")}</a>\n                            </p>\n                        {/if}\n                        {if strlen($wa->shop->settings(\"phone\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Телефон: {$wa->shop->settings(\"phone\")}\n                            </p>\n                        {/if}\n                    </td>\n                    <td></td>\n                </tr>\n            </table>\n\n            <!-- BOTTOM SITE INFORMATION -->\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                <tr>\n                    <td valign=\"middle\" align=\"center\" height=\"45\">\n                        <p style=\"\n                    font-style:normal;\n                    font-variant:normal;\n                    font-weight:normal;\n                    font-size:13px;\n                    line-height:16px;\n                    font-family:Arial,sans-serif,Helvetica;\n                    color:rgb(147,154,164);\n                    margin: 20px 0 0;\n                    \">\n                            &copy;&nbsp;{date(\"Y\")}&nbsp;{$wa->shop->settings(\"name\")}<br>\n                            <a href=\"http://{$order.params.storefront_decoded}\" target=\"_blank\">{$order.params.storefront_decoded}</a>\n                        </p>\n                    </td>\n                </tr>\n            </table>\n\n        </td>\n    </tr>\n</table>\n\n{/strip}\n'),
(4, 'sms', 'Ваш заказ {$order.id} отправлен!{if !empty($action_data.params.tracking_number)} Идентификатор отправления: {$action_data.params.tracking_number}{/if}'),
(4, 'to', 'customer'),
(5, 'description', 'Выполнение действия «Удалить» в бекенде магазина.'),
(5, 'subject', 'Заказ {$order.id} был отменен'),
(5, 'body', '{strip}\n\n{$_background_color = \"#eeeeee\"}\n{$_products_bg = \"#ffffff\"}\n{$_bonus_background = \"#ffffcc\"}\n{$_button_background = \"#fcd630\"}\n{$_main_border_color = \"#cccccc\"}\n{$_border_color = \"#dddddd\"}\n\n<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"{$_background_color}\" style=\"\nfont-family:Helvetica,Arial,sans-serif;\nletter-spacing:normal;\ntext-indent:0;\ntext-transform:none;\nword-spacing:0;\nbackground-color:rgb(232,232,232);\nborder-collapse:collapse\n\">\n    <tr>\n        <td style=\"padding: 20px;\">\n            <table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"\n                width: 600px !important;\n                background-color:#fff;\n                border:1px solid {$_main_border_color};\n                border-radius: 4px;\n                margin:auto;\n                overflow: hidden;\n                \">\n\n                <!-- HEADER -->\n                <tr>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                    <td height=\"70\" align=\"center\" valign=\"middle\" style=\"border: solid {$_border_color}; border-width: 0 0 1px 0;\">\n                        <table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100% !important;\">\n                            <tr>\n                                <td>\n                                    <font style=\"font-weight: bold; font-size: 20px; margin: 0 12px 0 0;\"><b>{$order.id}</b></font>\n                                    <font style=\"color: #888\">{$order.create_datetime|wa_date:\'humandate\'}</font>\n                                </td>\n                                <td style=\"text-align: right;\">\n                                    <font style=\"{if !empty($order.style)}{$order.style}{/if}\">{$status}</font>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                </tr>\n\n                <!-- STATUS -->\n                <tr>\n                    <td></td>\n                    <td>\n                        <table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse\">\n                            <tr>\n                                <td>\n                                    <p style=\"\n                            color:rgb(48,48,48);\n                            font-style:normal;\n                            font-variant:normal;\n                            font-weight:normal;\n                            font-size:14px;\n                            line-height:16px;\n                            font-family:Helvetica,Arial,sans-serif;\n                            margin: 20px 0 0;\n                            text-align:center;\n                            \">Спасибо за покупку в магазине «{$wa->shop->settings(\"name\")}»!</p>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                    <td bgcolor=\"{$_bonus_background}\" style=\"padding: 12px 0 12px 0;\">\n                        <p>Здравствуйте, {$customer.name|escape}!</p>\n                        <p>Ваш заказ {$order.id} был отменен. Если вы хотите восстановить свой заказ, пожалуйста, свяжитесь с нами.</p>\n                    </td>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td></td>\n                    <td style=\"padding: 24px 0 36px 0;\">\n                        <h3 style=\"margin: 0;\">Контактная информация</h3>\n                        {if strlen($wa->shop->settings(\"email\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Email: <a href=\"mailto:{$wa->shop->settings(\"email\")}\">{$wa->shop->settings(\"email\")}</a>\n                            </p>\n                        {/if}\n                        {if strlen($wa->shop->settings(\"phone\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Телефон: {$wa->shop->settings(\"phone\")}\n                            </p>\n                        {/if}\n                    </td>\n                    <td></td>\n                </tr>\n            </table>\n\n            <!-- BOTTOM SITE INFORMATION -->\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                <tr>\n                    <td valign=\"middle\" align=\"center\" height=\"45\">\n                        <p style=\"\n                font-style:normal;\n                font-variant:normal;\n                font-weight:normal;\n                font-size:13px;\n                line-height:16px;\n                font-family:Arial,sans-serif,Helvetica;\n                color:rgb(147,154,164);\n                margin: 20px 0 0;\n                \">\n                            &copy;&nbsp;{date(\"Y\")}&nbsp;{$wa->shop->settings(\"name\")}<br>\n                            <a href=\"http://{$order.params.storefront_decoded}\" target=\"_blank\">{$order.params.storefront_decoded}</a>\n                        </p>\n                    </td>\n                </tr>\n            </table>\n\n        </td>\n    </tr>\n</table>\n\n{/strip}\n\n'),
(5, 'sms', 'Ваш заказ {$order.id} отменен'),
(5, 'to', 'customer'),
(6, 'description', 'Добавление комментария к заказу в бекенде.'),
(6, 'subject', 'К вашему заказу {$order.id} добавлен комментарий'),
(6, 'body', '{strip}\n\n{$_background_color = \"#eeeeee\"}\n{$_products_bg = \"#ffffff\"}\n{$_bonus_background = \"#ffffcc\"}\n{$_button_background = \"#fcd630\"}\n{$_main_border_color = \"#cccccc\"}\n{$_border_color = \"#dddddd\"}\n\n<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"{$_background_color}\" style=\"\n    font-family:Helvetica,Arial,sans-serif;\n    letter-spacing:normal;\n    text-indent:0;\n    text-transform:none;\n    word-spacing:0;\n    background-color:rgb(232,232,232);\n    border-collapse:collapse\n\">\n    <tr>\n        <td style=\"padding: 20px;\">\n            <table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"\n                width: 600px !important;\n                background-color:#fff;\n                border:1px solid {$_main_border_color};\n                border-radius: 4px;\n                margin:auto;\n                overflow: hidden;\n                \">\n\n                <!-- HEADER -->\n                <tr>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                    <td height=\"70\" align=\"center\" valign=\"middle\" style=\"border: solid {$_border_color}; border-width: 0 0 1px 0;\">\n                        <table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100% !important;\">\n                            <tr>\n                                <td>\n                                    <font style=\"font-weight: bold; font-size: 20px; margin: 0 12px 0 0;\"><b>{$order.id}</b></font>\n                                    <font style=\"color: #888\">{$order.create_datetime|wa_date:\'humandate\'}</font>\n                                </td>\n                                <td style=\"text-align: right;\">\n                                    <font style=\"{if !empty($order.style)}{$order.style}{/if}\">{$status}</font>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                </tr>\n\n                <!-- STATUS -->\n                <tr>\n                    <td></td>\n                    <td>\n                        <table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse\">\n                            <tr>\n                                <td>\n                                    <p style=\"\n                                    color:rgb(48,48,48);\n                                    font-style:normal;\n                                    font-variant:normal;\n                                    font-weight:normal;\n                                    font-size:14px;\n                                    line-height:16px;\n                                    font-family:Helvetica,Arial,sans-serif;\n                                    margin: 20px 0 0;\n                                    text-align:center;\n                                    \">Спасибо за покупку в магазине «{$wa->shop->settings(\"name\")}»!</p>\n                                    <p align=\"center\" style=\"margin: 20px 0;\">\n                                        <a href=\"{$order_url}\" style=\"\n                                            text-decoration:none;\n                                            font-style:normal;\n                                            font-variant:normal;\n                                            font-weight:normal;font-size:17px;line-height:40px;font-family:Helvetica,Arial,sans-serif;color:rgb(48,48,48);display:block;\n                                            width:225px;\n                                            background: {$_button_background};\n                                            border-radius: 4px;\n                                            \" target=\"_blank\">Статус заказа</a>\n                                    </p>\n                                    {if !empty($order.params.auth_pin)}\n                                        <p style=\"\n                                        color:rgb(48,48,48);\n                                        font-style:normal;\n                                        font-variant:normal;\n                                        font-weight:normal;\n                                        font-size:14px;\n                                        line-height:16px;\n                                        font-family:Helvetica,Arial,sans-serif;\n                                        margin: 20px 0;\n                                        text-align:center;\n                                        text-transform: uppercase;\n                                        \">\n                                            PIN: <b>{$order.params.auth_pin}</b>\n                                        </p>\n                                    {/if}\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                    <td bgcolor=\"{$_bonus_background}\" style=\"padding: 12px 0 12px 0;\">\n                        <p>Здравствуйте, {$customer.name|escape}!</p>\n                        <p>{sprintf(_w(\"Administrator has added a comment to your order %s:<br><strong>%s</strong>\"), $order.id, $action_data.text)}</p>\n                    </td>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td></td>\n                    <td style=\"padding: 24px 0 36px 0;\">\n                        <h3 style=\"margin: 0;\">Контактная информация</h3>\n                        {if strlen($wa->shop->settings(\"email\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Email: <a href=\"mailto:{$wa->shop->settings(\"email\")}\">{$wa->shop->settings(\"email\")}</a>\n                            </p>\n                        {/if}\n                        {if strlen($wa->shop->settings(\"phone\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Телефон: {$wa->shop->settings(\"phone\")}\n                            </p>\n                        {/if}\n                    </td>\n                    <td></td>\n                </tr>\n            </table>\n\n            <!-- BOTTOM SITE INFORMATION -->\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                <tr>\n                    <td valign=\"middle\" align=\"center\" height=\"45\">\n                        <p style=\"\n                        font-style:normal;\n                        font-variant:normal;\n                        font-weight:normal;\n                        font-size:13px;\n                        line-height:16px;\n                        font-family:Arial,sans-serif,Helvetica;\n                        color:rgb(147,154,164);\n                        margin: 20px 0 0;\n                        \">\n                            &copy;&nbsp;{date(\"Y\")}&nbsp;{$wa->shop->settings(\"name\")}<br>\n                            <a href=\"http://{$order.params.storefront_decoded}\" target=\"_blank\">{$order.params.storefront_decoded}</a>\n                        </p>\n                    </td>\n                </tr>\n            </table>\n\n        </td>\n    </tr>\n</table>\n\n{/strip}\n'),
(6, 'sms', 'К вашему заказу {$order.id} добавлен комментарий'),
(6, 'to', 'customer'),
(7, 'description', 'Изменение параметров доставки заказа в бекенде.'),
(7, 'subject', 'Параметры доставки вашего заказа {$order.id} изменились'),
(7, 'body', '{strip}\n\n{$_background_color = \"#eeeeee\"}\n{$_products_bg = \"#ffffff\"}\n{$_bonus_background = \"#ffffcc\"}\n{$_button_background = \"#fcd630\"}\n{$_main_border_color = \"#cccccc\"}\n{$_border_color = \"#dddddd\"}\n\n<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"{$_background_color}\" style=\"\n    font-family:Helvetica,Arial,sans-serif;\n    letter-spacing:normal;\n    text-indent:0;\n    text-transform:none;\n    word-spacing:0;\n    background-color:rgb(232,232,232);\n    border-collapse:collapse\n\">\n    <tr>\n        <td style=\"padding: 20px;\">\n            <table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"\n                width: 600px !important;\n                background-color:#fff;\n                border:1px solid {$_main_border_color};\n                border-radius: 4px;\n                margin:auto;\n                overflow: hidden;\n                \">\n\n                <!-- HEADER -->\n                <tr>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                    <td height=\"70\" align=\"center\" valign=\"middle\" style=\"border: solid {$_border_color}; border-width: 0 0 1px 0;\">\n                        <table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100% !important;\">\n                            <tr>\n                                <td>\n                                    <font style=\"font-weight: bold; font-size: 20px; margin: 0 12px 0 0;\"><b>{$order.id}</b></font>\n                                    <font style=\"color: #888\">{$order.create_datetime|wa_date:\'humandate\'}</font>\n                                </td>\n                                <td style=\"text-align: right;\">\n                                    <font style=\"{if !empty($order.style)}{$order.style}{/if}\">{$status}</font>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                </tr>\n\n                <!-- STATUS -->\n                <tr>\n                    <td></td>\n                    <td>\n                        <table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse\">\n                            <tr>\n                                <td>\n                                    <p style=\"\n                                    color:rgb(48,48,48);\n                                    font-style:normal;\n                                    font-variant:normal;\n                                    font-weight:normal;\n                                    font-size:14px;\n                                    line-height:16px;\n                                    font-family:Helvetica,Arial,sans-serif;\n                                    margin: 20px 0 0;\n                                    text-align:center;\n                                    \">Спасибо за покупку в магазине «{$wa->shop->settings(\"name\")}»!</p>\n                                    <p align=\"center\" style=\"margin: 20px 0;\">\n                                        <a href=\"{$order_url}\" style=\"\n                                            text-decoration:none;\n                                            font-style:normal;\n                                            font-variant:normal;\n                                            font-weight:normal;font-size:17px;line-height:40px;font-family:Helvetica,Arial,sans-serif;color:rgb(48,48,48);display:block;\n                                            width:225px;\n                                            background: {$_button_background};\n                                            border-radius: 4px;\n                                            \" target=\"_blank\">Статус заказа</a>\n                                    </p>\n                                    {if !empty($order.params.auth_pin)}\n                                        <p style=\"\n                                        color:rgb(48,48,48);\n                                        font-style:normal;\n                                        font-variant:normal;\n                                        font-weight:normal;\n                                        font-size:14px;\n                                        line-height:16px;\n                                        font-family:Helvetica,Arial,sans-serif;\n                                        margin: 20px 0;\n                                        text-align:center;\n                                        text-transform: uppercase;\n                                        \">\n                                            PIN: <b>{$order.params.auth_pin}</b>\n                                        </p>\n                                    {/if}\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                    <td bgcolor=\"{$_bonus_background}\" style=\"padding: 12px 0 12px 0;\">\n                        <p>Здравствуйте, {$customer.name|escape}!</p>\n                        <p>{sprintf(_w(\"Administrator has changed the shipping details of your order %s as follows:<br><strong>%s</strong>\"), $order.id, $action_data.text|nl2br)}</p>\n                    </td>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td></td>\n                    <td style=\"padding: 24px 0 36px 0;\">\n                        <h3 style=\"margin: 0;\">Контактная информация</h3>\n                        {if strlen($wa->shop->settings(\"email\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Email: <a href=\"mailto:{$wa->shop->settings(\"email\")}\">{$wa->shop->settings(\"email\")}</a>\n                            </p>\n                        {/if}\n                        {if strlen($wa->shop->settings(\"phone\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Телефон: {$wa->shop->settings(\"phone\")}\n                            </p>\n                        {/if}\n                    </td>\n                    <td></td>\n                </tr>\n            </table>\n\n            <!-- BOTTOM SITE INFORMATION -->\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                <tr>\n                    <td valign=\"middle\" align=\"center\" height=\"45\">\n                        <p style=\"\n                        font-style:normal;\n                        font-variant:normal;\n                        font-weight:normal;\n                        font-size:13px;\n                        line-height:16px;\n                        font-family:Arial,sans-serif,Helvetica;\n                        color:rgb(147,154,164);\n                        margin: 20px 0 0;\n                        \">\n                            &copy;&nbsp;{date(\"Y\")}&nbsp;{$wa->shop->settings(\"name\")}<br>\n                            <a href=\"http://{$order.params.storefront}\" target=\"_blank\">{$order.params.storefront}</a>\n                        </p>\n                    </td>\n                </tr>\n            </table>\n\n        </td>\n    </tr>\n</table>\n\n{/strip}\n'),
(7, 'sms', 'Параметры доставки вашего заказа {$order.id} изменились'),
(7, 'to', 'customer'),
(8, 'description', 'Объединение оплаченного через мобильный терминал заказа без номера с другим заказом администратором в бекенде.'),
(8, 'subject', 'Ваш подвешенный заказ {$order.id} обработан'),
(8, 'body', '{strip}\n\n{$_background_color = \"#eeeeee\"}\n{$_products_bg = \"#ffffff\"}\n{$_bonus_background = \"#ffffcc\"}\n{$_button_background = \"#fcd630\"}\n{$_main_border_color = \"#cccccc\"}\n{$_border_color = \"#dddddd\"}\n\n<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"{$_background_color}\" style=\"\n    font-family:Helvetica,Arial,sans-serif;\n    letter-spacing:normal;\n    text-indent:0;\n    text-transform:none;\n    word-spacing:0;\n    background-color:rgb(232,232,232);\n    border-collapse:collapse\n\">\n    <tr>\n        <td style=\"padding: 20px;\">\n            <table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"\n                width: 600px !important;\n                background-color:#fff;\n                border:1px solid {$_main_border_color};\n                border-radius: 4px;\n                margin:auto;\n                overflow: hidden;\n                \">\n\n                <!-- HEADER -->\n                <tr>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                    <td height=\"70\" align=\"center\" valign=\"middle\" style=\"border: solid {$_border_color}; border-width: 0 0 1px 0;\">\n                        <table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100% !important;\">\n                            <tr>\n                                <td>\n                                    <font style=\"font-weight: bold; font-size: 20px; margin: 0 12px 0 0;\"><b>{$order.id}</b></font>\n                                    <font style=\"color: #888\">{$order.create_datetime|wa_date:\'humandate\'}</font>\n                                </td>\n                                <td style=\"text-align: right;\">\n                                    <font style=\"{if !empty($order.style)}{$order.style}{/if}\">{$status}</font>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                </tr>\n\n                <!-- STATUS -->\n                <tr>\n                    <td></td>\n                    <td>\n                        <table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse\">\n                            <tr>\n                                <td>\n                                    {if empty($action_data.params[\'workflow.settle_target_id\']) || $action_data.params[\'workflow.settle_target_id\'] == shopHelper::decodeOrderId($order.id)}\n                                        <p style=\"\n                                        color:rgb(48,48,48);\n                                        font-style:normal;\n                                        font-variant:normal;\n                                        font-weight:normal;\n                                        font-size:14px;\n                                        line-height:16px;\n                                        font-family:Helvetica,Arial,sans-serif;\n                                        margin: 20px 0 0;\n                                        text-align:center;\n                                        \">Спасибо за покупку в магазине «{$wa->shop->settings(\"name\")}»!</p>\n                                        <p align=\"center\" style=\"margin: 20px 0;\">\n                                            <a href=\"{$order_url}\" style=\"\n                                                text-decoration:none;\n                                                font-style:normal;\n                                                font-variant:normal;\n                                                font-weight:normal;font-size:17px;line-height:40px;font-family:Helvetica,Arial,sans-serif;color:rgb(48,48,48);display:block;\n                                                width:225px;\n                                                background: {$_button_background};\n                                                border-radius: 4px;\n                                                \" target=\"_blank\">Статус заказа</a>\n                                        </p>\n                                        {if !empty($order.params.auth_pin)}\n                                            <p style=\"\n                                            color:rgb(48,48,48);\n                                            font-style:normal;\n                                            font-variant:normal;\n                                            font-weight:normal;\n                                            font-size:14px;\n                                            line-height:16px;\n                                            font-family:Helvetica,Arial,sans-serif;\n                                            margin: 20px 0;\n                                            text-align:center;\n                                            text-transform: uppercase;\n                                            \">\n                                                PIN: <b>{$order.params.auth_pin}</b>\n                                            </p>\n                                        {/if}\n                                    {/if}\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                    <td bgcolor=\"{$_bonus_background}\" style=\"padding: 12px 0 12px 0;\">\n                        <p>Здравствуйте, {$customer.name|escape}!</p>\n                        <p>{if !empty($action_data.params[\'workflow.settle_target_id\'])}\n                            {if $action_data.params[\'workflow.settle_target_id\'] == shopHelper::decodeOrderId($order.id)}\n                                {sprintf(_w(\'Administrator has settled your unsettled order %s.\'), $order.id)}\n                            {else}\n                                {sprintf(_w(\'Administrator has settled your unsettled order %s by merging it with order %s.\'), $order.id, shopHelper::encodeOrderId($action_data.params[\'workflow.settle_target_id\']))}\n                            {/if}\n                        {else}\n                            {sprintf(_w(\'Administrator has merged your order %s with an unsettled order.\'), $order.id)}\n                        {/if}</p>\n                    </td>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td></td>\n                    <td style=\"padding: 24px 0 36px 0;\">\n                        <h3 style=\"margin: 0;\">Контактная информация</h3>\n                        {if strlen($wa->shop->settings(\"email\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Email: <a href=\"mailto:{$wa->shop->settings(\"email\")}\">{$wa->shop->settings(\"email\")}</a>\n                            </p>\n                        {/if}\n                        {if strlen($wa->shop->settings(\"phone\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Телефон: {$wa->shop->settings(\"phone\")}\n                            </p>\n                        {/if}\n                    </td>\n                    <td></td>\n                </tr>\n            </table>\n\n            <!-- BOTTOM SITE INFORMATION -->\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                <tr>\n                    <td valign=\"middle\" align=\"center\" height=\"45\">\n                        <p style=\"\n                        font-style:normal;\n                        font-variant:normal;\n                        font-weight:normal;\n                        font-size:13px;\n                        line-height:16px;\n                        font-family:Arial,sans-serif,Helvetica;\n                        color:rgb(147,154,164);\n                        margin: 20px 0 0;\n                        \">\n                            &copy;&nbsp;{date(\"Y\")}&nbsp;{$wa->shop->settings(\"name\")}<br>\n                            <a href=\"http://{$order.params.storefront_decoded}\" target=\"_blank\">{$order.params.storefront_decoded}</a>\n                        </p>\n                    </td>\n                </tr>\n            </table>\n\n        </td>\n    </tr>\n</table>\n\n{/strip}\n'),
(8, 'sms', 'Ваш подвешенный заказ {$order.id} обработан'),
(8, 'to', 'customer'),
(9, 'description', 'Выполнение действия «Возврат» в бекенде магазина.'),
(9, 'subject', 'Заказ {$order.id} обновлен'),
(9, 'body', '{strip}\n\n{$_background_color = \"#eeeeee\"}\n{$_products_bg = \"#ffffff\"}\n{$_bonus_background = \"#ffffcc\"}\n{$_button_background = \"#fcd630\"}\n{$_main_border_color = \"#cccccc\"}\n{$_border_color = \"#dddddd\"}\n\n<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"{$_background_color}\" style=\"\n    font-family:Helvetica,Arial,sans-serif;\n    letter-spacing:normal;\n    text-indent:0;\n    text-transform:none;\n    word-spacing:0;\n    background-color:rgb(232,232,232);\n    border-collapse:collapse\n\">\n    <tr>\n        <td style=\"padding: 20px;\">\n            <table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"\n                width: 600px !important;\n                background-color:#fff;\n                border:1px solid {$_main_border_color};\n                border-radius: 4px;\n                margin:auto;\n                overflow: hidden;\n                \">\n\n                <!-- HEADER -->\n                <tr>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                    <td height=\"70\" align=\"center\" valign=\"middle\" style=\"border: solid {$_border_color}; border-width: 0 0 1px 0;\">\n                        <table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100% !important;\">\n                            <tr>\n                                <td>\n                                    <font style=\"font-weight: bold; font-size: 20px; margin: 0 12px 0 0;\"><b>{$order.id}</b></font>\n                                    <font style=\"color: #888\">{$order.create_datetime|wa_date:\'humandate\'}</font>\n                                </td>\n                                <td style=\"text-align: right;\">\n                                    <font style=\"{if !empty($order.style)}{$order.style}{/if}\">{$status}</font>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                </tr>\n\n                <!-- STATUS -->\n                <tr>\n                    <td></td>\n                    <td>\n                        <table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse\">\n                            <tr>\n                                <td>\n                                    <p style=\"\n                                    color:rgb(48,48,48);\n                                    font-style:normal;\n                                    font-variant:normal;\n                                    font-weight:normal;\n                                    font-size:14px;\n                                    line-height:16px;\n                                    font-family:Helvetica,Arial,sans-serif;\n                                    margin: 20px 0 0;\n                                    text-align:center;\n                                    \">Спасибо за покупку в магазине «{$wa->shop->settings(\"name\")}»!</p>\n                                    <p align=\"center\" style=\"margin: 20px 0;\">\n                                        <a href=\"{$order_url}\" style=\"\n                                            text-decoration:none;\n                                            font-style:normal;\n                                            font-variant:normal;\n                                            font-weight:normal;font-size:17px;line-height:40px;font-family:Helvetica,Arial,sans-serif;color:rgb(48,48,48);display:block;\n                                            width:225px;\n                                            background: {$_button_background};\n                                            border-radius: 4px;\n                                            \" target=\"_blank\">Статус заказа</a>\n                                    </p>\n                                    {if !empty($order.params.auth_pin)}\n                                        <p style=\"\n                                        color:rgb(48,48,48);\n                                        font-style:normal;\n                                        font-variant:normal;\n                                        font-weight:normal;\n                                        font-size:14px;\n                                        line-height:16px;\n                                        font-family:Helvetica,Arial,sans-serif;\n                                        margin: 20px 0;\n                                        text-align:center;\n                                        text-transform: uppercase;\n                                        \">\n                                            PIN: <b>{$order.params.auth_pin}</b>\n                                        </p>\n                                    {/if}\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                    <td bgcolor=\"{$_bonus_background}\" style=\"padding: 12px 0 12px 0;\">\n                        <p>Здравствуйте, {$customer.name|escape}!</p>\n                        <p>Статус вашего заказа {$order.id} был обновлен на <strong>{$status}</strong></p>\n                    </td>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td></td>\n                    <td style=\"padding: 24px 0 36px 0;\">\n                        <h3 style=\"margin: 0;\">Контактная информация</h3>\n                        {if strlen($wa->shop->settings(\"email\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Email: <a href=\"mailto:{$wa->shop->settings(\"email\")}\">{$wa->shop->settings(\"email\")}</a>\n                            </p>\n                        {/if}\n                        {if strlen($wa->shop->settings(\"phone\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Телефон: {$wa->shop->settings(\"phone\")}\n                            </p>\n                        {/if}\n                    </td>\n                    <td></td>\n                </tr>\n            </table>\n\n            <!-- BOTTOM SITE INFORMATION -->\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                <tr>\n                    <td valign=\"middle\" align=\"center\" height=\"45\">\n                        <p style=\"\n                        font-style:normal;\n                        font-variant:normal;\n                        font-weight:normal;\n                        font-size:13px;\n                        line-height:16px;\n                        font-family:Arial,sans-serif,Helvetica;\n                        color:rgb(147,154,164);\n                        margin: 20px 0 0;\n                        \">\n                            &copy;&nbsp;{date(\"Y\")}&nbsp;{$wa->shop->settings(\"name\")}<br>\n                            <a href=\"http://{$order.params.storefront_decoded|default:\'\'}\" target=\"_blank\">{$order.params.storefront_decoded|default:\'\'}</a>\n                        </p>\n                    </td>\n                </tr>\n            </table>\n\n        </td>\n    </tr>\n</table>\n\n{/strip}\n'),
(9, 'sms', 'Статус вашего заказа {$order.id} изменен на «{$status}»'),
(9, 'to', 'customer'),
(10, 'description', 'Сохранение изменений в заказе после его редактирования в бекенде магазина.'),
(10, 'subject', 'Заказ {$order.id} обновлен');
INSERT INTO `shop_notification_params` (`notification_id`, `name`, `value`) VALUES
(10, 'body', '{strip}\n\n{$_background_color = \"#eeeeee\"}\n{$_products_bg = \"#ffffff\"}\n{$_bonus_background = \"#ffffcc\"}\n{$_button_background = \"#fcd630\"}\n{$_main_border_color = \"#cccccc\"}\n{$_border_color = \"#dddddd\"}\n\n<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"{$_background_color}\" style=\"\n    font-family:Helvetica,Arial,sans-serif;\n    letter-spacing:normal;\n    text-indent:0;\n    text-transform:none;\n    word-spacing:0;\n    background-color:rgb(232,232,232);\n    border-collapse:collapse\n\">\n    <tr>\n        <td style=\"padding: 20px;\">\n            <table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"\n                width: 600px !important;\n                background-color:#fff;\n                border:1px solid {$_main_border_color};\n                border-radius: 4px;\n                margin:auto;\n                overflow: hidden;\n                \">\n\n                <!-- HEADER -->\n                <tr>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                    <td height=\"70\" align=\"center\" valign=\"middle\" style=\"border: solid {$_border_color}; border-width: 0 0 1px 0;\">\n                        <table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100% !important;\">\n                            <tr>\n                                <td>\n                                    <font style=\"font-weight: bold; font-size: 20px; margin: 0 12px 0 0;\"><b>{$order.id}</b></font>\n                                    <font style=\"color: #888\">{$order.create_datetime|wa_date:\'humandate\'}</font>\n                                </td>\n                                <td style=\"text-align: right;\">\n                                    <font style=\"{if !empty($order.style)}{$order.style}{/if}\">{$status}</font>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                </tr>\n\n                <!-- STATUS -->\n                <tr>\n                    <td></td>\n                    <td>\n                        <table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse\">\n                            <tr>\n                                <td>\n                                    <p style=\"\n                                    color:rgb(48,48,48);\n                                    font-style:normal;\n                                    font-variant:normal;\n                                    font-weight:normal;\n                                    font-size:14px;\n                                    line-height:16px;\n                                    font-family:Helvetica,Arial,sans-serif;\n                                    margin: 20px 0 0;\n                                    text-align:center;\n                                    \">Спасибо за покупку в магазине «{$wa->shop->settings(\"name\")}»!</p>\n                                    <p align=\"center\" style=\"margin: 20px 0;\">\n                                        <a href=\"{$order_url}\" style=\"\n                                            text-decoration:none;\n                                            font-style:normal;\n                                            font-variant:normal;\n                                            font-weight:normal;font-size:17px;line-height:40px;font-family:Helvetica,Arial,sans-serif;color:rgb(48,48,48);display:block;\n                                            width:225px;\n                                            background: {$_button_background};\n                                            border-radius: 4px;\n                                            \" target=\"_blank\">Статус заказа</a>\n                                    </p>\n                                    {if !empty($order.params.auth_pin)}\n                                        <p style=\"\n                                        color:rgb(48,48,48);\n                                        font-style:normal;\n                                        font-variant:normal;\n                                        font-weight:normal;\n                                        font-size:14px;\n                                        line-height:16px;\n                                        font-family:Helvetica,Arial,sans-serif;\n                                        margin: 20px 0;\n                                        text-align:center;\n                                        text-transform: uppercase;\n                                        \">\n                                            PIN: <b>{$order.params.auth_pin}</b>\n                                        </p>\n                                    {/if}\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                    <td bgcolor=\"{$_bonus_background}\" style=\"padding: 12px 0 12px 0;\">\n                        <p>Здравствуйте, {$customer.name|escape}!</p>\n                        <p>Статус вашего заказа {$order.id} был обновлен на <strong>{$status}</strong></p>\n                    </td>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td></td>\n                    <td style=\"padding: 24px 0 36px 0;\">\n                        <h3 style=\"margin: 0;\">Контактная информация</h3>\n                        {if strlen($wa->shop->settings(\"email\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Email: <a href=\"mailto:{$wa->shop->settings(\"email\")}\">{$wa->shop->settings(\"email\")}</a>\n                            </p>\n                        {/if}\n                        {if strlen($wa->shop->settings(\"phone\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Телефон: {$wa->shop->settings(\"phone\")}\n                            </p>\n                        {/if}\n                    </td>\n                    <td></td>\n                </tr>\n            </table>\n\n            <!-- BOTTOM SITE INFORMATION -->\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                <tr>\n                    <td valign=\"middle\" align=\"center\" height=\"45\">\n                        <p style=\"\n                        font-style:normal;\n                        font-variant:normal;\n                        font-weight:normal;\n                        font-size:13px;\n                        line-height:16px;\n                        font-family:Arial,sans-serif,Helvetica;\n                        color:rgb(147,154,164);\n                        margin: 20px 0 0;\n                        \">\n                            &copy;&nbsp;{date(\"Y\")}&nbsp;{$wa->shop->settings(\"name\")}<br>\n                            <a href=\"http://{$order.params.storefront_decoded|default:\'\'}\" target=\"_blank\">{$order.params.storefront_decoded|default:\'\'}</a>\n                        </p>\n                    </td>\n                </tr>\n            </table>\n\n        </td>\n    </tr>\n</table>\n\n{/strip}\n'),
(10, 'sms', 'Статус вашего заказа {$order.id} изменен на «{$status}»'),
(10, 'to', 'customer'),
(11, 'description', 'Выполнение действия «Восстановить» в бекенде магазина.'),
(11, 'subject', 'Заказ {$order.id} обновлен'),
(11, 'body', '{strip}\n\n{$_background_color = \"#eeeeee\"}\n{$_products_bg = \"#ffffff\"}\n{$_bonus_background = \"#ffffcc\"}\n{$_button_background = \"#fcd630\"}\n{$_main_border_color = \"#cccccc\"}\n{$_border_color = \"#dddddd\"}\n\n<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"{$_background_color}\" style=\"\n    font-family:Helvetica,Arial,sans-serif;\n    letter-spacing:normal;\n    text-indent:0;\n    text-transform:none;\n    word-spacing:0;\n    background-color:rgb(232,232,232);\n    border-collapse:collapse\n\">\n    <tr>\n        <td style=\"padding: 20px;\">\n            <table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"\n                width: 600px !important;\n                background-color:#fff;\n                border:1px solid {$_main_border_color};\n                border-radius: 4px;\n                margin:auto;\n                overflow: hidden;\n                \">\n\n                <!-- HEADER -->\n                <tr>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                    <td height=\"70\" align=\"center\" valign=\"middle\" style=\"border: solid {$_border_color}; border-width: 0 0 1px 0;\">\n                        <table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100% !important;\">\n                            <tr>\n                                <td>\n                                    <font style=\"font-weight: bold; font-size: 20px; margin: 0 12px 0 0;\"><b>{$order.id}</b></font>\n                                    <font style=\"color: #888\">{$order.create_datetime|wa_date:\'humandate\'}</font>\n                                </td>\n                                <td style=\"text-align: right;\">\n                                    <font style=\"{if !empty($order.style)}{$order.style}{/if}\">{$status}</font>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                </tr>\n\n                <!-- STATUS -->\n                <tr>\n                    <td></td>\n                    <td>\n                        <table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse\">\n                            <tr>\n                                <td>\n                                    <p style=\"\n                                    color:rgb(48,48,48);\n                                    font-style:normal;\n                                    font-variant:normal;\n                                    font-weight:normal;\n                                    font-size:14px;\n                                    line-height:16px;\n                                    font-family:Helvetica,Arial,sans-serif;\n                                    margin: 20px 0 0;\n                                    text-align:center;\n                                    \">Спасибо за покупку в магазине «{$wa->shop->settings(\"name\")}»!</p>\n                                    <p align=\"center\" style=\"margin: 20px 0;\">\n                                        <a href=\"{$order_url}\" style=\"\n                                            text-decoration:none;\n                                            font-style:normal;\n                                            font-variant:normal;\n                                            font-weight:normal;font-size:17px;line-height:40px;font-family:Helvetica,Arial,sans-serif;color:rgb(48,48,48);display:block;\n                                            width:225px;\n                                            background: {$_button_background};\n                                            border-radius: 4px;\n                                            \" target=\"_blank\">Статус заказа</a>\n                                    </p>\n                                    {if !empty($order.params.auth_pin)}\n                                        <p style=\"\n                                        color:rgb(48,48,48);\n                                        font-style:normal;\n                                        font-variant:normal;\n                                        font-weight:normal;\n                                        font-size:14px;\n                                        line-height:16px;\n                                        font-family:Helvetica,Arial,sans-serif;\n                                        margin: 20px 0;\n                                        text-align:center;\n                                        text-transform: uppercase;\n                                        \">\n                                            PIN: <b>{$order.params.auth_pin}</b>\n                                        </p>\n                                    {/if}\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                    <td bgcolor=\"{$_bonus_background}\" style=\"padding: 12px 0 12px 0;\">\n                        <p>Здравствуйте, {$customer.name|escape}!</p>\n                        <p>Статус вашего заказа {$order.id} был обновлен на <strong>{$status}</strong></p>\n                    </td>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td></td>\n                    <td style=\"padding: 24px 0 36px 0;\">\n                        <h3 style=\"margin: 0;\">Контактная информация</h3>\n                        {if strlen($wa->shop->settings(\"email\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Email: <a href=\"mailto:{$wa->shop->settings(\"email\")}\">{$wa->shop->settings(\"email\")}</a>\n                            </p>\n                        {/if}\n                        {if strlen($wa->shop->settings(\"phone\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Телефон: {$wa->shop->settings(\"phone\")}\n                            </p>\n                        {/if}\n                    </td>\n                    <td></td>\n                </tr>\n            </table>\n\n            <!-- BOTTOM SITE INFORMATION -->\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                <tr>\n                    <td valign=\"middle\" align=\"center\" height=\"45\">\n                        <p style=\"\n                        font-style:normal;\n                        font-variant:normal;\n                        font-weight:normal;\n                        font-size:13px;\n                        line-height:16px;\n                        font-family:Arial,sans-serif,Helvetica;\n                        color:rgb(147,154,164);\n                        margin: 20px 0 0;\n                        \">\n                            &copy;&nbsp;{date(\"Y\")}&nbsp;{$wa->shop->settings(\"name\")}<br>\n                            <a href=\"http://{$order.params.storefront_decoded|default:\'\'}\" target=\"_blank\">{$order.params.storefront_decoded|default:\'\'}</a>\n                        </p>\n                    </td>\n                </tr>\n            </table>\n\n        </td>\n    </tr>\n</table>\n\n{/strip}\n'),
(11, 'sms', 'Статус вашего заказа {$order.id} изменен на «{$status}»'),
(11, 'to', 'customer'),
(12, 'description', 'Выполнение действия «Выполнить» в бекенде магазина.'),
(12, 'subject', 'Заказ {$order.id} обновлен'),
(12, 'body', '{strip}\n\n{$_background_color = \"#eeeeee\"}\n{$_products_bg = \"#ffffff\"}\n{$_bonus_background = \"#ffffcc\"}\n{$_button_background = \"#fcd630\"}\n{$_main_border_color = \"#cccccc\"}\n{$_border_color = \"#dddddd\"}\n\n<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"{$_background_color}\" style=\"\n    font-family:Helvetica,Arial,sans-serif;\n    letter-spacing:normal;\n    text-indent:0;\n    text-transform:none;\n    word-spacing:0;\n    background-color:rgb(232,232,232);\n    border-collapse:collapse\n\">\n    <tr>\n        <td style=\"padding: 20px;\">\n            <table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"\n                width: 600px !important;\n                background-color:#fff;\n                border:1px solid {$_main_border_color};\n                border-radius: 4px;\n                margin:auto;\n                overflow: hidden;\n                \">\n\n                <!-- HEADER -->\n                <tr>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                    <td height=\"70\" align=\"center\" valign=\"middle\" style=\"border: solid {$_border_color}; border-width: 0 0 1px 0;\">\n                        <table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100% !important;\">\n                            <tr>\n                                <td>\n                                    <font style=\"font-weight: bold; font-size: 20px; margin: 0 12px 0 0;\"><b>{$order.id}</b></font>\n                                    <font style=\"color: #888\">{$order.create_datetime|wa_date:\'humandate\'}</font>\n                                </td>\n                                <td style=\"text-align: right;\">\n                                    <font style=\"{if !empty($order.style)}{$order.style}{/if}\">{$status}</font>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                </tr>\n\n                <!-- STATUS -->\n                <tr>\n                    <td></td>\n                    <td>\n                        <table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse\">\n                            <tr>\n                                <td>\n                                    <p style=\"\n                                    color:rgb(48,48,48);\n                                    font-style:normal;\n                                    font-variant:normal;\n                                    font-weight:normal;\n                                    font-size:14px;\n                                    line-height:16px;\n                                    font-family:Helvetica,Arial,sans-serif;\n                                    margin: 20px 0 0;\n                                    text-align:center;\n                                    \">Спасибо за покупку в магазине «{$wa->shop->settings(\"name\")}»!</p>\n                                    <p align=\"center\" style=\"margin: 20px 0;\">\n                                        <a href=\"{$order_url}\" style=\"\n                                            text-decoration:none;\n                                            font-style:normal;\n                                            font-variant:normal;\n                                            font-weight:normal;font-size:17px;line-height:40px;font-family:Helvetica,Arial,sans-serif;color:rgb(48,48,48);display:block;\n                                            width:225px;\n                                            background: {$_button_background};\n                                            border-radius: 4px;\n                                            \" target=\"_blank\">Статус заказа</a>\n                                    </p>\n                                    {if !empty($order.params.auth_pin)}\n                                        <p style=\"\n                                        color:rgb(48,48,48);\n                                        font-style:normal;\n                                        font-variant:normal;\n                                        font-weight:normal;\n                                        font-size:14px;\n                                        line-height:16px;\n                                        font-family:Helvetica,Arial,sans-serif;\n                                        margin: 20px 0;\n                                        text-align:center;\n                                        text-transform: uppercase;\n                                        \">\n                                            PIN: <b>{$order.params.auth_pin}</b>\n                                        </p>\n                                    {/if}\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                    <td bgcolor=\"{$_bonus_background}\" style=\"padding: 12px 0 12px 0;\">\n                        <p>Здравствуйте, {$customer.name|escape}!</p>\n                        <p>Статус вашего заказа {$order.id} был обновлен на <strong>{$status}</strong></p>\n                    </td>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td></td>\n                    <td style=\"padding: 24px 0 36px 0;\">\n                        <h3 style=\"margin: 0;\">Контактная информация</h3>\n                        {if strlen($wa->shop->settings(\"email\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Email: <a href=\"mailto:{$wa->shop->settings(\"email\")}\">{$wa->shop->settings(\"email\")}</a>\n                            </p>\n                        {/if}\n                        {if strlen($wa->shop->settings(\"phone\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Телефон: {$wa->shop->settings(\"phone\")}\n                            </p>\n                        {/if}\n                    </td>\n                    <td></td>\n                </tr>\n            </table>\n\n            <!-- BOTTOM SITE INFORMATION -->\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                <tr>\n                    <td valign=\"middle\" align=\"center\" height=\"45\">\n                        <p style=\"\n                        font-style:normal;\n                        font-variant:normal;\n                        font-weight:normal;\n                        font-size:13px;\n                        line-height:16px;\n                        font-family:Arial,sans-serif,Helvetica;\n                        color:rgb(147,154,164);\n                        margin: 20px 0 0;\n                        \">\n                            &copy;&nbsp;{date(\"Y\")}&nbsp;{$wa->shop->settings(\"name\")}<br>\n                            <a href=\"http://{$order.params.storefront_decoded|default:\'\'}\" target=\"_blank\">{$order.params.storefront_decoded|default:\'\'}</a>\n                        </p>\n                    </td>\n                </tr>\n            </table>\n\n        </td>\n    </tr>\n</table>\n\n{/strip}\n'),
(12, 'sms', 'Статус вашего заказа {$order.id} изменен на «{$status}»'),
(12, 'to', 'customer'),
(13, 'description', 'Отправка сообщения клиенту администратором из бекенда магазина.'),
(13, 'subject', 'Заказ {$order.id} обновлен'),
(13, 'body', '{strip}\n\n{$_background_color = \"#eeeeee\"}\n{$_products_bg = \"#ffffff\"}\n{$_bonus_background = \"#ffffcc\"}\n{$_button_background = \"#fcd630\"}\n{$_main_border_color = \"#cccccc\"}\n{$_border_color = \"#dddddd\"}\n\n<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"{$_background_color}\" style=\"\n    font-family:Helvetica,Arial,sans-serif;\n    letter-spacing:normal;\n    text-indent:0;\n    text-transform:none;\n    word-spacing:0;\n    background-color:rgb(232,232,232);\n    border-collapse:collapse\n\">\n    <tr>\n        <td style=\"padding: 20px;\">\n            <table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"\n                width: 600px !important;\n                background-color:#fff;\n                border:1px solid {$_main_border_color};\n                border-radius: 4px;\n                margin:auto;\n                overflow: hidden;\n                \">\n\n                <!-- HEADER -->\n                <tr>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                    <td height=\"70\" align=\"center\" valign=\"middle\" style=\"border: solid {$_border_color}; border-width: 0 0 1px 0;\">\n                        <table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100% !important;\">\n                            <tr>\n                                <td>\n                                    <font style=\"font-weight: bold; font-size: 20px; margin: 0 12px 0 0;\"><b>{$order.id}</b></font>\n                                    <font style=\"color: #888\">{$order.create_datetime|wa_date:\'humandate\'}</font>\n                                </td>\n                                <td style=\"text-align: right;\">\n                                    <font style=\"{if !empty($order.style)}{$order.style}{/if}\">{$status}</font>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                </tr>\n\n                <!-- STATUS -->\n                <tr>\n                    <td></td>\n                    <td>\n                        <table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse\">\n                            <tr>\n                                <td>\n                                    <p style=\"\n                                    color:rgb(48,48,48);\n                                    font-style:normal;\n                                    font-variant:normal;\n                                    font-weight:normal;\n                                    font-size:14px;\n                                    line-height:16px;\n                                    font-family:Helvetica,Arial,sans-serif;\n                                    margin: 20px 0 0;\n                                    text-align:center;\n                                    \">Спасибо за покупку в магазине «{$wa->shop->settings(\"name\")}»!</p>\n                                    <p align=\"center\" style=\"margin: 20px 0;\">\n                                        <a href=\"{$order_url}\" style=\"\n                                            text-decoration:none;\n                                            font-style:normal;\n                                            font-variant:normal;\n                                            font-weight:normal;font-size:17px;line-height:40px;font-family:Helvetica,Arial,sans-serif;color:rgb(48,48,48);display:block;\n                                            width:225px;\n                                            background: {$_button_background};\n                                            border-radius: 4px;\n                                            \" target=\"_blank\">Статус заказа</a>\n                                    </p>\n                                    {if !empty($order.params.auth_pin)}\n                                        <p style=\"\n                                        color:rgb(48,48,48);\n                                        font-style:normal;\n                                        font-variant:normal;\n                                        font-weight:normal;\n                                        font-size:14px;\n                                        line-height:16px;\n                                        font-family:Helvetica,Arial,sans-serif;\n                                        margin: 20px 0;\n                                        text-align:center;\n                                        text-transform: uppercase;\n                                        \">\n                                            PIN: <b>{$order.params.auth_pin}</b>\n                                        </p>\n                                    {/if}\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                    <td bgcolor=\"{$_bonus_background}\" style=\"padding: 12px 0 12px 0;\">\n                        <p>Здравствуйте, {$customer.name|escape}!</p>\n                        <p>Статус вашего заказа {$order.id} был обновлен на <strong>{$status}</strong></p>\n                    </td>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td></td>\n                    <td style=\"padding: 24px 0 36px 0;\">\n                        <h3 style=\"margin: 0;\">Контактная информация</h3>\n                        {if strlen($wa->shop->settings(\"email\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Email: <a href=\"mailto:{$wa->shop->settings(\"email\")}\">{$wa->shop->settings(\"email\")}</a>\n                            </p>\n                        {/if}\n                        {if strlen($wa->shop->settings(\"phone\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Телефон: {$wa->shop->settings(\"phone\")}\n                            </p>\n                        {/if}\n                    </td>\n                    <td></td>\n                </tr>\n            </table>\n\n            <!-- BOTTOM SITE INFORMATION -->\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                <tr>\n                    <td valign=\"middle\" align=\"center\" height=\"45\">\n                        <p style=\"\n                        font-style:normal;\n                        font-variant:normal;\n                        font-weight:normal;\n                        font-size:13px;\n                        line-height:16px;\n                        font-family:Arial,sans-serif,Helvetica;\n                        color:rgb(147,154,164);\n                        margin: 20px 0 0;\n                        \">\n                            &copy;&nbsp;{date(\"Y\")}&nbsp;{$wa->shop->settings(\"name\")}<br>\n                            <a href=\"http://{$order.params.storefront_decoded|default:\'\'}\" target=\"_blank\">{$order.params.storefront_decoded|default:\'\'}</a>\n                        </p>\n                    </td>\n                </tr>\n            </table>\n\n        </td>\n    </tr>\n</table>\n\n{/strip}\n'),
(13, 'sms', 'Статус вашего заказа {$order.id} изменен на «{$status}»'),
(13, 'to', 'customer'),
(14, 'description', 'Получение автоматического запроса от платежной системы (например, для обновления статуса заказа). В зависимости от результата запроса дополнительно к нему может быть выполнено действие «Оплачен».'),
(14, 'subject', 'Заказ {$order.id} обновлен'),
(14, 'body', '{strip}\n\n{$_background_color = \"#eeeeee\"}\n{$_products_bg = \"#ffffff\"}\n{$_bonus_background = \"#ffffcc\"}\n{$_button_background = \"#fcd630\"}\n{$_main_border_color = \"#cccccc\"}\n{$_border_color = \"#dddddd\"}\n\n<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"{$_background_color}\" style=\"\n    font-family:Helvetica,Arial,sans-serif;\n    letter-spacing:normal;\n    text-indent:0;\n    text-transform:none;\n    word-spacing:0;\n    background-color:rgb(232,232,232);\n    border-collapse:collapse\n\">\n    <tr>\n        <td style=\"padding: 20px;\">\n            <table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"\n                width: 600px !important;\n                background-color:#fff;\n                border:1px solid {$_main_border_color};\n                border-radius: 4px;\n                margin:auto;\n                overflow: hidden;\n                \">\n\n                <!-- HEADER -->\n                <tr>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                    <td height=\"70\" align=\"center\" valign=\"middle\" style=\"border: solid {$_border_color}; border-width: 0 0 1px 0;\">\n                        <table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100% !important;\">\n                            <tr>\n                                <td>\n                                    <font style=\"font-weight: bold; font-size: 20px; margin: 0 12px 0 0;\"><b>{$order.id}</b></font>\n                                    <font style=\"color: #888\">{$order.create_datetime|wa_date:\'humandate\'}</font>\n                                </td>\n                                <td style=\"text-align: right;\">\n                                    <font style=\"{if !empty($order.style)}{$order.style}{/if}\">{$status}</font>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                </tr>\n\n                <!-- STATUS -->\n                <tr>\n                    <td></td>\n                    <td>\n                        <table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse\">\n                            <tr>\n                                <td>\n                                    <p style=\"\n                                    color:rgb(48,48,48);\n                                    font-style:normal;\n                                    font-variant:normal;\n                                    font-weight:normal;\n                                    font-size:14px;\n                                    line-height:16px;\n                                    font-family:Helvetica,Arial,sans-serif;\n                                    margin: 20px 0 0;\n                                    text-align:center;\n                                    \">Спасибо за покупку в магазине «{$wa->shop->settings(\"name\")}»!</p>\n                                    <p align=\"center\" style=\"margin: 20px 0;\">\n                                        <a href=\"{$order_url}\" style=\"\n                                            text-decoration:none;\n                                            font-style:normal;\n                                            font-variant:normal;\n                                            font-weight:normal;font-size:17px;line-height:40px;font-family:Helvetica,Arial,sans-serif;color:rgb(48,48,48);display:block;\n                                            width:225px;\n                                            background: {$_button_background};\n                                            border-radius: 4px;\n                                            \" target=\"_blank\">Статус заказа</a>\n                                    </p>\n                                    {if !empty($order.params.auth_pin)}\n                                        <p style=\"\n                                        color:rgb(48,48,48);\n                                        font-style:normal;\n                                        font-variant:normal;\n                                        font-weight:normal;\n                                        font-size:14px;\n                                        line-height:16px;\n                                        font-family:Helvetica,Arial,sans-serif;\n                                        margin: 20px 0;\n                                        text-align:center;\n                                        text-transform: uppercase;\n                                        \">\n                                            PIN: <b>{$order.params.auth_pin}</b>\n                                        </p>\n                                    {/if}\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                    <td bgcolor=\"{$_bonus_background}\" style=\"padding: 12px 0 12px 0;\">\n                        <p>Здравствуйте, {$customer.name|escape}!</p>\n                        <p>Статус вашего заказа {$order.id} был обновлен на <strong>{$status}</strong></p>\n                    </td>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td></td>\n                    <td style=\"padding: 24px 0 36px 0;\">\n                        <h3 style=\"margin: 0;\">Контактная информация</h3>\n                        {if strlen($wa->shop->settings(\"email\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Email: <a href=\"mailto:{$wa->shop->settings(\"email\")}\">{$wa->shop->settings(\"email\")}</a>\n                            </p>\n                        {/if}\n                        {if strlen($wa->shop->settings(\"phone\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Телефон: {$wa->shop->settings(\"phone\")}\n                            </p>\n                        {/if}\n                    </td>\n                    <td></td>\n                </tr>\n            </table>\n\n            <!-- BOTTOM SITE INFORMATION -->\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                <tr>\n                    <td valign=\"middle\" align=\"center\" height=\"45\">\n                        <p style=\"\n                        font-style:normal;\n                        font-variant:normal;\n                        font-weight:normal;\n                        font-size:13px;\n                        line-height:16px;\n                        font-family:Arial,sans-serif,Helvetica;\n                        color:rgb(147,154,164);\n                        margin: 20px 0 0;\n                        \">\n                            &copy;&nbsp;{date(\"Y\")}&nbsp;{$wa->shop->settings(\"name\")}<br>\n                            <a href=\"http://{$order.params.storefront_decoded|default:\'\'}\" target=\"_blank\">{$order.params.storefront_decoded|default:\'\'}</a>\n                        </p>\n                    </td>\n                </tr>\n            </table>\n\n        </td>\n    </tr>\n</table>\n\n{/strip}\n'),
(14, 'sms', 'Статус вашего заказа {$order.id} изменен на «{$status}»'),
(14, 'to', 'customer'),
(15, 'description', 'Выполнение действия «Оплачен» в бекенде магазина либо в результате автоматического запроса (callback) платежной системы.'),
(15, 'subject', 'Заказ {$order.id} обновлен'),
(15, 'body', '{strip}\n\n{$_background_color = \"#eeeeee\"}\n{$_products_bg = \"#ffffff\"}\n{$_bonus_background = \"#ffffcc\"}\n{$_button_background = \"#fcd630\"}\n{$_main_border_color = \"#cccccc\"}\n{$_border_color = \"#dddddd\"}\n\n<table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"{$_background_color}\" style=\"\n    font-family:Helvetica,Arial,sans-serif;\n    letter-spacing:normal;\n    text-indent:0;\n    text-transform:none;\n    word-spacing:0;\n    background-color:rgb(232,232,232);\n    border-collapse:collapse\n\">\n    <tr>\n        <td style=\"padding: 20px;\">\n            <table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\" style=\"\n                width: 600px !important;\n                background-color:#fff;\n                border:1px solid {$_main_border_color};\n                border-radius: 4px;\n                margin:auto;\n                overflow: hidden;\n                \">\n\n                <!-- HEADER -->\n                <tr>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                    <td height=\"70\" align=\"center\" valign=\"middle\" style=\"border: solid {$_border_color}; border-width: 0 0 1px 0;\">\n                        <table width=\"500\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100% !important;\">\n                            <tr>\n                                <td>\n                                    <font style=\"font-weight: bold; font-size: 20px; margin: 0 12px 0 0;\"><b>{$order.id}</b></font>\n                                    <font style=\"color: #888\">{$order.create_datetime|wa_date:\'humandate\'}</font>\n                                </td>\n                                <td style=\"text-align: right;\">\n                                    <font style=\"{if !empty($order.style)}{$order.style}{/if}\">{$status}</font>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td width=\"50\" style=\"width:50px !important; border: solid {$_border_color}; border-width: 0 0 1px 0;\"></td>\n                </tr>\n\n                <!-- STATUS -->\n                <tr>\n                    <td></td>\n                    <td>\n                        <table cellspacing=\"0\" border=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse\">\n                            <tr>\n                                <td>\n                                    <p style=\"\n                                    color:rgb(48,48,48);\n                                    font-style:normal;\n                                    font-variant:normal;\n                                    font-weight:normal;\n                                    font-size:14px;\n                                    line-height:16px;\n                                    font-family:Helvetica,Arial,sans-serif;\n                                    margin: 20px 0 0;\n                                    text-align:center;\n                                    \">Спасибо за покупку в магазине «{$wa->shop->settings(\"name\")}»!</p>\n                                    <p align=\"center\" style=\"margin: 20px 0;\">\n                                        <a href=\"{$order_url}\" style=\"\n                                            text-decoration:none;\n                                            font-style:normal;\n                                            font-variant:normal;\n                                            font-weight:normal;font-size:17px;line-height:40px;font-family:Helvetica,Arial,sans-serif;color:rgb(48,48,48);display:block;\n                                            width:225px;\n                                            background: {$_button_background};\n                                            border-radius: 4px;\n                                            \" target=\"_blank\">Статус заказа</a>\n                                    </p>\n                                    {if !empty($order.params.auth_pin)}\n                                        <p style=\"\n                                        color:rgb(48,48,48);\n                                        font-style:normal;\n                                        font-variant:normal;\n                                        font-weight:normal;\n                                        font-size:14px;\n                                        line-height:16px;\n                                        font-family:Helvetica,Arial,sans-serif;\n                                        margin: 20px 0;\n                                        text-align:center;\n                                        text-transform: uppercase;\n                                        \">\n                                            PIN: <b>{$order.params.auth_pin}</b>\n                                        </p>\n                                    {/if}\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                    <td bgcolor=\"{$_bonus_background}\" style=\"padding: 12px 0 12px 0;\">\n                        <p>Здравствуйте, {$customer.name|escape}!</p>\n                        <p>Статус вашего заказа {$order.id} был обновлен на <strong>{$status}</strong></p>\n                    </td>\n                    <td bgcolor=\"{$_bonus_background}\"></td>\n                </tr>\n\n                <!-- TEXT -->\n                <tr>\n                    <td></td>\n                    <td style=\"padding: 24px 0 36px 0;\">\n                        <h3 style=\"margin: 0;\">Контактная информация</h3>\n                        {if strlen($wa->shop->settings(\"email\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Email: <a href=\"mailto:{$wa->shop->settings(\"email\")}\">{$wa->shop->settings(\"email\")}</a>\n                            </p>\n                        {/if}\n                        {if strlen($wa->shop->settings(\"phone\"))}\n                            <p style=\"margin: 10px 0 0;\">\n                                Телефон: {$wa->shop->settings(\"phone\")}\n                            </p>\n                        {/if}\n                    </td>\n                    <td></td>\n                </tr>\n            </table>\n\n            <!-- BOTTOM SITE INFORMATION -->\n            <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse\">\n                <tr>\n                    <td valign=\"middle\" align=\"center\" height=\"45\">\n                        <p style=\"\n                        font-style:normal;\n                        font-variant:normal;\n                        font-weight:normal;\n                        font-size:13px;\n                        line-height:16px;\n                        font-family:Arial,sans-serif,Helvetica;\n                        color:rgb(147,154,164);\n                        margin: 20px 0 0;\n                        \">\n                            &copy;&nbsp;{date(\"Y\")}&nbsp;{$wa->shop->settings(\"name\")}<br>\n                            <a href=\"http://{$order.params.storefront_decoded|default:\'\'}\" target=\"_blank\">{$order.params.storefront_decoded|default:\'\'}</a>\n                        </p>\n                    </td>\n                </tr>\n            </table>\n\n        </td>\n    </tr>\n</table>\n\n{/strip}\n'),
(15, 'sms', 'Статус вашего заказа {$order.id} изменен на «{$status}»'),
(15, 'to', 'customer');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_notification_sources`
--

CREATE TABLE `shop_notification_sources` (
  `notification_id` int(11) NOT NULL,
  `source` varchar(510) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_order`
--

CREATE TABLE `shop_order` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `create_datetime` datetime NOT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `state_id` varchar(32) NOT NULL DEFAULT 'new',
  `total` decimal(15,4) NOT NULL,
  `currency` char(3) NOT NULL,
  `rate` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `shipping` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `assigned_contact_id` int(11) DEFAULT NULL,
  `paid_year` smallint(6) DEFAULT NULL,
  `paid_quarter` smallint(6) DEFAULT NULL,
  `paid_month` smallint(6) DEFAULT NULL,
  `paid_date` date DEFAULT NULL,
  `auth_date` date DEFAULT NULL,
  `is_first` tinyint(1) NOT NULL DEFAULT '0',
  `unsettled` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  `shipping_datetime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_order_items`
--

CREATE TABLE `shop_order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku_id` int(11) NOT NULL,
  `sku_code` varchar(255) NOT NULL DEFAULT '',
  `type` enum('product','service') NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `service_variant_id` int(11) DEFAULT NULL,
  `price` decimal(15,4) NOT NULL,
  `quantity` decimal(15,3) NOT NULL,
  `quantity_denominator` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `virtualstock_id` int(11) DEFAULT NULL,
  `stock_unit_id` int(11) NOT NULL DEFAULT '0',
  `purchase_price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total_discount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax_percent` decimal(7,4) DEFAULT NULL,
  `tax_included` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_order_item_codes`
--

CREATE TABLE `shop_order_item_codes` (
  `order_id` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  `code_id` int(11) DEFAULT NULL,
  `code` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_order_log`
--

CREATE TABLE `shop_order_log` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `action_id` varchar(32) NOT NULL,
  `datetime` datetime NOT NULL,
  `before_state_id` varchar(32) NOT NULL,
  `after_state_id` varchar(32) NOT NULL,
  `text` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_order_log_params`
--

CREATE TABLE `shop_order_log_params` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_order_params`
--

CREATE TABLE `shop_order_params` (
  `order_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_page`
--

CREATE TABLE `shop_page` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  `full_url` varchar(255) DEFAULT NULL,
  `content` mediumtext NOT NULL,
  `create_datetime` datetime NOT NULL,
  `update_datetime` datetime NOT NULL,
  `create_contact_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_page_params`
--

CREATE TABLE `shop_page_params` (
  `page_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_plugin`
--

CREATE TABLE `shop_plugin` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `plugin` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `logo` text NOT NULL,
  `status` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `options` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_plugin`
--

INSERT INTO `shop_plugin` (`id`, `type`, `plugin`, `name`, `description`, `logo`, `status`, `sort`, `options`) VALUES
(1, 'payment', 'cash', 'Наличные', 'Оплата наличными при получении', '/wa-plugins/payment/cash/img/cash.png', 1, 0, '[]'),
(2, 'payment', 'dummy', 'Оплата в ручном режиме', '', '', 0, 1, '[]'),
(3, 'payment', 'invoicephys', 'Оплата по квитанции', 'Оплата наличными по квитанции для физических лиц (РФ)', '/wa-plugins/payment/invoicephys/img/invoicephys.png', 0, 2, '[]'),
(4, 'payment', 'invoicejur', 'Оплата по счету', 'Оплата безналичным расчетом для юридических лиц (РФ)', '/wa-plugins/payment/invoicejur/img/invoicejur.png', 0, 3, '[]'),
(5, 'payment', 'yandexkassa', 'ЮKassa (бывшая Яндекс.Касса)', 'Приём платежей через сервис «ЮKassa» (<a href=\"https://yookassa.ru/\">yookassa.ru</a>).', '/wa-plugins/payment/yandexkassa/img/yandexkassa.png', 1, 4, '[]'),
(6, 'shipping', 'boxberry', 'Boxberry', 'Расчет стоимости доставки сервисом <a href=\"https://boxberry.ru/\">Boxberry</a>.', '/wa-plugins/shipping/boxberry/img/boxberry60x32.png', 0, 0, '[]'),
(7, 'shipping', 'dummy', 'Бесплатная доставка курьером', '', '', 1, 1, '[]'),
(8, 'shipping', 'courier', 'Курьер', 'Доставка ограничивается только определенной страной и регионом. Стоимость доставки рассчитывается на основании итоговой стоимости заказа либо веса отправления.', '/wa-plugins/shipping/courier/img/courier.png', 0, 2, '[]'),
(9, 'shipping', 'worldwide', 'Международная доставка', 'Доставка в любую точку мира по доступным ценам.', '/wa-plugins/shipping/worldwide/img/worldwide.png', 0, 3, '[]'),
(10, 'shipping', 'sd', 'Пункт выдачи заказов', 'Пункт выдачи заказов для покупателей из указанного региона или населённых пунктов.', '/wa-plugins/shipping/sd/img/sd-60x32.png', 0, 4, '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_plugin_settings`
--

CREATE TABLE `shop_plugin_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product`
--

CREATE TABLE `shop_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` text,
  `meta_description` text,
  `description` mediumtext,
  `contact_id` int(11) DEFAULT NULL,
  `create_datetime` datetime NOT NULL,
  `edit_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `type_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `image_filename` varchar(255) NOT NULL DEFAULT '',
  `video_url` varchar(255) DEFAULT NULL,
  `sku_id` int(11) DEFAULT NULL,
  `ext` varchar(10) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `rating` decimal(3,2) NOT NULL DEFAULT '0.00',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `compare_price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `currency` char(3) DEFAULT NULL,
  `min_price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `max_price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax_id` int(11) DEFAULT NULL,
  `count` decimal(15,3) DEFAULT NULL,
  `count_denominator` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `order_multiplicity_factor` decimal(9,3) NOT NULL DEFAULT '1.000',
  `stock_unit_id` int(11) NOT NULL DEFAULT '0',
  `base_unit_id` int(11) NOT NULL DEFAULT '0',
  `stock_base_ratio` decimal(16,8) UNSIGNED NOT NULL DEFAULT '1.00000000',
  `order_count_min` decimal(15,3) UNSIGNED NOT NULL DEFAULT '1.000',
  `order_count_step` decimal(15,3) UNSIGNED NOT NULL DEFAULT '1.000',
  `base_price` decimal(15,4) UNSIGNED NOT NULL DEFAULT '0.0000',
  `min_base_price` decimal(15,4) UNSIGNED NOT NULL DEFAULT '0.0000',
  `max_base_price` decimal(15,4) UNSIGNED NOT NULL DEFAULT '0.0000',
  `cross_selling` tinyint(1) DEFAULT NULL,
  `upselling` tinyint(1) DEFAULT NULL,
  `rating_count` int(11) NOT NULL DEFAULT '0',
  `total_sales` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `category_id` int(11) DEFAULT NULL,
  `badge` text,
  `sku_type` tinyint(1) NOT NULL DEFAULT '0',
  `base_price_selectable` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `compare_price_selectable` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `purchase_price_selectable` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sku_count` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product_code`
--

CREATE TABLE `shop_product_code` (
  `id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `protected` tinyint(1) DEFAULT '0',
  `plugin_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product_features`
--

CREATE TABLE `shop_product_features` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku_id` int(11) DEFAULT NULL,
  `feature_id` int(11) NOT NULL,
  `feature_value_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product_features_selectable`
--

CREATE TABLE `shop_product_features_selectable` (
  `product_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product_images`
--

CREATE TABLE `shop_product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `upload_datetime` datetime NOT NULL,
  `edit_datetime` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `width` int(5) NOT NULL DEFAULT '0',
  `height` int(5) NOT NULL DEFAULT '0',
  `size` int(11) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `original_filename` varchar(255) DEFAULT NULL,
  `ext` varchar(10) DEFAULT NULL,
  `badge_type` int(4) DEFAULT NULL,
  `badge_code` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product_og`
--

CREATE TABLE `shop_product_og` (
  `product_id` int(11) NOT NULL,
  `property` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product_pages`
--

CREATE TABLE `shop_product_pages` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  `content` mediumtext NOT NULL,
  `create_datetime` datetime NOT NULL,
  `update_datetime` datetime NOT NULL,
  `create_contact_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `keywords` text,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product_params`
--

CREATE TABLE `shop_product_params` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product_related`
--

CREATE TABLE `shop_product_related` (
  `product_id` int(11) NOT NULL,
  `type` enum('cross_selling','upselling') NOT NULL,
  `related_product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product_reviews`
--

CREATE TABLE `shop_product_reviews` (
  `id` int(11) NOT NULL,
  `left_key` int(11) DEFAULT NULL,
  `right_key` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL,
  `status` enum('approved','deleted','moderation') NOT NULL DEFAULT 'approved',
  `title` varchar(64) DEFAULT NULL,
  `text` text,
  `rate` decimal(3,2) DEFAULT NULL,
  `contact_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `images_count` int(11) DEFAULT '0',
  `site` varchar(100) DEFAULT NULL,
  `auth_provider` varchar(100) DEFAULT NULL,
  `ip` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product_reviews_images`
--

CREATE TABLE `shop_product_reviews_images` (
  `id` int(11) NOT NULL,
  `review_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `upload_datetime` datetime NOT NULL,
  `edit_datetime` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `width` int(5) DEFAULT '0',
  `height` int(5) DEFAULT '0',
  `size` int(11) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `ext` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product_services`
--

CREATE TABLE `shop_product_services` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku_id` int(11) DEFAULT NULL,
  `service_id` int(11) NOT NULL,
  `service_variant_id` int(11) NOT NULL,
  `price` decimal(15,4) DEFAULT NULL,
  `primary_price` decimal(15,4) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product_skus`
--

CREATE TABLE `shop_product_skus` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `image_id` int(11) DEFAULT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `primary_price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `purchase_price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `compare_price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `count` decimal(15,3) DEFAULT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `stock_base_ratio` decimal(16,8) UNSIGNED DEFAULT NULL,
  `order_count_min` decimal(15,3) UNSIGNED DEFAULT NULL,
  `order_count_step` decimal(15,3) UNSIGNED DEFAULT NULL,
  `dimension_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL DEFAULT '',
  `file_size` int(11) NOT NULL DEFAULT '0',
  `file_description` text,
  `virtual` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product_stocks`
--

CREATE TABLE `shop_product_stocks` (
  `sku_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL,
  `count` decimal(15,3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product_stocks_log`
--

CREATE TABLE `shop_product_stocks_log` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku_id` int(11) NOT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `stock_name` varchar(255) DEFAULT NULL,
  `before_count` decimal(15,3) DEFAULT NULL,
  `after_count` decimal(15,3) DEFAULT NULL,
  `diff_count` decimal(15,3) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `description` text,
  `datetime` datetime NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product_tags`
--

CREATE TABLE `shop_product_tags` (
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_promo`
--

CREATE TABLE `shop_promo` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `consider_end_orders` tinyint(1) NOT NULL DEFAULT '1',
  `text_id` varchar(64) DEFAULT NULL,
  `note` text,
  `start_datetime` datetime DEFAULT NULL,
  `finish_datetime` datetime DEFAULT NULL,
  `author_contact_id` int(11) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_promo`
--

INSERT INTO `shop_promo` (`id`, `name`, `enabled`, `consider_end_orders`, `text_id`, `note`, `start_datetime`, `finish_datetime`, `author_contact_id`, `create_datetime`, `update_datetime`) VALUES
(1, 'Онлайн-заказы', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Быстрая доставка', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Скидки до 30%', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Товар недели', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_promo_orders`
--

CREATE TABLE `shop_promo_orders` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `promo_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_promo_routes`
--

CREATE TABLE `shop_promo_routes` (
  `promo_id` int(10) UNSIGNED NOT NULL,
  `storefront` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_promo_routes`
--

INSERT INTO `shop_promo_routes` (`promo_id`, `storefront`, `sort`) VALUES
(1, '%all%', 1),
(2, '%all%', 2),
(3, '%all%', 3),
(4, '%all%', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_promo_rules`
--

CREATE TABLE `shop_promo_rules` (
  `id` int(11) UNSIGNED NOT NULL,
  `promo_id` int(10) UNSIGNED NOT NULL,
  `rule_type` varchar(32) NOT NULL,
  `rule_params` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_promo_rules`
--

INSERT INTO `shop_promo_rules` (`id`, `promo_id`, `rule_type`, `rule_params`) VALUES
(1, 1, 'banner', '{\"banners\":[{\"type\":\"link\",\"title\":\"Онлайн-заказ\",\"body\":\"Заказывайте с помощью компьютера, планшета или телефона.\",\"link\":\"#\",\"color\":\"#ffffff\",\"image_filename\":\"promo_6312512bb425c366439063.jpg\"}]}'),
(2, 2, 'banner', '{\"banners\":[{\"type\":\"link\",\"title\":\"Быстрая доставка\",\"body\":\"Закажите до 20:00 — доставим уже завтра утром!\",\"link\":\"#\",\"color\":\"#ffffff\",\"image_filename\":\"promo_6312512bbe287815885513.jpg\"}]}'),
(3, 3, 'banner', '{\"banners\":[{\"type\":\"link\",\"title\":\"Скидки до 30%\",\"body\":\"Распродажа зимней коллекции по суперценам. Не пропустите!\",\"link\":\"#\",\"color\":\"#ffffff\",\"image_filename\":\"promo_6312512bbf227714818765.jpg\"}]}'),
(4, 4, 'banner', '{\"banners\":[{\"type\":\"link\",\"title\":\"Товар недели\",\"body\":\"Заказывайте сегодня по лучшей цене и получите подарок.\",\"link\":\"#\",\"color\":\"#ffffff\",\"image_filename\":\"promo_6312512bc01c7088053653.jpg\"}]}');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_push_client`
--

CREATE TABLE `shop_push_client` (
  `contact_id` int(11) NOT NULL,
  `client_id` varchar(64) NOT NULL,
  `shop_url` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `api_token` varchar(32) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_sales`
--

CREATE TABLE `shop_sales` (
  `hash` varchar(32) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `order_count` int(11) NOT NULL DEFAULT '0',
  `sales` float NOT NULL DEFAULT '0',
  `shipping` float NOT NULL DEFAULT '0',
  `tax` float NOT NULL DEFAULT '0',
  `purchase` float NOT NULL DEFAULT '0',
  `cost` float NOT NULL DEFAULT '0',
  `new_customer_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_search_index`
--

CREATE TABLE `shop_search_index` (
  `word_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_search_word`
--

CREATE TABLE `shop_search_word` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_service`
--

CREATE TABLE `shop_service` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `currency` char(3) DEFAULT NULL,
  `variant_id` int(11) NOT NULL,
  `tax_id` int(11) DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_service_variants`
--

CREATE TABLE `shop_service_variants` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `primary_price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_set`
--

CREATE TABLE `shop_set` (
  `id` varchar(64) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rule` varchar(32) DEFAULT NULL,
  `type` int(1) DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `create_datetime` datetime NOT NULL,
  `edit_datetime` datetime DEFAULT NULL,
  `json_params` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_set`
--

INSERT INTO `shop_set` (`id`, `name`, `rule`, `type`, `count`, `sort`, `create_datetime`, `edit_datetime`, `json_params`) VALUES
('promo', 'Промо', NULL, 0, 0, 1, '2022-09-02 21:53:31', NULL, NULL),
('bestsellers', 'Хиты продаж', 'rating DESC', 1, 8, 0, '2022-09-02 21:53:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_set_products`
--

CREATE TABLE `shop_set_products` (
  `set_id` varchar(64) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_stock`
--

CREATE TABLE `shop_stock` (
  `id` int(11) NOT NULL,
  `low_count` int(11) NOT NULL DEFAULT '0',
  `critical_count` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_stock_rules`
--

CREATE TABLE `shop_stock_rules` (
  `id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `stock_id` int(11) DEFAULT NULL,
  `virtualstock_id` int(11) DEFAULT NULL,
  `rule_type` varchar(255) NOT NULL,
  `rule_data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_tag`
--

CREATE TABLE `shop_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_tax`
--

CREATE TABLE `shop_tax` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `included` int(11) NOT NULL DEFAULT '0',
  `address_type` varchar(8) NOT NULL DEFAULT 'shipping'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_tax`
--

INSERT INTO `shop_tax` (`id`, `name`, `included`, `address_type`) VALUES
(1, 'НДС', 1, 'shipping');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_tax_regions`
--

CREATE TABLE `shop_tax_regions` (
  `tax_id` int(11) NOT NULL,
  `country_iso3` varchar(3) NOT NULL,
  `region_code` varchar(8) DEFAULT NULL,
  `tax_value` decimal(7,4) NOT NULL DEFAULT '0.0000',
  `tax_name` varchar(255) DEFAULT NULL,
  `params` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_tax_regions`
--

INSERT INTO `shop_tax_regions` (`tax_id`, `country_iso3`, `region_code`, `tax_value`, `tax_name`, `params`) VALUES
(1, 'rus', NULL, '20.0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_tax_zip_codes`
--

CREATE TABLE `shop_tax_zip_codes` (
  `tax_id` int(11) NOT NULL,
  `zip_expr` varchar(16) NOT NULL,
  `tax_value` decimal(7,4) NOT NULL DEFAULT '0.0000',
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_transfer`
--

CREATE TABLE `shop_transfer` (
  `id` int(11) NOT NULL,
  `string_id` varchar(255) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `finalize_datetime` datetime DEFAULT NULL,
  `status` enum('sent','completed','cancelled') NOT NULL DEFAULT 'sent',
  `stock_id_from` int(11) NOT NULL,
  `stock_id_to` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_transfer_products`
--

CREATE TABLE `shop_transfer_products` (
  `product_id` int(11) NOT NULL,
  `sku_id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `count` decimal(15,3) NOT NULL DEFAULT '0.000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_type`
--

CREATE TABLE `shop_type` (
  `id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `cross_selling` varchar(64) NOT NULL DEFAULT 'alsobought',
  `upselling` tinyint(1) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `stock_unit_fixed` int(11) NOT NULL DEFAULT '2',
  `stock_unit_id` int(11) NOT NULL DEFAULT '0',
  `base_unit_fixed` int(11) NOT NULL DEFAULT '2',
  `base_unit_id` int(11) DEFAULT NULL,
  `stock_base_ratio_fixed` int(11) NOT NULL DEFAULT '2',
  `stock_base_ratio` decimal(16,8) UNSIGNED DEFAULT NULL,
  `count_denominator_fixed` int(11) NOT NULL DEFAULT '2',
  `count_denominator` int(11) UNSIGNED DEFAULT NULL,
  `order_multiplicity_factor_fixed` int(11) NOT NULL DEFAULT '2',
  `order_multiplicity_factor` decimal(9,3) DEFAULT NULL,
  `order_count_min_fixed` int(11) NOT NULL DEFAULT '2',
  `order_count_min` decimal(15,3) UNSIGNED DEFAULT NULL,
  `order_count_step_fixed` int(11) NOT NULL DEFAULT '2',
  `order_count_step` decimal(15,3) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_type`
--

INSERT INTO `shop_type` (`id`, `sort`, `name`, `icon`, `cross_selling`, `upselling`, `count`, `stock_unit_fixed`, `stock_unit_id`, `base_unit_fixed`, `base_unit_id`, `stock_base_ratio_fixed`, `stock_base_ratio`, `count_denominator_fixed`, `count_denominator`, `order_multiplicity_factor_fixed`, `order_multiplicity_factor`, `order_count_min_fixed`, `order_count_min`, `order_count_step_fixed`, `order_count_step`) VALUES
(1, 0, 'Обычный товар', 'box', 'alsobought', 0, 0, 2, 0, 2, NULL, 2, NULL, 2, NULL, 2, NULL, 2, NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_type_codes`
--

CREATE TABLE `shop_type_codes` (
  `type_id` int(11) NOT NULL,
  `code_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_type_features`
--

CREATE TABLE `shop_type_features` (
  `type_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_type_features`
--

INSERT INTO `shop_type_features` (`type_id`, `feature_id`, `sort`) VALUES
(1, 1, 0),
(1, 2, 1),
(1, 3, 2),
(1, 4, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_type_services`
--

CREATE TABLE `shop_type_services` (
  `type_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_type_upselling`
--

CREATE TABLE `shop_type_upselling` (
  `type_id` int(11) NOT NULL,
  `feature` varchar(32) NOT NULL,
  `feature_id` int(11) DEFAULT NULL,
  `cond` varchar(16) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_unit`
--

CREATE TABLE `shop_unit` (
  `id` int(11) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name2` varchar(255) NOT NULL DEFAULT '',
  `name5` varchar(255) NOT NULL DEFAULT '',
  `okei_code` varchar(64) NOT NULL,
  `storefront_name` varchar(255) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `builtin` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_unit`
--

INSERT INTO `shop_unit` (`id`, `short_name`, `name`, `name2`, `name5`, `okei_code`, `storefront_name`, `sort`, `status`, `builtin`) VALUES
(1, 'мм', 'миллиметр', '', '', '003', 'мм', 0, 0, 0),
(2, 'см', 'сантиметр', '', '', '004', 'см', 0, 0, 0),
(3, 'м', 'метр', '', '', '006', 'м', 0, 0, 0),
(4, 'пог. м', 'погонный метр', '', '', '018', 'пог. м', 0, 0, 0),
(5, 'мм2', 'квадратный миллиметр', '', '', '050', 'мм²', 0, 0, 0),
(6, 'см2', 'квадратный сантиметр', '', '', '051', 'см²', 0, 0, 0),
(7, 'м2', 'квадратный метр', '', '', '055', 'м²', 0, 0, 0),
(8, 'л', 'литр', '', '', '112', 'л', 0, 0, 0),
(9, 'дм3', 'кубический дециметр', '', '', '112', 'дм³', 0, 0, 0),
(10, 'г', 'грамм', '', '', '163', 'г', 0, 0, 0),
(11, 'кг', 'килограмм', '', '', '166', 'кг', 0, 0, 0),
(12, 'ч', 'час', '', '', '356', 'ч', 0, 0, 0),
(13, 'боб', 'бобина', '', '', '616', 'боб.', 0, 0, 0),
(14, 'л.', 'лист', '', '', '625', 'л.', 0, 0, 0),
(15, 'пач', 'пачка', '', '', '728', 'пач.', 0, 0, 0),
(16, 'рул', 'рулон', '', '', '736', 'рул.', 0, 0, 0),
(17, 'упак', 'упаковка', '', '', '778', 'упак.', 0, 0, 0),
(18, 'шт', 'штука', '', '', '796', 'шт.', 0, 0, 0),
(19, 'ящ', 'ящик', '', '', '812', 'ящ.', 0, 0, 0),
(20, 'бут', 'бутылка', '', '', '868', 'бут.', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_virtualstock`
--

CREATE TABLE `shop_virtualstock` (
  `id` int(11) NOT NULL,
  `low_count` int(11) NOT NULL DEFAULT '0',
  `critical_count` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_virtualstock_stocks`
--

CREATE TABLE `shop_virtualstock_stocks` (
  `virtualstock_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `site_block`
--

CREATE TABLE `site_block` (
  `id` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `create_datetime` datetime NOT NULL,
  `description` text NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `site_domain`
--

CREATE TABLE `site_domain` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(128) NOT NULL DEFAULT '',
  `style` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `site_domain`
--

INSERT INTO `site_domain` (`id`, `name`, `title`, `style`) VALUES
(1, 'webasyst2.loc', '', 'white');

-- --------------------------------------------------------

--
-- Структура таблицы `site_page`
--

CREATE TABLE `site_page` (
  `id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  `full_url` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `create_datetime` datetime NOT NULL,
  `update_datetime` datetime NOT NULL,
  `create_contact_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `site_page`
--

INSERT INTO `site_page` (`id`, `domain_id`, `route`, `name`, `title`, `url`, `full_url`, `content`, `create_datetime`, `update_datetime`, `create_contact_id`, `sort`, `status`, `parent_id`) VALUES
(1, 1, '*', 'Политика конфиденциальности сайта', '', 'privacy-policy/', 'privacy-policy/', '<p>Однозначно, многие известные личности будут смешаны с не уникальными данными до степени совершенной неузнаваемости, из-за чего возрастает их статус бесполезности. А ещё сделанные на базе интернет-аналитики выводы формируют глобальную экономическую сеть и при этом &mdash; представлены в исключительно положительном свете.</p>\r\n\r\n<p>А ещё стремящиеся вытеснить традиционное производство, нанотехнологии и по сей день остаются уделом либералов, которые жаждут быть призваны к ответу. Также как новая модель организационной деятельности способствует подготовке и реализации благоприятных перспектив. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности однозначно определяет каждого участника как способного принимать собственные решения касаемо кластеризации усилий. В своём стремлении повысить качество жизни, они забывают, что постоянный количественный рост и сфера нашей активности играет важную роль в формировании поэтапного и последовательного развития общества. Но консультация с широким активом предоставляет широкие возможности для поставленных обществом задач.</p>\r\n\r\n<p>Не следует, однако, забывать, что современная методология разработки позволяет выполнить важные задания по разработке поставленных обществом задач. Прежде всего, граница обучения кадров обеспечивает широкому кругу (специалистов) участие в формировании как самодостаточных, так и внешне зависимых концептуальных решений. Значимость этих проблем настолько очевидна, что граница обучения кадров выявляет срочную потребность существующих финансовых и административных условий. Однозначно, стремящиеся вытеснить традиционное производство, нанотехнологии освещают чрезвычайно интересные особенности картины в целом, однако конкретные выводы, разумеется, описаны максимально подробно. Есть над чем задуматься: многие известные личности ограничены исключительно образом мышления.</p>\r\n\r\n<p>Каждый из нас понимает очевидную вещь: выбранный нами инновационный путь играет определяющее значение для вывода текущих активов. Также как экономическая повестка сегодняшнего дня влечет за собой процесс внедрения и модернизации вывода текущих активов. Внезапно, диаграммы связей, превозмогая сложившуюся непростую экономическую ситуацию, преданы социально-демократической анафеме. Учитывая ключевые сценарии поведения, внедрение современных методик играет определяющее значение для благоприятных перспектив. Разнообразный и богатый опыт говорит нам, что современная методология разработки играет определяющее значение для системы массового участия.</p>\r\n\r\n<p>А также акционеры крупнейших компаний объявлены нарушающими общечеловеческие нормы этики и морали. Таким образом, понимание сути ресурсосберегающих технологий говорит о возможностях модели развития.</p>', '2022-09-02 21:55:18', '2022-09-02 21:55:18', 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `site_page_params`
--

CREATE TABLE `site_page_params` (
  `page_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `site_page_params`
--

INSERT INTO `site_page_params` (`page_id`, `name`, `value`) VALUES
(1, 'keywords', ''),
(1, 'description', '');

-- --------------------------------------------------------

--
-- Структура таблицы `team_calendar_external`
--

CREATE TABLE `team_calendar_external` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `integration_level` enum('subscription','sync','full') NOT NULL DEFAULT 'subscription',
  `name` varchar(255) NOT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `calendar_id` int(11) DEFAULT NULL,
  `native_calendar_id` text,
  `synchronize_datetime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `team_calendar_external_params`
--

CREATE TABLE `team_calendar_external_params` (
  `calendar_external_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `team_event_external`
--

CREATE TABLE `team_event_external` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `calendar_external_id` int(11) NOT NULL,
  `native_event_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `team_event_external_params`
--

CREATE TABLE `team_event_external_params` (
  `event_external_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `team_location`
--

CREATE TABLE `team_location` (
  `group_id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_announcement`
--

CREATE TABLE `wa_announcement` (
  `id` int(11) NOT NULL,
  `app_id` varchar(32) NOT NULL,
  `text` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_api_auth_codes`
--

CREATE TABLE `wa_api_auth_codes` (
  `code` varchar(32) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `client_id` varchar(32) NOT NULL,
  `scope` text NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_api_tokens`
--

CREATE TABLE `wa_api_tokens` (
  `contact_id` int(11) NOT NULL,
  `client_id` varchar(32) NOT NULL,
  `token` varchar(32) NOT NULL,
  `scope` text NOT NULL,
  `create_datetime` datetime NOT NULL,
  `last_use_datetime` datetime DEFAULT NULL,
  `expires` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_app_settings`
--

CREATE TABLE `wa_app_settings` (
  `app_id` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wa_app_settings`
--

INSERT INTO `wa_app_settings` (`app_id`, `name`, `value`) VALUES
('webasyst', 'update_time', '1637248197'),
('webasyst', 'locale', 'ru_RU'),
('webasyst', 'name', 'Мебельная компания'),
('webasyst', 'email', 'romamilas25139@gmail.com'),
('webasyst', 'sender', 'romamilas25139@gmail.com'),
('installer', 'update_time', '1614683137'),
('site', 'update_time', '1575540282'),
('shop', 'shipping_payment_disabled', '[]'),
('shop', 'update_time', '1644939837'),
('shop', 'country', 'rus'),
('shop', 'currency', 'RUB'),
('shop', 'use_product_currency', 'true'),
('installer', 'update_counter', '1'),
('installer', 'update_counter_timestamp', '1662319235'),
('installer', 'a-offer-2022-08', '{\"html\":{\"header_top\":\"\\n<section class=\\\"a-offer\\\" id=\\\"a-offer63125113811fa\\\" style=\\\"background-color: #ffeeaa; padding: 10px;\\\">\\n    <p style=\\\"margin: 0;\\\">\\n\\n            \\n                    <b>-50% \\u043d\\u0430 \\u00ab\\u0412\\u0435\\u0441\\u044c Webasyst\\u00bb \\u0434\\u043e 30 \\u0441\\u0435\\u043d\\u0442\\u044f\\u0431\\u0440\\u044f<\\/b>: \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0442 \\u0432\\u0441\\u0435\\u0445 15+ \\u0433\\u043b\\u0430\\u0432\\u043d\\u044b\\u0445 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 Webasyst \\u0441 \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0441\\u043a\\u0438\\u0434\\u043a\\u043e\\u0439 \\u0438 <b>\\u0432\\u044b\\u0433\\u043e\\u0434\\u043e\\u0439 \\u0434\\u043e 70 994 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439<\\/b>. \\u0427\\u0435\\u043c \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0432\\u044b \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u043b\\u0438 \\u0440\\u0430\\u043d\\u0435\\u0435, \\u0442\\u0435\\u043c \\u043d\\u0438\\u0436\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0432\\u0430\\u0448\\u0430 \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0432\\u0441\\u0435\\u0433\\u043e \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0442\\u0430, \\u0430 \\u0441\\u043a\\u0438\\u0434\\u043a\\u0430 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. <input type=\\\"button\\\" value=\\\"\\u041a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432\\u0435\\u0441\\u044c Webasyst\\\" onClick=\\\"window.location.href=\'https:\\/\\/www.webasyst.ru\\/buy\\/store\\/bundle\\/all-webasyst\\/\';\\\"> &nbsp; <a href=\\\"https:\\/\\/www.webasyst.ru\\/pricing\\/#ownserver\\\" target=\\\"_blank\\\">\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435 \\u043e \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0442\\u0435<\\/a>\\n        \\n    \\n    <\\/p>\\n<\\/section>\",\"notification\":\"\\n<section class=\\\"a-offer\\\" id=\\\"a-offer6312511382043\\\">\\n    \\n            \\n                    <strong style=\\\"color: var(--text-color-strongest);\\\">-50% \\u043d\\u0430 \\u00ab\\u0412\\u0435\\u0441\\u044c Webasyst\\u00bb \\u0434\\u043e 30 \\u0441\\u0435\\u043d\\u0442\\u044f\\u0431\\u0440\\u044f<\\/strong>: \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0442 \\u0432\\u0441\\u0435\\u0445 15+ \\u0433\\u043b\\u0430\\u0432\\u043d\\u044b\\u0445 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 Webasyst \\u0441 \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0441\\u043a\\u0438\\u0434\\u043a\\u043e\\u0439 \\u0438 <b>\\u0432\\u044b\\u0433\\u043e\\u0434\\u043e\\u0439 \\u0434\\u043e 70 994 \\u0440\\u0443\\u0431\\u043b\\u0435\\u0439<\\/b>. \\u0427\\u0435\\u043c \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u043f\\u0440\\u0438\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439 \\u0432\\u044b \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u043b\\u0438 \\u0440\\u0430\\u043d\\u0435\\u0435, \\u0442\\u0435\\u043c \\u043d\\u0438\\u0436\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0432\\u0430\\u0448\\u0430 \\u043f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0432\\u0441\\u0435\\u0433\\u043e \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0442\\u0430, \\u0430 \\u0441\\u043a\\u0438\\u0434\\u043a\\u0430 \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u0442\\u0441\\u044f. <input type=\\\"button\\\" value=\\\"\\u041a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432\\u0435\\u0441\\u044c Webasyst\\\" onClick=\\\"window.location.href=\'https:\\/\\/www.webasyst.ru\\/buy\\/store\\/bundle\\/all-webasyst\\/\';\\\"> &nbsp; <a href=\\\"https:\\/\\/www.webasyst.ru\\/pricing\\/#ownserver\\\" target=\\\"_blank\\\">\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435 \\u043e \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0442\\u0435<\\/a>\\n        \\n    <\\/section>\"}}'),
('installer', 'token_data', '{\"token\":\"9d5d8cf1877fb3044d9883602cb5715a\",\"expire_datetime\":\"2022-09-05 21:53:47\"}'),
('webasyst', 'waid_endpoints_sync_time', '1662317628'),
('shop', 'tutorial_passed_steps', '[\"welcome\"]'),
('site', 'preview_hash', '6312515904ffa.1662144857'),
('shop.ordercall', 'update_time', '1'),
('blog', 'update_time', '1595409478'),
('team', 'update_time', '1600953803'),
('blog.tag', 'update_time', '1381248799'),
('webasyst', 'theme_hash', '8605dfcbdae281bf9a5e7c4e888e08a3.1662221098'),
('shop.redirect', 'update_time', '1'),
('shop.ordercall', 'email_from', 'noreply@test.com'),
('shop.ordercall', 'email_notify', 'romamilas25139@gmail.com'),
('shop.ordercall', 'link', '/privacy-policy/'),
('shop.ordercall', 'is_enable', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `wa_app_tokens`
--

CREATE TABLE `wa_app_tokens` (
  `contact_id` int(11) DEFAULT NULL,
  `app_id` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `expire_datetime` datetime DEFAULT NULL,
  `token` varchar(32) NOT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_cache`
--

CREATE TABLE `wa_cache` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_contact`
--

CREATE TABLE `wa_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `middlename` varchar(50) NOT NULL DEFAULT '',
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `company` varchar(150) NOT NULL DEFAULT '',
  `jobtitle` varchar(50) NOT NULL DEFAULT '',
  `company_contact_id` int(11) NOT NULL DEFAULT '0',
  `is_company` tinyint(1) NOT NULL DEFAULT '0',
  `is_user` tinyint(1) NOT NULL DEFAULT '0',
  `login` varchar(32) DEFAULT NULL,
  `password` varchar(128) NOT NULL DEFAULT '',
  `last_datetime` datetime DEFAULT NULL,
  `sex` enum('m','f') DEFAULT NULL,
  `birth_day` tinyint(2) UNSIGNED DEFAULT NULL,
  `birth_month` tinyint(2) UNSIGNED DEFAULT NULL,
  `birth_year` smallint(4) DEFAULT NULL,
  `about` text,
  `photo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `create_datetime` datetime NOT NULL,
  `create_app_id` varchar(32) NOT NULL DEFAULT '',
  `create_method` varchar(32) NOT NULL DEFAULT '',
  `create_contact_id` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(8) NOT NULL DEFAULT '',
  `timezone` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wa_contact`
--

INSERT INTO `wa_contact` (`id`, `name`, `firstname`, `middlename`, `lastname`, `title`, `company`, `jobtitle`, `company_contact_id`, `is_company`, `is_user`, `login`, `password`, `last_datetime`, `sex`, `birth_day`, `birth_month`, `birth_year`, `about`, `photo`, `create_datetime`, `create_app_id`, `create_method`, `create_contact_id`, `locale`, `timezone`) VALUES
(1, 'Milaš Roma', 'Roma', '', 'Milaš', '', '', '', 0, 0, 1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2022-09-04 22:12:58', NULL, NULL, NULL, NULL, NULL, 0, '2022-09-02 21:52:42', 'webasyst', 'install', 0, 'ru_RU', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wa_contact_calendars`
--

CREATE TABLE `wa_contact_calendars` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bg_color` varchar(7) DEFAULT NULL,
  `font_color` varchar(7) DEFAULT NULL,
  `status_bg_color` varchar(7) DEFAULT NULL,
  `status_font_color` varchar(7) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `is_limited` tinyint(1) NOT NULL DEFAULT '0',
  `default_status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wa_contact_calendars`
--

INSERT INTO `wa_contact_calendars` (`id`, `name`, `bg_color`, `font_color`, `status_bg_color`, `status_font_color`, `icon`, `sort`, `is_limited`, `default_status`) VALUES
(1, 'Отпуск', '#b8f2ff', '#00819e', '#00c2ed', '#ffffff', 'fas fa-circle', 0, 0, 'в отпуске'),
(2, 'Командировка', '#d4dcfc', '#0a2eae', '#718ef7', '#ffffff', 'fas fa-circle', 1, 0, 'в командировке'),
(3, 'Больничный', '#fcc197', '#773404', '#f98836', '#ffffff', 'fas fa-circle', 2, 0, 'болею'),
(4, 'Встреча', '#ffeab8', '#9e6f00', '#eba400', '#ffffff', 'fas fa-circle', 3, 0, 'на встрече'),
(5, 'Удаленно', '#e9ccff', '#6500b3', '#bb64ff', '#ffffff', 'fas fa-circle', 4, 0, NULL),
(6, 'Другое', '#cccccc', '#404040', '#999999', '#ffffff', 'fas fa-circle', 5, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wa_contact_categories`
--

CREATE TABLE `wa_contact_categories` (
  `category_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_contact_category`
--

CREATE TABLE `wa_contact_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `system_id` varchar(64) DEFAULT NULL,
  `app_id` varchar(32) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `cnt` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_contact_data`
--

CREATE TABLE `wa_contact_data` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `field` varchar(32) NOT NULL,
  `ext` varchar(32) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_contact_data_text`
--

CREATE TABLE `wa_contact_data_text` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `field` varchar(32) NOT NULL,
  `ext` varchar(32) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_contact_emails`
--

CREATE TABLE `wa_contact_emails` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ext` varchar(32) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` enum('unknown','confirmed','unconfirmed','unavailable') NOT NULL DEFAULT 'unknown'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wa_contact_emails`
--

INSERT INTO `wa_contact_emails` (`id`, `contact_id`, `email`, `ext`, `sort`, `status`) VALUES
(1, 1, 'romamilas25139@gmail.com', '', 0, 'unknown');

-- --------------------------------------------------------

--
-- Структура таблицы `wa_contact_events`
--

CREATE TABLE `wa_contact_events` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `create_datetime` datetime NOT NULL,
  `update_datetime` datetime NOT NULL,
  `contact_id` int(11) NOT NULL,
  `calendar_id` int(11) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `description` text,
  `location` varchar(255) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `is_allday` tinyint(4) NOT NULL DEFAULT '0',
  `is_status` tinyint(4) NOT NULL DEFAULT '0',
  `sequence` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_contact_field_values`
--

CREATE TABLE `wa_contact_field_values` (
  `id` int(11) NOT NULL,
  `parent_field` varchar(64) NOT NULL,
  `parent_value` varchar(255) NOT NULL,
  `field` varchar(64) NOT NULL,
  `value` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_contact_files`
--

CREATE TABLE `wa_contact_files` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `purpose` enum('cover','general') NOT NULL DEFAULT 'general',
  `name` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_contact_rights`
--

CREATE TABLE `wa_contact_rights` (
  `group_id` int(11) NOT NULL,
  `app_id` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wa_contact_rights`
--

INSERT INTO `wa_contact_rights` (`group_id`, `app_id`, `name`, `value`) VALUES
(-1, 'webasyst', 'backend', 1),
(2, 'team', 'backend', 1),
(3, 'team', 'backend', 1),
(1, 'webasyst', 'backend', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wa_contact_settings`
--

CREATE TABLE `wa_contact_settings` (
  `contact_id` int(11) NOT NULL,
  `app_id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wa_contact_settings`
--

INSERT INTO `wa_contact_settings` (`contact_id`, `app_id`, `name`, `value`) VALUES
(1, 'webasyst', 'dashboard', '1'),
(1, 'shop', 'order_list_sort', 'create_datetime/desc'),
(1, 'blog', 'blog_last_datetime', '2022-09-04 22:23:41'),
(1, 'webasyst', 'idle_since', '2022-09-04 22:14:28'),
(1, 'webasyst', 'backend_url', 'http://webasyst2.loc/webasyst/');

-- --------------------------------------------------------

--
-- Структура таблицы `wa_contact_waid`
--

CREATE TABLE `wa_contact_waid` (
  `contact_id` int(11) NOT NULL,
  `token` text NOT NULL,
  `webasyst_contact_id` int(11) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `login_datetime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_country`
--

CREATE TABLE `wa_country` (
  `name` varchar(255) NOT NULL,
  `iso3letter` varchar(3) NOT NULL,
  `iso2letter` varchar(2) NOT NULL,
  `isonumeric` varchar(3) NOT NULL,
  `fav_sort` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wa_country`
--

INSERT INTO `wa_country` (`name`, `iso3letter`, `iso2letter`, `isonumeric`, `fav_sort`) VALUES
('Afghanistan', 'afg', 'af', '004', NULL),
('Åland Islands', 'ala', 'ax', '248', NULL),
('Albania', 'alb', 'al', '008', NULL),
('Algeria', 'dza', 'dz', '012', NULL),
('American Samoa', 'asm', 'as', '016', NULL),
('Andorra', 'and', 'ad', '020', NULL),
('Angola', 'ago', 'ao', '024', NULL),
('Anguilla', 'aia', 'ai', '660', NULL),
('Antigua and Barbuda', 'atg', 'ag', '028', NULL),
('Argentina', 'arg', 'ar', '032', NULL),
('Armenia', 'arm', 'am', '051', NULL),
('Aruba', 'abw', 'aw', '533', NULL),
('Australia', 'aus', 'au', '036', NULL),
('Austria', 'aut', 'at', '040', NULL),
('Azerbaijan', 'aze', 'az', '031', NULL),
('Bahamas', 'bhs', 'bs', '044', NULL),
('Bahrain', 'bhr', 'bh', '048', NULL),
('Bangladesh', 'bgd', 'bd', '050', NULL),
('Barbados', 'brb', 'bb', '052', NULL),
('Belarus', 'blr', 'by', '112', NULL),
('Belgium', 'bel', 'be', '056', NULL),
('Belize', 'blz', 'bz', '084', NULL),
('Benin', 'ben', 'bj', '204', NULL),
('Bermuda', 'bmu', 'bm', '060', NULL),
('Bhutan', 'btn', 'bt', '064', NULL),
('Bolivia, Plurinational State of', 'bol', 'bo', '068', NULL),
('Bosnia and Herzegovina', 'bih', 'ba', '070', NULL),
('Botswana', 'bwa', 'bw', '072', NULL),
('Bouvet Island', 'bvt', 'bv', '074', NULL),
('Brazil', 'bra', 'br', '076', NULL),
('British Indian Ocean Territory', 'iot', 'io', '086', NULL),
('Brunei Darussalam', 'brn', 'bn', '096', NULL),
('Bulgaria', 'bgr', 'bg', '100', NULL),
('Burkina Faso', 'bfa', 'bf', '854', NULL),
('Burundi', 'bdi', 'bi', '108', NULL),
('Côte d\'Ivoire', 'civ', 'ci', '384', NULL),
('Cambodia', 'khm', 'kh', '116', NULL),
('Cameroon', 'cmr', 'cm', '120', NULL),
('Canada', 'can', 'ca', '124', NULL),
('Cape Verde', 'cpv', 'cv', '132', NULL),
('Cayman Islands', 'cym', 'ky', '136', NULL),
('Central African Republic', 'caf', 'cf', '140', NULL),
('Chad', 'tcd', 'td', '148', NULL),
('Chile', 'chl', 'cl', '152', NULL),
('China', 'chn', 'cn', '156', NULL),
('Christmas Island', 'cxr', 'cx', '162', NULL),
('Cocos (Keeling) Islands', 'cck', 'cc', '166', NULL),
('Colombia', 'col', 'co', '170', NULL),
('Comoros', 'com', 'km', '174', NULL),
('Congo', 'cog', 'cg', '178', NULL),
('Congo, the Democratic Republic of the', 'cod', 'cd', '180', NULL),
('Cook Islands', 'cok', 'ck', '184', NULL),
('Costa Rica', 'cri', 'cr', '188', NULL),
('Croatia', 'hrv', 'hr', '191', NULL),
('Cuba', 'cub', 'cu', '192', NULL),
('Cyprus', 'cyp', 'cy', '196', NULL),
('Czech Republic', 'cze', 'cz', '203', NULL),
('Denmark', 'dnk', 'dk', '208', NULL),
('Djibouti', 'dji', 'dj', '262', NULL),
('Dominica', 'dma', 'dm', '212', NULL),
('Dominican Republic', 'dom', 'do', '214', NULL),
('Ecuador', 'ecu', 'ec', '218', NULL),
('Egypt', 'egy', 'eg', '818', NULL),
('El Salvador', 'slv', 'sv', '222', NULL),
('Equatorial Guinea', 'gnq', 'gq', '226', NULL),
('Eritrea', 'eri', 'er', '232', NULL),
('Estonia', 'est', 'ee', '233', NULL),
('Ethiopia', 'eth', 'et', '231', NULL),
('Falkland Islands (Malvinas)', 'flk', 'fk', '238', NULL),
('Faroe Islands', 'fro', 'fo', '234', NULL),
('Fiji', 'fji', 'fj', '242', NULL),
('Finland', 'fin', 'fi', '246', NULL),
('France', 'fra', 'fr', '250', NULL),
('French Guiana', 'guf', 'gf', '254', NULL),
('French Polynesia', 'pyf', 'pf', '258', NULL),
('French Southern Territories', 'atf', 'tf', '260', NULL),
('Gabon', 'gab', 'ga', '266', NULL),
('Gambia', 'gmb', 'gm', '270', NULL),
('Georgia', 'geo', 'ge', '268', NULL),
('Germany', 'deu', 'de', '276', NULL),
('Ghana', 'gha', 'gh', '288', NULL),
('Gibraltar', 'gib', 'gi', '292', NULL),
('Greece', 'grc', 'gr', '300', NULL),
('Greenland', 'grl', 'gl', '304', NULL),
('Grenada', 'grd', 'gd', '308', NULL),
('Guadeloupe', 'glp', 'gp', '312', NULL),
('Guam', 'gum', 'gu', '316', NULL),
('Guatemala', 'gtm', 'gt', '320', NULL),
('Guinea', 'gin', 'gn', '324', NULL),
('Guinea-Bissau', 'gnb', 'gw', '624', NULL),
('Guyana', 'guy', 'gy', '328', NULL),
('Haiti', 'hti', 'ht', '332', NULL),
('Heard Island and McDonald Islands', 'hmd', 'hm', '334', NULL),
('Holy See (Vatican City State)', 'vat', 'va', '336', NULL),
('Honduras', 'hnd', 'hn', '340', NULL),
('Hong Kong', 'hkg', 'hk', '344', NULL),
('Hungary', 'hun', 'hu', '348', NULL),
('Iceland', 'isl', 'is', '352', NULL),
('India', 'ind', 'in', '356', NULL),
('Indonesia', 'idn', 'id', '360', NULL),
('Iran, Islamic Republic of', 'irn', 'ir', '364', NULL),
('Iraq', 'irq', 'iq', '368', NULL),
('Ireland', 'irl', 'ie', '372', NULL),
('Israel', 'isr', 'il', '376', NULL),
('Italy', 'ita', 'it', '380', NULL),
('Jamaica', 'jam', 'jm', '388', NULL),
('Japan', 'jpn', 'jp', '392', NULL),
('Jordan', 'jor', 'jo', '400', NULL),
('Kazakhstan', 'kaz', 'kz', '398', NULL),
('Kenya', 'ken', 'ke', '404', NULL),
('Kiribati', 'kir', 'ki', '296', NULL),
('Korea, Democratic People\'s Republic of', 'prk', 'kp', '408', NULL),
('Korea, Republic of', 'kor', 'kr', '410', NULL),
('Kuwait', 'kwt', 'kw', '414', NULL),
('Kyrgyzstan', 'kgz', 'kg', '417', NULL),
('Lao People\'s Democratic Republic', 'lao', 'la', '418', NULL),
('Latvia', 'lva', 'lv', '428', NULL),
('Lebanon', 'lbn', 'lb', '422', NULL),
('Lesotho', 'lso', 'ls', '426', NULL),
('Liberia', 'lbr', 'lr', '430', NULL),
('Libyan Arab Jamahiriya', 'lby', 'ly', '434', NULL),
('Liechtenstein', 'lie', 'li', '438', NULL),
('Lithuania', 'ltu', 'lt', '440', NULL),
('Luxembourg', 'lux', 'lu', '442', NULL),
('Macao', 'mac', 'mo', '446', NULL),
('Macedonia, the former Yugoslav Republic of', 'mkd', 'mk', '807', NULL),
('Madagascar', 'mdg', 'mg', '450', NULL),
('Malawi', 'mwi', 'mw', '454', NULL),
('Malaysia', 'mys', 'my', '458', NULL),
('Maldives', 'mdv', 'mv', '462', NULL),
('Mali', 'mli', 'ml', '466', NULL),
('Malta', 'mlt', 'mt', '470', NULL),
('Marshall Islands', 'mhl', 'mh', '584', NULL),
('Martinique', 'mtq', 'mq', '474', NULL),
('Mauritania', 'mrt', 'mr', '478', NULL),
('Mauritius', 'mus', 'mu', '480', NULL),
('Mayotte', 'myt', 'yt', '175', NULL),
('Mexico', 'mex', 'mx', '484', NULL),
('Micronesia, Federated States of', 'fsm', 'fm', '583', NULL),
('Moldova, Republic of', 'mda', 'md', '498', NULL),
('Monaco', 'mco', 'mc', '492', NULL),
('Mongolia', 'mng', 'mn', '496', NULL),
('Montenegro', 'mne', 'me', '499', NULL),
('Montserrat', 'msr', 'ms', '500', NULL),
('Morocco', 'mar', 'ma', '504', NULL),
('Mozambique', 'moz', 'mz', '508', NULL),
('Myanmar', 'mmr', 'mm', '104', NULL),
('Namibia', 'nam', 'na', '516', NULL),
('Nauru', 'nru', 'nr', '520', NULL),
('Nepal', 'npl', 'np', '524', NULL),
('Netherlands', 'nld', 'nl', '528', NULL),
('Netherlands Antilles', 'ant', 'an', '530', NULL),
('New Caledonia', 'ncl', 'nc', '540', NULL),
('New Zealand', 'nzl', 'nz', '554', NULL),
('Nicaragua', 'nic', 'ni', '558', NULL),
('Niger', 'ner', 'ne', '562', NULL),
('Nigeria', 'nga', 'ng', '566', NULL),
('Niue', 'niu', 'nu', '570', NULL),
('Norfolk Island', 'nfk', 'nf', '574', NULL),
('Northern Mariana Islands', 'mnp', 'mp', '580', NULL),
('Norway', 'nor', 'no', '578', NULL),
('Oman', 'omn', 'om', '512', NULL),
('Pakistan', 'pak', 'pk', '586', NULL),
('Palau', 'plw', 'pw', '585', NULL),
('Palestinian Territory, Occupied', 'pse', 'ps', '275', NULL),
('Panama', 'pan', 'pa', '591', NULL),
('Papua New Guinea', 'png', 'pg', '598', NULL),
('Paraguay', 'pry', 'py', '600', NULL),
('Peru', 'per', 'pe', '604', NULL),
('Philippines', 'phl', 'ph', '608', NULL),
('Pitcairn', 'pcn', 'pn', '612', NULL),
('Poland', 'pol', 'pl', '616', NULL),
('Portugal', 'prt', 'pt', '620', NULL),
('Puerto Rico', 'pri', 'pr', '630', NULL),
('Qatar', 'qat', 'qa', '634', NULL),
('Réunion', 'reu', 're', '638', NULL),
('Romania', 'rou', 'ro', '642', NULL),
('Russian Federation', 'rus', 'ru', '643', 1),
('Rwanda', 'rwa', 'rw', '646', NULL),
('Saint Helena, Ascension and Tristan da Cunha', 'shn', 'sh', '654', NULL),
('Saint Kitts and Nevis', 'kna', 'kn', '659', NULL),
('Saint Lucia', 'lca', 'lc', '662', NULL),
('Saint Pierre and Miquelon', 'spm', 'pm', '666', NULL),
('Saint Vincent and the Grenadines', 'vct', 'vc', '670', NULL),
('Samoa', 'wsm', 'ws', '882', NULL),
('San Marino', 'smr', 'sm', '674', NULL),
('Sao Tome and Principe', 'stp', 'st', '678', NULL),
('Saudi Arabia', 'sau', 'sa', '682', NULL),
('Senegal', 'sen', 'sn', '686', NULL),
('Serbia', 'srb', 'rs', '688', NULL),
('Seychelles', 'syc', 'sc', '690', NULL),
('Sierra Leone', 'sle', 'sl', '694', NULL),
('Singapore', 'sgp', 'sg', '702', NULL),
('Slovakia', 'svk', 'sk', '703', NULL),
('Slovenia', 'svn', 'si', '705', NULL),
('Solomon Islands', 'slb', 'sb', '090', NULL),
('Somalia', 'som', 'so', '706', NULL),
('South Africa', 'zaf', 'za', '710', NULL),
('South Georgia and the South Sandwich Islands', 'sgs', 'gs', '239', NULL),
('Spain', 'esp', 'es', '724', NULL),
('Sri Lanka', 'lka', 'lk', '144', NULL),
('Sudan', 'sdn', 'sd', '736', NULL),
('Suriname', 'sur', 'sr', '740', NULL),
('Svalbard and Jan Mayen', 'sjm', 'sj', '744', NULL),
('Swaziland', 'swz', 'sz', '748', NULL),
('Sweden', 'swe', 'se', '752', NULL),
('Switzerland', 'che', 'ch', '756', NULL),
('Syrian Arab Republic', 'syr', 'sy', '760', NULL),
('Taiwan, Province of China', 'twn', 'tw', '158', NULL),
('Tajikistan', 'tjk', 'tj', '762', NULL),
('Tanzania, United Republic of', 'tza', 'tz', '834', NULL),
('Thailand', 'tha', 'th', '764', NULL),
('Timor-Leste', 'tls', 'tl', '626', NULL),
('Togo', 'tgo', 'tg', '768', NULL),
('Tokelau', 'tkl', 'tk', '772', NULL),
('Tonga', 'ton', 'to', '776', NULL),
('Trinidad and Tobago', 'tto', 'tt', '780', NULL),
('Tunisia', 'tun', 'tn', '788', NULL),
('Turkey', 'tur', 'tr', '792', NULL),
('Turkmenistan', 'tkm', 'tm', '795', NULL),
('Turks and Caicos Islands', 'tca', 'tc', '796', NULL),
('Tuvalu', 'tuv', 'tv', '798', NULL),
('Uganda', 'uga', 'ug', '800', NULL),
('Ukraine', 'ukr', 'ua', '804', 1),
('United Arab Emirates', 'are', 'ae', '784', NULL),
('United Kingdom', 'gbr', 'gb', '826', NULL),
('United States', 'usa', 'us', '840', NULL),
('United States Minor Outlying Islands', 'umi', 'um', '581', NULL),
('Uruguay', 'ury', 'uy', '858', NULL),
('Uzbekistan', 'uzb', 'uz', '860', NULL),
('Vanuatu', 'vut', 'vu', '548', NULL),
('Venezuela, Bolivarian Republic of', 'ven', 've', '862', NULL),
('Viet Nam', 'vnm', 'vn', '704', NULL),
('Virgin Islands, British', 'vgb', 'vg', '092', NULL),
('Virgin Islands, U.S.', 'vir', 'vi', '850', NULL),
('Wallis and Futuna', 'wlf', 'wf', '876', NULL),
('Western Sahara', 'esh', 'eh', '732', NULL),
('Yemen', 'yem', 'ye', '887', NULL),
('Zambia', 'zmb', 'zm', '894', NULL),
('Zimbabwe', 'zwe', 'zw', '716', NULL),
('Abkhazia', 'abh', 'ab', '895', NULL),
('Bonaire, Sint Eustatius and Saba', 'bes', 'bq', '535', NULL),
('Guernsey', 'ggy', 'gg', '831', NULL),
('Jersey', 'jey', 'je', '832', NULL),
('Curaçao', 'cuw', 'cw', '531', NULL),
('Isle of Man', 'imn', 'im', '833', NULL),
('Saint Barthélemy', 'blm', 'bl', '652', NULL),
('Saint Martin (French Part)', 'maf', 'mf', '663', NULL),
('Sint Maarten', 'sxm', 'sx', '534', NULL),
('South Ossetia', 'ost', 'os', '896', NULL),
('South Sudan', 'ssd', 'ss', '728', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wa_dashboard`
--

CREATE TABLE `wa_dashboard` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hash` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_group`
--

CREATE TABLE `wa_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cnt` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `type` enum('group','location') NOT NULL DEFAULT 'group',
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wa_group`
--

INSERT INTO `wa_group` (`id`, `name`, `cnt`, `icon`, `sort`, `type`, `description`) VALUES
(1, 'Администраторы', 1, NULL, 0, 'group', NULL),
(2, 'Мой офис', 1, NULL, 1, 'location', NULL),
(3, 'Удаленно', 0, NULL, 2, 'location', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wa_log`
--

CREATE TABLE `wa_log` (
  `id` bigint(20) NOT NULL,
  `app_id` varchar(32) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `action` varchar(255) NOT NULL,
  `subject_contact_id` int(11) DEFAULT NULL,
  `params` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wa_log`
--

INSERT INTO `wa_log` (`id`, `app_id`, `contact_id`, `datetime`, `action`, `subject_contact_id`, `params`) VALUES
(1, 'webasyst', 0, '2022-09-02 21:37:42', 'welcome', NULL, ''),
(2, 'site', 1, '2022-09-02 21:55:18', 'page_add', NULL, '1'),
(3, 'installer', 1, '2022-09-02 22:50:44', 'item_install', NULL, '{\n    \"type\": \"apps\",\n    \"id\": \"blog\",\n    \"ip\": \"127.0.0.1\"\n}'),
(4, 'installer', 1, '2022-09-02 22:52:03', 'item_install', NULL, '{\n    \"type\": \"plugins\",\n    \"id\": \"blog\\/tag\",\n    \"ip\": \"127.0.0.1\"\n}'),
(5, 'installer', 1, '2022-09-02 22:55:14', 'item_install', NULL, '{\n    \"type\": \"plugins\",\n    \"id\": \"blog\\/troll\",\n    \"ip\": \"127.0.0.1\"\n}'),
(6, 'installer', 1, '2022-09-02 22:57:09', 'item_install', NULL, '{\n    \"type\": \"plugins\",\n    \"id\": \"blog\\/emailsubscription\",\n    \"ip\": \"127.0.0.1\"\n}'),
(7, 'installer', 1, '2022-09-03 00:21:11', 'item_disable', NULL, '{\n    \"type\": \"plugins\",\n    \"id\": \"shop\\/ordercall\",\n    \"ip\": \"127.0.0.1\"\n}'),
(8, 'installer', 1, '2022-09-03 00:21:18', 'item_enable', NULL, '{\n    \"type\": \"plugins\",\n    \"id\": \"shop\\/ordercall\",\n    \"ip\": \"127.0.0.1\"\n}'),
(9, 'webasyst', 1, '2022-09-03 18:55:18', 'login', NULL, 'backend'),
(10, 'site', 1, '2022-09-03 18:57:41', 'site_edit', NULL, 'webasyst2.loc');

-- --------------------------------------------------------

--
-- Структура таблицы `wa_login_log`
--

CREATE TABLE `wa_login_log` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `datetime_in` datetime NOT NULL,
  `datetime_out` datetime DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wa_login_log`
--

INSERT INTO `wa_login_log` (`id`, `contact_id`, `datetime_in`, `datetime_out`, `ip`) VALUES
(1, 1, '2022-09-02 21:52:43', '2022-09-02 22:09:39', '127.0.0.1'),
(2, 1, '2022-09-02 22:26:01', '2022-09-03 01:12:58', '127.0.0.1'),
(3, 1, '2022-09-03 01:32:28', '2022-09-03 02:07:29', '127.0.0.1'),
(4, 1, '2022-09-03 18:55:18', '2022-09-03 20:03:05', '127.0.0.1'),
(5, 1, '2022-09-03 20:45:38', '2022-09-03 21:12:30', '127.0.0.1'),
(6, 1, '2022-09-03 22:45:56', '2022-09-03 22:45:56', '127.0.0.1'),
(7, 1, '2022-09-03 23:09:12', '2022-09-04 00:15:46', '127.0.0.1'),
(8, 1, '2022-09-04 00:31:51', '2022-09-04 01:15:12', '127.0.0.1'),
(9, 1, '2022-09-04 01:33:54', '2022-09-04 01:33:54', '127.0.0.1'),
(10, 1, '2022-09-04 18:50:37', '2022-09-04 18:58:46', '127.0.0.1'),
(11, 1, '2022-09-04 20:13:45', '2022-09-04 20:25:18', '127.0.0.1'),
(12, 1, '2022-09-04 21:47:36', NULL, '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `wa_push_subscribers`
--

CREATE TABLE `wa_push_subscribers` (
  `id` int(11) NOT NULL,
  `provider_id` varchar(64) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `subscriber_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_region`
--

CREATE TABLE `wa_region` (
  `country_iso3` varchar(3) NOT NULL,
  `code` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fav_sort` int(11) DEFAULT NULL,
  `region_center` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wa_region`
--

INSERT INTO `wa_region` (`country_iso3`, `code`, `name`, `fav_sort`, `region_center`) VALUES
('usa', 'AK', 'Alaska', NULL, NULL),
('usa', 'AL', 'Alabama', NULL, NULL),
('usa', 'AR', 'Arkansas', NULL, NULL),
('usa', 'AZ', 'Arizona', NULL, NULL),
('usa', 'CA', 'California', NULL, NULL),
('usa', 'CO', 'Colorado', NULL, NULL),
('usa', 'CT', 'Connecticut', NULL, NULL),
('usa', 'DC', 'Washington, D.C.', NULL, NULL),
('usa', 'DE', 'Delaware', NULL, NULL),
('usa', 'FL', 'Florida', NULL, NULL),
('usa', 'GA', 'Georgia State', NULL, NULL),
('usa', 'HI', 'Hawaii', NULL, NULL),
('usa', 'IA', 'Iowa', NULL, NULL),
('usa', 'ID', 'Idaho', NULL, NULL),
('usa', 'IL', 'Illinois', NULL, NULL),
('usa', 'IN', 'Indiana', NULL, NULL),
('usa', 'KS', 'Kansas', NULL, NULL),
('usa', 'KY', 'Kentucky', NULL, NULL),
('usa', 'LA', 'Louisiana', NULL, NULL),
('usa', 'MA', 'Massachusetts', NULL, NULL),
('usa', 'MD', 'Maryland', NULL, NULL),
('usa', 'ME', 'Maine', NULL, NULL),
('usa', 'MI', 'Michigan', NULL, NULL),
('usa', 'MN', 'Minnesota', NULL, NULL),
('usa', 'MO', 'Missouri', NULL, NULL),
('usa', 'MS', 'Mississippi', NULL, NULL),
('usa', 'MT', 'Montana', NULL, NULL),
('usa', 'NC', 'North Carolina', NULL, NULL),
('usa', 'ND', 'North Dakota', NULL, NULL),
('usa', 'NE', 'Nebraska', NULL, NULL),
('usa', 'NH', 'New Hampshire', NULL, NULL),
('usa', 'NJ', 'New Jersey', NULL, NULL),
('usa', 'NM', 'New Mexico', NULL, NULL),
('usa', 'NV', 'Nevada', NULL, NULL),
('usa', 'NY', 'New York', NULL, NULL),
('usa', 'OH', 'Ohio', NULL, NULL),
('usa', 'OK', 'Oklahoma', NULL, NULL),
('usa', 'OR', 'Oregon', NULL, NULL),
('usa', 'PA', 'Pennsylvania', NULL, NULL),
('usa', 'RI', 'Rhode Island', NULL, NULL),
('usa', 'SC', 'South Carolina', NULL, NULL),
('usa', 'SD', 'South Dakota', NULL, NULL),
('usa', 'TN', 'Tennessee', NULL, NULL),
('usa', 'TX', 'Texas', NULL, NULL),
('usa', 'UT', 'Utah', NULL, NULL),
('usa', 'VA', 'Virginia', NULL, NULL),
('usa', 'VT', 'Vermont', NULL, NULL),
('usa', 'WA', 'Washington', NULL, NULL),
('usa', 'WI', 'Wisconsin', NULL, NULL),
('usa', 'WV', 'West Virginia', NULL, NULL),
('usa', 'WY', 'Wyoming', NULL, NULL),
('can', 'AB', 'Alberta', NULL, NULL),
('can', 'BC', 'British Columbia', NULL, NULL),
('can', 'MB', 'Manitoba', NULL, NULL),
('can', 'NB', 'New Brunswick', NULL, NULL),
('can', 'NL', 'Newfoundland and Labrador', NULL, NULL),
('can', 'NS', 'Nova Scotia', NULL, NULL),
('can', 'ON', 'Ontario', NULL, NULL),
('can', 'PE', 'Prince Edward Island', NULL, NULL),
('can', 'QC', 'Quebec', NULL, NULL),
('can', 'SK', 'Saskatchewan', NULL, NULL),
('can', 'NT', 'Northwest Territories', NULL, NULL),
('can', 'YT', 'Yukon', NULL, NULL),
('can', 'NU', 'Nunavut', NULL, NULL),
('rus', '01', 'Адыгея республика', NULL, NULL),
('rus', '04', 'Алтай республика', NULL, NULL),
('rus', '22', 'Алтайский край', NULL, NULL),
('rus', '28', 'Амурская область', NULL, NULL),
('rus', '29', 'Архангельская область', NULL, NULL),
('rus', '30', 'Астраханская область', NULL, NULL),
('rus', '02', 'Башкортостан республика', NULL, NULL),
('rus', '31', 'Белгородская область', NULL, NULL),
('rus', '32', 'Брянская область', NULL, NULL),
('rus', '03', 'Бурятия республика', NULL, NULL),
('rus', '33', 'Владимирская область', NULL, NULL),
('rus', '34', 'Волгоградская область', NULL, NULL),
('rus', '35', 'Вологодская область', NULL, NULL),
('rus', '36', 'Воронежская область', NULL, NULL),
('rus', '05', 'Дагестан республика', NULL, NULL),
('rus', '79', 'Еврейская автономная область', NULL, NULL),
('rus', '75', 'Забайкальский край', NULL, NULL),
('rus', '37', 'Ивановская область', NULL, NULL),
('rus', '06', 'Ингушетия республика', NULL, NULL),
('rus', '38', 'Иркутская область', NULL, NULL),
('rus', '07', 'Кабардино-Балкарская республика', NULL, NULL),
('rus', '09', 'Карачаево-Черкесская республика', NULL, NULL),
('rus', '39', 'Калининградская область', NULL, NULL),
('rus', '08', 'Калмыкия республика', NULL, NULL),
('rus', '40', 'Калужская область', NULL, NULL),
('rus', '41', 'Камчатский край', NULL, NULL),
('rus', '10', 'Карелия республика', NULL, NULL),
('rus', '42', 'Кемеровская область', NULL, NULL),
('rus', '43', 'Кировская область', NULL, NULL),
('rus', '11', 'Коми республика', NULL, NULL),
('rus', '44', 'Костромская область', NULL, NULL),
('rus', '23', 'Краснодарский край', NULL, NULL),
('rus', '24', 'Красноярский край', NULL, NULL),
('rus', '91', 'Крым республика', NULL, NULL),
('rus', '45', 'Курганская область', NULL, NULL),
('rus', '46', 'Курская область', NULL, NULL),
('rus', '47', 'Ленинградская область', NULL, NULL),
('rus', '48', 'Липецкая область', NULL, NULL),
('rus', '49', 'Магаданская область', NULL, NULL),
('rus', '12', 'Марий Эл республика', NULL, NULL),
('rus', '50', 'Московская область', NULL, NULL),
('rus', '77', 'Москва', NULL, 'Москва'),
('rus', '13', 'Мордовия республика', NULL, NULL),
('rus', '51', 'Мурманская область', NULL, NULL),
('rus', '83', 'Ненецкий автономный округ', NULL, NULL),
('rus', '52', 'Нижегородская область', NULL, NULL),
('rus', '53', 'Новгородская область', NULL, NULL),
('rus', '54', 'Новосибирская область', NULL, NULL),
('rus', '55', 'Омская область', NULL, NULL),
('rus', '56', 'Оренбургская область', NULL, NULL),
('rus', '57', 'Орловская область', NULL, NULL),
('rus', '58', 'Пензенская область', NULL, NULL),
('rus', '59', 'Пермский край', NULL, NULL),
('rus', '25', 'Приморский край', NULL, NULL),
('rus', '60', 'Псковская область', NULL, NULL),
('rus', '61', 'Ростовская область', NULL, NULL),
('rus', '62', 'Рязанская область', NULL, NULL),
('rus', '63', 'Самарская область', NULL, NULL),
('rus', '78', 'Санкт-Петербург', NULL, 'Санкт-Петербург'),
('rus', '64', 'Саратовская область', NULL, NULL),
('rus', '14', 'Саха (Якутия) республика', NULL, NULL),
('rus', '65', 'Сахалинская область', NULL, NULL),
('rus', '66', 'Свердловская область', NULL, NULL),
('rus', '92', 'Севастополь', NULL, 'Севастополь'),
('rus', '15', 'Северная Осетия-Алания', NULL, NULL),
('rus', '67', 'Смоленская область', NULL, NULL),
('rus', '26', 'Ставропольский край', NULL, NULL),
('rus', '68', 'Тамбовская область', NULL, NULL),
('rus', '16', 'Татарстан республика', NULL, NULL),
('rus', '69', 'Тверская область', NULL, NULL),
('rus', '70', 'Томская область', NULL, NULL),
('rus', '71', 'Тульская область', NULL, NULL),
('rus', '72', 'Тюменская область', NULL, NULL),
('rus', '17', 'Тыва республика', NULL, NULL),
('rus', '18', 'Удмуртская республика', NULL, NULL),
('rus', '73', 'Ульяновская область', NULL, NULL),
('rus', '27', 'Хабаровский край', NULL, NULL),
('rus', '19', 'Хакасия республика', NULL, NULL),
('rus', '86', 'Ханты-Мансийский-Югра автономный округ', NULL, NULL),
('rus', '74', 'Челябинская область', NULL, NULL),
('rus', '20', 'Чеченская республика', NULL, NULL),
('rus', '21', 'Чувашская республика', NULL, NULL),
('rus', '87', 'Чукотский автономный округ', NULL, NULL),
('rus', '89', 'Ямало-Ненецкий автономный округ', NULL, NULL),
('rus', '76', 'Ярославская область', NULL, NULL),
('ukr', '01', 'Автономна Республіка Крим', NULL, NULL),
('ukr', '02', 'Вінницька область', NULL, NULL),
('ukr', '03', 'Волинська область', NULL, NULL),
('ukr', '04', 'Дніпропетровська область', NULL, NULL),
('ukr', '05', 'Донецька область', NULL, NULL),
('ukr', '06', 'Житомирська область', NULL, NULL),
('ukr', '07', 'Закарпатська область', NULL, NULL),
('ukr', '08', 'Запорізька область', NULL, NULL),
('ukr', '09', 'Івано-Франківська область', NULL, NULL),
('ukr', '10', 'Київська область', NULL, NULL),
('ukr', '11', 'місто Київ', NULL, NULL),
('ukr', '12', 'Кіровоградська область', NULL, NULL),
('ukr', '13', 'Луганська область', NULL, NULL),
('ukr', '14', 'Львівська область', NULL, NULL),
('ukr', '15', 'Миколаївська область', NULL, NULL),
('ukr', '16', 'Одеська область', NULL, NULL),
('ukr', '17', 'Полтавська область', NULL, NULL),
('ukr', '18', 'Рівненська область', NULL, NULL),
('ukr', '19', 'Сумська область', NULL, NULL),
('ukr', '20', 'Тернопільська область', NULL, NULL),
('ukr', '21', 'Харківська область', NULL, NULL),
('ukr', '22', 'Херсонська область', NULL, NULL),
('ukr', '23', 'Хмельницька область', NULL, NULL),
('ukr', '24', 'Черкаська область', NULL, NULL),
('ukr', '25', 'Чернігівська область', NULL, NULL),
('ukr', '26', 'Чернівецька область', NULL, NULL),
('ukr', '27', 'місто Севастополь', NULL, 'Севастополь');

-- --------------------------------------------------------

--
-- Структура таблицы `wa_transaction`
--

CREATE TABLE `wa_transaction` (
  `id` int(11) NOT NULL,
  `plugin` varchar(50) NOT NULL,
  `app_id` varchar(50) NOT NULL,
  `merchant_id` varchar(50) DEFAULT NULL,
  `native_id` varchar(255) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `update_datetime` datetime NOT NULL,
  `type` varchar(20) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  `part_number` int(11) NOT NULL DEFAULT '0',
  `customer_id` varchar(50) DEFAULT NULL,
  `result` varchar(20) NOT NULL,
  `error` varchar(255) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `view_data` text,
  `amount` decimal(20,8) NOT NULL DEFAULT '0.00000000',
  `currency_id` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_transaction_data`
--

CREATE TABLE `wa_transaction_data` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `field_id` varchar(50) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_user_groups`
--

CREATE TABLE `wa_user_groups` (
  `contact_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `datetime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wa_user_groups`
--

INSERT INTO `wa_user_groups` (`contact_id`, `group_id`, `datetime`) VALUES
(1, 2, '2022-09-02 22:06:22'),
(1, 1, '2022-09-02 22:06:22');

-- --------------------------------------------------------

--
-- Структура таблицы `wa_verification_channel`
--

CREATE TABLE `wa_verification_channel` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(64) NOT NULL,
  `type` varchar(64) NOT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `system` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wa_verification_channel`
--

INSERT INTO `wa_verification_channel` (`id`, `name`, `address`, `type`, `create_datetime`, `system`) VALUES
(1, 'Системные шаблоны', 'romamilas25139@gmail.com', 'email', '2022-09-02 21:52:43', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wa_verification_channel_assets`
--

CREATE TABLE `wa_verification_channel_assets` (
  `id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `address` varchar(64) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `value` text,
  `expires` datetime DEFAULT NULL,
  `tries` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_verification_channel_params`
--

CREATE TABLE `wa_verification_channel_params` (
  `channel_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_widget`
--

CREATE TABLE `wa_widget` (
  `id` int(11) NOT NULL,
  `widget` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `dashboard_id` int(11) DEFAULT NULL,
  `create_datetime` datetime NOT NULL,
  `app_id` varchar(32) NOT NULL,
  `block` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `size` char(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wa_widget`
--

INSERT INTO `wa_widget` (`id`, `widget`, `name`, `contact_id`, `dashboard_id`, `create_datetime`, `app_id`, `block`, `sort`, `size`) VALUES
(1, 'news', 'Новости', 1, NULL, '2022-09-02 21:52:43', 'webasyst', 0, 0, '2x2'),
(2, 'currencyquotes', 'Курсы валют', 1, NULL, '2022-09-02 21:52:43', 'webasyst', 1, 0, '2x2'),
(3, 'clock', 'Часы', 1, NULL, '2022-09-02 21:52:43', 'webasyst', 2, 0, '2x1'),
(4, 'clock', 'Часы', 1, NULL, '2022-09-02 21:52:43', 'webasyst', 2, 1, '1x1'),
(5, 'clock', 'Часы', 1, NULL, '2022-09-02 21:52:43', 'webasyst', 2, 2, '1x1'),
(6, 'weather', 'Погода', 1, NULL, '2022-09-02 21:52:43', 'webasyst', 3, 0, '2x2'),
(7, 'news', 'Новости', 1, NULL, '2022-09-02 21:52:43', 'webasyst', 4, 0, '2x2');

-- --------------------------------------------------------

--
-- Структура таблицы `wa_widget_params`
--

CREATE TABLE `wa_widget_params` (
  `widget_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wa_widget_params`
--

INSERT INTO `wa_widget_params` (`widget_id`, `name`, `value`) VALUES
(1, 'rss_feed', 'https://news.yandex.ru/index.rss'),
(3, 'source', 'local'),
(3, 'type', 'round'),
(4, 'source', '3'),
(4, 'town', 'Москва'),
(4, 'type', 'round'),
(5, 'source', '8'),
(5, 'town', 'Гонконг'),
(5, 'type', 'round'),
(6, 'city', 'Москва'),
(6, 'unit', 'C'),
(7, 'rss_feed', 'custom'),
(7, 'custom_rss_feed', 'http://feeds.feedburner.com/webasystcom/ru'),
(2, 'quotes', '{\"2022-09-03\":{\"USD\":{\"code\":\"USD\",\"val\":\"60.3713\"},\"EUR\":{\"code\":\"EUR\",\"val\":\"60.2187\"}},\"2022-09-02\":{\"USD\":{\"code\":\"USD\",\"val\":\"60.2370\"},\"EUR\":{\"code\":\"EUR\",\"val\":\"60.2842\"}},\"2022-09-05\":{\"USD\":{\"code\":\"USD\",\"val\":\"60.3713\"},\"EUR\":{\"code\":\"EUR\",\"val\":\"60.2187\"}},\"2022-09-04\":{\"USD\":{\"code\":\"USD\",\"val\":\"60.3713\"},\"EUR\":{\"code\":\"EUR\",\"val\":\"60.2187\"}}}'),
(6, 'weathers', '{\"2022-09-02 21\":{\"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430\":{\"coord\":{\"lon\":37.6156,\"lat\":55.7522},\"weather\":[{\"id\":804,\"main\":\"Clouds\",\"description\":\"overcast clouds\",\"icon\":\"04n\"}],\"base\":\"stations\",\"main\":{\"temp\":48.51,\"feels_like\":44.51,\"temp_min\":48.15,\"temp_max\":49.55,\"pressure\":1019,\"humidity\":63,\"sea_level\":1019,\"grnd_level\":1001},\"visibility\":10000,\"wind\":{\"speed\":9.1,\"deg\":283,\"gust\":20.24},\"clouds\":{\"all\":100},\"dt\":1662144487,\"sys\":{\"type\":2,\"id\":47754,\"country\":\"RU\",\"sunrise\":1662086156,\"sunset\":1662135788},\"timezone\":10800,\"id\":524901,\"name\":\"Moscow\",\"cod\":200}},\"2022-09-04 18\":{\"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430\":{\"coord\":{\"lon\":37.6156,\"lat\":55.7522},\"weather\":[{\"id\":804,\"main\":\"Clouds\",\"description\":\"overcast clouds\",\"icon\":\"04d\"}],\"base\":\"stations\",\"main\":{\"temp\":55.67,\"feels_like\":53.47,\"temp_min\":53.83,\"temp_max\":57.24,\"pressure\":1021,\"humidity\":54,\"sea_level\":1021,\"grnd_level\":1003},\"visibility\":10000,\"wind\":{\"speed\":7.36,\"deg\":320,\"gust\":12.1},\"clouds\":{\"all\":95},\"dt\":1662306272,\"sys\":{\"type\":2,\"id\":2018597,\"country\":\"RU\",\"sunrise\":1662259187,\"sunset\":1662308279},\"timezone\":10800,\"id\":524901,\"name\":\"Moscow\",\"cod\":200}}}');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blog_blog`
--
ALTER TABLE `blog_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list` (`status`,`sort`),
  ADD KEY `routing` (`url`,`status`);

--
-- Индексы таблицы `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `parent` (`parent`),
  ADD KEY `status` (`status`),
  ADD KEY `count` (`blog_id`,`post_id`,`status`),
  ADD KEY `comment` (`post_id`,`left`);

--
-- Индексы таблицы `blog_page`
--
ALTER TABLE `blog_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `routing` (`route`,`status`);

--
-- Индексы таблицы `blog_page_params`
--
ALTER TABLE `blog_page_params`
  ADD PRIMARY KEY (`page_id`,`name`);

--
-- Индексы таблицы `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `routing` (`status`,`url`,`blog_id`),
  ADD KEY `feed` (`status`,`blog_id`,`datetime`),
  ADD KEY `contact` (`contact_id`,`blog_id`,`status`,`datetime`),
  ADD KEY `datetime` (`datetime`);

--
-- Индексы таблицы `blog_post_params`
--
ALTER TABLE `blog_post_params`
  ADD PRIMARY KEY (`post_id`,`name`);

--
-- Индексы таблицы `blog_post_tag`
--
ALTER TABLE `blog_post_tag`
  ADD KEY `post_id` (`post_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Индексы таблицы `blog_tag`
--
ALTER TABLE `blog_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `shop_abtest`
--
ALTER TABLE `shop_abtest`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_abtest_variants`
--
ALTER TABLE `shop_abtest_variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `antest_code` (`abtest_id`,`code`);

--
-- Индексы таблицы `shop_affiliate_transaction`
--
ALTER TABLE `shop_affiliate_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Индексы таблицы `shop_api_courier`
--
ALTER TABLE `shop_api_courier`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_api_courier_storefronts`
--
ALTER TABLE `shop_api_courier_storefronts`
  ADD KEY `courier` (`courier_id`);

--
-- Индексы таблицы `shop_cart_items`
--
ALTER TABLE `shop_cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- Индексы таблицы `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`parent_id`,`url`),
  ADD UNIQUE KEY `full_url` (`full_url`),
  ADD KEY `ns_keys` (`left_key`,`right_key`);

--
-- Индексы таблицы `shop_category_og`
--
ALTER TABLE `shop_category_og`
  ADD PRIMARY KEY (`category_id`,`property`);

--
-- Индексы таблицы `shop_category_params`
--
ALTER TABLE `shop_category_params`
  ADD PRIMARY KEY (`category_id`,`name`);

--
-- Индексы таблицы `shop_category_products`
--
ALTER TABLE `shop_category_products`
  ADD PRIMARY KEY (`category_id`,`product_id`);

--
-- Индексы таблицы `shop_category_routes`
--
ALTER TABLE `shop_category_routes`
  ADD PRIMARY KEY (`category_id`,`route`);

--
-- Индексы таблицы `shop_checkout_flow`
--
ALTER TABLE `shop_checkout_flow`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_contact_category_discount`
--
ALTER TABLE `shop_contact_category_discount`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `shop_coupon`
--
ALTER TABLE `shop_coupon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Индексы таблицы `shop_currency`
--
ALTER TABLE `shop_currency`
  ADD PRIMARY KEY (`code`);

--
-- Индексы таблицы `shop_customer`
--
ALTER TABLE `shop_customer`
  ADD PRIMARY KEY (`contact_id`);

--
-- Индексы таблицы `shop_customers_filter`
--
ALTER TABLE `shop_customers_filter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Индексы таблицы `shop_expense`
--
ALTER TABLE `shop_expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `start_end` (`start`,`end`);

--
-- Индексы таблицы `shop_feature`
--
ALTER TABLE `shop_feature`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Индексы таблицы `shop_feature_values_color`
--
ALTER TABLE `shop_feature_values_color`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `values` (`feature_id`,`value`);

--
-- Индексы таблицы `shop_feature_values_dimension`
--
ALTER TABLE `shop_feature_values_dimension`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `feature_id` (`feature_id`,`value`,`unit`,`type`);

--
-- Индексы таблицы `shop_feature_values_double`
--
ALTER TABLE `shop_feature_values_double`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `values` (`feature_id`,`value`);

--
-- Индексы таблицы `shop_feature_values_range`
--
ALTER TABLE `shop_feature_values_range`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `feature_id` (`feature_id`,`begin`,`end`,`unit`,`type`);

--
-- Индексы таблицы `shop_feature_values_text`
--
ALTER TABLE `shop_feature_values_text`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_feature_values_varchar`
--
ALTER TABLE `shop_feature_values_varchar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `values` (`feature_id`,`value`);

--
-- Индексы таблицы `shop_followup`
--
ALTER TABLE `shop_followup`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_followup_sources`
--
ALTER TABLE `shop_followup_sources`
  ADD KEY `followup_id` (`followup_id`),
  ADD KEY `source` (`source`(190));

--
-- Индексы таблицы `shop_importexport`
--
ALTER TABLE `shop_importexport`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`plugin`,`id`,`sort`);

--
-- Индексы таблицы `shop_notification`
--
ALTER TABLE `shop_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event` (`event`);

--
-- Индексы таблицы `shop_notification_params`
--
ALTER TABLE `shop_notification_params`
  ADD PRIMARY KEY (`notification_id`,`name`);

--
-- Индексы таблицы `shop_notification_sources`
--
ALTER TABLE `shop_notification_sources`
  ADD KEY `notification_id` (`notification_id`),
  ADD KEY `source` (`source`(190));

--
-- Индексы таблицы `shop_order`
--
ALTER TABLE `shop_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `shipping_datetime` (`shipping_datetime`);

--
-- Индексы таблицы `shop_order_items`
--
ALTER TABLE `shop_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_type` (`order_id`,`type`),
  ADD KEY `product_order` (`product_id`,`order_id`);

--
-- Индексы таблицы `shop_order_item_codes`
--
ALTER TABLE `shop_order_item_codes`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `order_item_id` (`order_item_id`);

--
-- Индексы таблицы `shop_order_log`
--
ALTER TABLE `shop_order_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `datetime` (`datetime`);

--
-- Индексы таблицы `shop_order_log_params`
--
ALTER TABLE `shop_order_log_params`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`order_id`,`log_id`,`name`);

--
-- Индексы таблицы `shop_order_params`
--
ALTER TABLE `shop_order_params`
  ADD PRIMARY KEY (`order_id`,`name`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `shop_page`
--
ALTER TABLE `shop_page`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_page_params`
--
ALTER TABLE `shop_page_params`
  ADD PRIMARY KEY (`page_id`,`name`);

--
-- Индексы таблицы `shop_plugin`
--
ALTER TABLE `shop_plugin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Индексы таблицы `shop_plugin_settings`
--
ALTER TABLE `shop_plugin_settings`
  ADD PRIMARY KEY (`id`,`name`);

--
-- Индексы таблицы `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url` (`url`),
  ADD KEY `total_sales` (`total_sales`);

--
-- Индексы таблицы `shop_product_code`
--
ALTER TABLE `shop_product_code`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_product_features`
--
ALTER TABLE `shop_product_features`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `feature` (`product_id`,`sku_id`,`feature_id`,`feature_value_id`),
  ADD KEY `product_feature` (`product_id`,`feature_id`,`feature_value_id`);

--
-- Индексы таблицы `shop_product_features_selectable`
--
ALTER TABLE `shop_product_features_selectable`
  ADD PRIMARY KEY (`product_id`,`feature_id`,`value_id`);

--
-- Индексы таблицы `shop_product_images`
--
ALTER TABLE `shop_product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `shop_product_og`
--
ALTER TABLE `shop_product_og`
  ADD PRIMARY KEY (`product_id`,`property`);

--
-- Индексы таблицы `shop_product_pages`
--
ALTER TABLE `shop_product_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`url`);

--
-- Индексы таблицы `shop_product_params`
--
ALTER TABLE `shop_product_params`
  ADD PRIMARY KEY (`product_id`,`name`);

--
-- Индексы таблицы `shop_product_related`
--
ALTER TABLE `shop_product_related`
  ADD PRIMARY KEY (`product_id`,`type`,`related_product_id`);

--
-- Индексы таблицы `shop_product_reviews`
--
ALTER TABLE `shop_product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `status` (`status`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `product_id` (`product_id`,`review_id`);

--
-- Индексы таблицы `shop_product_reviews_images`
--
ALTER TABLE `shop_product_reviews_images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_product_services`
--
ALTER TABLE `shop_product_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`product_id`,`sku_id`,`service_id`,`service_variant_id`),
  ADD KEY `service_id` (`service_id`,`service_variant_id`);

--
-- Индексы таблицы `shop_product_skus`
--
ALTER TABLE `shop_product_skus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `shop_product_stocks`
--
ALTER TABLE `shop_product_stocks`
  ADD PRIMARY KEY (`sku_id`,`stock_id`),
  ADD KEY `product_id` (`product_id`,`sku_id`);

--
-- Индексы таблицы `shop_product_stocks_log`
--
ALTER TABLE `shop_product_stocks_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`sku_id`),
  ADD KEY `stock_id` (`stock_id`);

--
-- Индексы таблицы `shop_product_tags`
--
ALTER TABLE `shop_product_tags`
  ADD PRIMARY KEY (`product_id`,`tag_id`);

--
-- Индексы таблицы `shop_promo`
--
ALTER TABLE `shop_promo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_promo_orders`
--
ALTER TABLE `shop_promo_orders`
  ADD PRIMARY KEY (`order_id`,`promo_id`);

--
-- Индексы таблицы `shop_promo_routes`
--
ALTER TABLE `shop_promo_routes`
  ADD PRIMARY KEY (`storefront`,`promo_id`);

--
-- Индексы таблицы `shop_promo_rules`
--
ALTER TABLE `shop_promo_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promo_id` (`promo_id`),
  ADD KEY `rule_type` (`rule_type`);

--
-- Индексы таблицы `shop_push_client`
--
ALTER TABLE `shop_push_client`
  ADD UNIQUE KEY `client` (`client_id`);

--
-- Индексы таблицы `shop_sales`
--
ALTER TABLE `shop_sales`
  ADD PRIMARY KEY (`hash`,`name`,`date`),
  ADD KEY `hash_date` (`hash`,`date`),
  ADD KEY `date` (`date`);

--
-- Индексы таблицы `shop_search_index`
--
ALTER TABLE `shop_search_index`
  ADD PRIMARY KEY (`product_id`,`word_id`),
  ADD KEY `word` (`word_id`,`product_id`,`weight`);

--
-- Индексы таблицы `shop_search_word`
--
ALTER TABLE `shop_search_word`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `shop_service`
--
ALTER TABLE `shop_service`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_service_variants`
--
ALTER TABLE `shop_service_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`);

--
-- Индексы таблицы `shop_set`
--
ALTER TABLE `shop_set`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_set_products`
--
ALTER TABLE `shop_set_products`
  ADD PRIMARY KEY (`set_id`,`product_id`);

--
-- Индексы таблицы `shop_stock`
--
ALTER TABLE `shop_stock`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_stock_rules`
--
ALTER TABLE `shop_stock_rules`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_tag`
--
ALTER TABLE `shop_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `shop_tax`
--
ALTER TABLE `shop_tax`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_tax_regions`
--
ALTER TABLE `shop_tax_regions`
  ADD UNIQUE KEY `tax_country_region` (`tax_id`,`country_iso3`,`region_code`);

--
-- Индексы таблицы `shop_tax_zip_codes`
--
ALTER TABLE `shop_tax_zip_codes`
  ADD PRIMARY KEY (`tax_id`,`zip_expr`);

--
-- Индексы таблицы `shop_transfer`
--
ALTER TABLE `shop_transfer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `string_id` (`string_id`);

--
-- Индексы таблицы `shop_transfer_products`
--
ALTER TABLE `shop_transfer_products`
  ADD PRIMARY KEY (`product_id`,`sku_id`,`transfer_id`);

--
-- Индексы таблицы `shop_type`
--
ALTER TABLE `shop_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_type_codes`
--
ALTER TABLE `shop_type_codes`
  ADD UNIQUE KEY `type_code` (`type_id`,`code_id`);

--
-- Индексы таблицы `shop_type_features`
--
ALTER TABLE `shop_type_features`
  ADD PRIMARY KEY (`type_id`,`feature_id`),
  ADD KEY `feature_id` (`feature_id`);

--
-- Индексы таблицы `shop_type_services`
--
ALTER TABLE `shop_type_services`
  ADD PRIMARY KEY (`type_id`,`service_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Индексы таблицы `shop_type_upselling`
--
ALTER TABLE `shop_type_upselling`
  ADD PRIMARY KEY (`type_id`,`feature`);

--
-- Индексы таблицы `shop_unit`
--
ALTER TABLE `shop_unit`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_virtualstock`
--
ALTER TABLE `shop_virtualstock`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `site_block`
--
ALTER TABLE `site_block`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `site_domain`
--
ALTER TABLE `site_domain`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `site_page`
--
ALTER TABLE `site_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url` (`domain_id`,`route`,`full_url`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Индексы таблицы `site_page_params`
--
ALTER TABLE `site_page_params`
  ADD PRIMARY KEY (`page_id`,`name`);

--
-- Индексы таблицы `team_calendar_external`
--
ALTER TABLE `team_calendar_external`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `calendar_id` (`calendar_id`);

--
-- Индексы таблицы `team_calendar_external_params`
--
ALTER TABLE `team_calendar_external_params`
  ADD PRIMARY KEY (`calendar_external_id`,`name`);

--
-- Индексы таблицы `team_event_external`
--
ALTER TABLE `team_event_external`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `event_id_calendar_external_id` (`event_id`,`calendar_external_id`),
  ADD KEY `calendar_external_id_native_event_id` (`calendar_external_id`,`native_event_id`);

--
-- Индексы таблицы `team_event_external_params`
--
ALTER TABLE `team_event_external_params`
  ADD PRIMARY KEY (`event_external_id`,`name`);

--
-- Индексы таблицы `team_location`
--
ALTER TABLE `team_location`
  ADD PRIMARY KEY (`group_id`);

--
-- Индексы таблицы `wa_announcement`
--
ALTER TABLE `wa_announcement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_datetime` (`datetime`,`app_id`);

--
-- Индексы таблицы `wa_api_auth_codes`
--
ALTER TABLE `wa_api_auth_codes`
  ADD PRIMARY KEY (`code`);

--
-- Индексы таблицы `wa_api_tokens`
--
ALTER TABLE `wa_api_tokens`
  ADD PRIMARY KEY (`token`),
  ADD UNIQUE KEY `contact_client` (`contact_id`,`client_id`);

--
-- Индексы таблицы `wa_app_settings`
--
ALTER TABLE `wa_app_settings`
  ADD PRIMARY KEY (`app_id`,`name`);

--
-- Индексы таблицы `wa_app_tokens`
--
ALTER TABLE `wa_app_tokens`
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `app` (`app_id`),
  ADD KEY `contact` (`contact_id`),
  ADD KEY `expire` (`expire_datetime`);

--
-- Индексы таблицы `wa_cache`
--
ALTER TABLE `wa_cache`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `expires` (`expires`);

--
-- Индексы таблицы `wa_contact`
--
ALTER TABLE `wa_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `wa_contact_calendars`
--
ALTER TABLE `wa_contact_calendars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sort` (`id`);

--
-- Индексы таблицы `wa_contact_categories`
--
ALTER TABLE `wa_contact_categories`
  ADD PRIMARY KEY (`category_id`,`contact_id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Индексы таблицы `wa_contact_category`
--
ALTER TABLE `wa_contact_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `system_id` (`system_id`);

--
-- Индексы таблицы `wa_contact_data`
--
ALTER TABLE `wa_contact_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_field_sort` (`contact_id`,`field`,`sort`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `value` (`value`),
  ADD KEY `field` (`field`);

--
-- Индексы таблицы `wa_contact_data_text`
--
ALTER TABLE `wa_contact_data_text`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_field_sort` (`contact_id`,`field`,`sort`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `field` (`field`);

--
-- Индексы таблицы `wa_contact_emails`
--
ALTER TABLE `wa_contact_emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_sort` (`contact_id`,`sort`),
  ADD KEY `email` (`email`),
  ADD KEY `status` (`status`);

--
-- Индексы таблицы `wa_contact_events`
--
ALTER TABLE `wa_contact_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `calendar_id` (`calendar_id`);

--
-- Индексы таблицы `wa_contact_field_values`
--
ALTER TABLE `wa_contact_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_field` (`parent_field`,`parent_value`);

--
-- Индексы таблицы `wa_contact_files`
--
ALTER TABLE `wa_contact_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `purpose` (`purpose`);

--
-- Индексы таблицы `wa_contact_rights`
--
ALTER TABLE `wa_contact_rights`
  ADD PRIMARY KEY (`group_id`,`app_id`,`name`),
  ADD KEY `name_value` (`name`,`value`,`group_id`,`app_id`);

--
-- Индексы таблицы `wa_contact_settings`
--
ALTER TABLE `wa_contact_settings`
  ADD PRIMARY KEY (`contact_id`,`app_id`,`name`);

--
-- Индексы таблицы `wa_contact_waid`
--
ALTER TABLE `wa_contact_waid`
  ADD PRIMARY KEY (`contact_id`),
  ADD UNIQUE KEY `webasyst_contact_id` (`webasyst_contact_id`);

--
-- Индексы таблицы `wa_country`
--
ALTER TABLE `wa_country`
  ADD PRIMARY KEY (`iso3letter`),
  ADD UNIQUE KEY `isonumeric` (`isonumeric`),
  ADD UNIQUE KEY `iso2letter` (`iso2letter`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `wa_dashboard`
--
ALTER TABLE `wa_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash` (`hash`);

--
-- Индексы таблицы `wa_group`
--
ALTER TABLE `wa_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `wa_log`
--
ALTER TABLE `wa_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact` (`contact_id`,`id`),
  ADD KEY `datetime` (`datetime`);

--
-- Индексы таблицы `wa_login_log`
--
ALTER TABLE `wa_login_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_datetime` (`contact_id`,`datetime_out`);

--
-- Индексы таблицы `wa_push_subscribers`
--
ALTER TABLE `wa_push_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provider_id` (`provider_id`),
  ADD KEY `domain` (`domain`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `create_datetime` (`create_datetime`);

--
-- Индексы таблицы `wa_region`
--
ALTER TABLE `wa_region`
  ADD PRIMARY KEY (`country_iso3`,`code`);

--
-- Индексы таблицы `wa_transaction`
--
ALTER TABLE `wa_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plugin` (`plugin`),
  ADD KEY `app_id` (`app_id`),
  ADD KEY `merchant_id` (`merchant_id`),
  ADD KEY `transaction_native_id` (`native_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `wa_transaction_data`
--
ALTER TABLE `wa_transaction_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `value` (`value`);

--
-- Индексы таблицы `wa_user_groups`
--
ALTER TABLE `wa_user_groups`
  ADD PRIMARY KEY (`contact_id`,`group_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Индексы таблицы `wa_verification_channel`
--
ALTER TABLE `wa_verification_channel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address` (`address`);

--
-- Индексы таблицы `wa_verification_channel_assets`
--
ALTER TABLE `wa_verification_channel_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channel_address_name` (`channel_id`,`address`,`contact_id`,`name`),
  ADD KEY `name` (`name`),
  ADD KEY `expires` (`expires`);

--
-- Индексы таблицы `wa_verification_channel_params`
--
ALTER TABLE `wa_verification_channel_params`
  ADD PRIMARY KEY (`channel_id`,`name`);

--
-- Индексы таблицы `wa_widget`
--
ALTER TABLE `wa_widget`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wa_widget_params`
--
ALTER TABLE `wa_widget_params`
  ADD PRIMARY KEY (`widget_id`,`name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blog_blog`
--
ALTER TABLE `blog_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `blog_page`
--
ALTER TABLE `blog_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `blog_tag`
--
ALTER TABLE `blog_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_abtest`
--
ALTER TABLE `shop_abtest`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_abtest_variants`
--
ALTER TABLE `shop_abtest_variants`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_affiliate_transaction`
--
ALTER TABLE `shop_affiliate_transaction`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_api_courier`
--
ALTER TABLE `shop_api_courier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_cart_items`
--
ALTER TABLE `shop_cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_checkout_flow`
--
ALTER TABLE `shop_checkout_flow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_coupon`
--
ALTER TABLE `shop_coupon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_customers_filter`
--
ALTER TABLE `shop_customers_filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `shop_expense`
--
ALTER TABLE `shop_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_feature`
--
ALTER TABLE `shop_feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `shop_feature_values_color`
--
ALTER TABLE `shop_feature_values_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `shop_feature_values_dimension`
--
ALTER TABLE `shop_feature_values_dimension`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_feature_values_double`
--
ALTER TABLE `shop_feature_values_double`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_feature_values_range`
--
ALTER TABLE `shop_feature_values_range`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_feature_values_text`
--
ALTER TABLE `shop_feature_values_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_feature_values_varchar`
--
ALTER TABLE `shop_feature_values_varchar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_followup`
--
ALTER TABLE `shop_followup`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_importexport`
--
ALTER TABLE `shop_importexport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_notification`
--
ALTER TABLE `shop_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `shop_order`
--
ALTER TABLE `shop_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_order_items`
--
ALTER TABLE `shop_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_order_log`
--
ALTER TABLE `shop_order_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_order_log_params`
--
ALTER TABLE `shop_order_log_params`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_page`
--
ALTER TABLE `shop_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_plugin`
--
ALTER TABLE `shop_plugin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_product_code`
--
ALTER TABLE `shop_product_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_product_features`
--
ALTER TABLE `shop_product_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_product_images`
--
ALTER TABLE `shop_product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_product_pages`
--
ALTER TABLE `shop_product_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_product_reviews`
--
ALTER TABLE `shop_product_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_product_reviews_images`
--
ALTER TABLE `shop_product_reviews_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_product_services`
--
ALTER TABLE `shop_product_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_product_skus`
--
ALTER TABLE `shop_product_skus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_product_stocks_log`
--
ALTER TABLE `shop_product_stocks_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_promo`
--
ALTER TABLE `shop_promo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `shop_promo_rules`
--
ALTER TABLE `shop_promo_rules`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `shop_search_word`
--
ALTER TABLE `shop_search_word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_service`
--
ALTER TABLE `shop_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_service_variants`
--
ALTER TABLE `shop_service_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_stock`
--
ALTER TABLE `shop_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_stock_rules`
--
ALTER TABLE `shop_stock_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_tag`
--
ALTER TABLE `shop_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_tax`
--
ALTER TABLE `shop_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `shop_transfer`
--
ALTER TABLE `shop_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `shop_type`
--
ALTER TABLE `shop_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `shop_unit`
--
ALTER TABLE `shop_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `shop_virtualstock`
--
ALTER TABLE `shop_virtualstock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `site_domain`
--
ALTER TABLE `site_domain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `site_page`
--
ALTER TABLE `site_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `team_calendar_external`
--
ALTER TABLE `team_calendar_external`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `team_event_external`
--
ALTER TABLE `team_event_external`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wa_announcement`
--
ALTER TABLE `wa_announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wa_cache`
--
ALTER TABLE `wa_cache`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wa_contact`
--
ALTER TABLE `wa_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wa_contact_calendars`
--
ALTER TABLE `wa_contact_calendars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `wa_contact_category`
--
ALTER TABLE `wa_contact_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wa_contact_data`
--
ALTER TABLE `wa_contact_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wa_contact_data_text`
--
ALTER TABLE `wa_contact_data_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wa_contact_emails`
--
ALTER TABLE `wa_contact_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wa_contact_events`
--
ALTER TABLE `wa_contact_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wa_contact_field_values`
--
ALTER TABLE `wa_contact_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wa_contact_files`
--
ALTER TABLE `wa_contact_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wa_dashboard`
--
ALTER TABLE `wa_dashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wa_group`
--
ALTER TABLE `wa_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wa_log`
--
ALTER TABLE `wa_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `wa_login_log`
--
ALTER TABLE `wa_login_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `wa_push_subscribers`
--
ALTER TABLE `wa_push_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wa_transaction`
--
ALTER TABLE `wa_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wa_transaction_data`
--
ALTER TABLE `wa_transaction_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wa_verification_channel`
--
ALTER TABLE `wa_verification_channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wa_verification_channel_assets`
--
ALTER TABLE `wa_verification_channel_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wa_widget`
--
ALTER TABLE `wa_widget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
