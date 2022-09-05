window.onload = () => {
    const orderCall = document.getElementById('orderCall');
    const closeForm = document.getElementById('close_form');
    const submitButton = document.querySelector('#orderCallForm button');

    orderCall.addEventListener('click', (e) => {
        e.preventDefault();
        showModalForm();
    });

    closeForm.addEventListener('click', () => {
        closeModalForm();
    });

    closeForm.addEventListener('click', () => {
        closeModalForm();
    });

    submitButton.addEventListener('click', (e) => {
        e.preventDefault();
        sendForm();
    });
};

function showModalForm() {
    let form = document.getElementById('orderCallForm');
    form.style.display = "block";
}

function closeModalForm() {
    let form = document.getElementById('orderCallForm');
    form.style.display = "none";
}

function showResultMessage(isSuccess = true) {
    let modal = document.getElementById('resultModal');

    modal.style.display = "block";

    if (isSuccess) {
        modal.append('Спасибо! Наш менеджер с Вами свяжется!');
    } else {
        modal.append('Произошла неизвестная ошибка. Попробуйте позднее.');
    }

    setTimeout(() => modal.style.display = "none", 2000);
}

function sendForm() {
    if (validateForm()) {
        let form = document.querySelector('#orderCallForm form');
        let data = new FormData(form);
        let req = new XMLHttpRequest();

        req.open('POST', '/shop/send/', false);

        req.send(data);

        closeModalForm();

        if (req.status === 200 && req.responseText !== 'error') {
            showResultMessage(true);
        } else {
            showResultMessage(false);
        }
    }
}

function validateForm() {
    const inputs = [...document.querySelectorAll('.order-call-form__fields input')];
    let error;

    inputs.forEach((e) => {
        if (e.id) {
            let name = document.querySelector(`label[for="${e.id}"]`).innerHTML;

            if (e.value === '') {
                error = `Поле «${name}» должно быть заполнено.`;
            }

            if (e.type === 'email') {
                let isValid = String(e.value)
                    .toLowerCase()
                    .match(
                        /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i
                    );
                if (!isValid) {
                    error = `Поле «${name}» имеет недопустимый формат.`;
                }
            }
        }
    });

    if (error) {
        let errorField = document.querySelector('.order-call-form__error');
        errorField.innerHTML = error;
        errorField.style.marginBottom = '20px';
        return false;
    } else {
        let errorField = document.querySelector('.order-call-form__error');
        errorField.innerHTML = '';
        errorField.style.marginBottom = '0';
        return true;
    }
}