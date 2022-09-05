<?php

final class shopOrdercallViewHelper
{

    public static function display()
    {
        return static::getHtml();
    }

    /**
     * @return string
     */
    private static function getHtml() : string
    {
        $plugin = wa('shop')->getPlugin('ordercall');
        $settings = $plugin->getSettings();
        $privacyLink = $settings['link'];
        $captcha = wa('shop')->getCaptcha()->getHtml();

        if (!$settings['is_enable']) return '';

        $isWorkingHoursText = self::isWorkingHours()
            ? 'Мы очень Вам рады. Давайте мы перезвоним Вам и обсудим детали?'
            : 'К сожалению, наш рабочий день уже закончился. Но мы обязательно перезвоним вам в указанное время!';

        $html = <<<EOT
<div class="order-call-form my-modal" id="orderCallForm">
    <form action="/" name="order_call_form" method="post">
        <header>
            <h4>Заказать звонок</h4>
            <div class="order-call-form__close" id="close_form"></div>
        </header>
        <section>
            <div class="order-call-form__desc">
                <div class="order-call-form__face"></div>
                <div class="order-call-form__text">
                    <p>$isWorkingHoursText</p>
                </div>
            </div>
            <div class="order-call-form__fields">
                <label for="lastname">Имя</label>
                <input type="text" id="lastname" name="lastname" />
                <label for="email">Email</label>
                <input type="email" id="email" name="email" />
                <label for="phone">Телефон</label>
                <input type="tel" id="phone" name="phone" />
                <label for="time_to_call">Время для звонка</label>
                <input type="range" id="time_to_call" name="time_to_call" min="8" max="17" value="8" step="1" />
                <div class="order-call-form-fields__scale">
                    <span>8</span>
                    <span>9</span>
                    <span>10</span>
                    <span>11</span>
                    <span>12</span>
                    <span>13</span>
                    <span>14</span>
                    <span>15</span>
                    <span>16</span>
                    <span>17</span>
                </div>
                <label for="comment">Комментарий</label>
                <textarea name="comment" id="comment" cols="30" rows="3"></textarea>
                $captcha
            </div>
        </section>
        <footer>
            <p class="order-call-form__error"></p>
            <button>Отправить</button>
            <p><i>Нажимая на кнопку «Отправить», вы соглашаетесь на обработку персональных данных в соответствии с <a href="$privacyLink">Политикой конфиденциальности</a></i></p>
        </footer>
    </form>
</div>

<div class="result-modal my-modal" id="resultModal"></div>

<a class="order-call" id="orderCall" href="#" title="Заказать обратный звонок"><div></div></a>
EOT;

        return $html;
    }

    /**
     * @return bool
     */
    private static function isWorkingHours() : bool
    {
        return (waDateTime::format('time') > '08:00' && waDateTime::format('time') < '17:00');
    }
}