window.onload = () => {
    const orderCall = document.getElementById('orderCall');
    const closeForm = document.getElementById('close_form');
    const submitButton = document.querySelector('#orderCallForm button');

    orderCall.addEventListener('click', (e) => {
        e.preventDefault();
        showModalForm();
    });

    closeForm.addEventListener('click', (e) => {
        closeModalForm();
    });

    closeForm.addEventListener('click', (e) => {
        closeModalForm();
    });

    submitButton.addEventListener('click', (e) => {
        e.preventDefault();
        sendForm();
    });
};

function showModalForm()
{
    let form = document.getElementById('orderCallForm');
    form.style.display = "block";
}

function closeModalForm()
{
    let form = document.getElementById('orderCallForm');
    form.style.display = "none";
}

function showResultMessage(isSuccess = true)
{
    let modal = document.getElementById('resultModal');

    modal.style.display = "block";

    if (isSuccess) {
        modal.append('Спасибо! Наш менеджер с Вами свяжется!');
    } else {
        modal.append('Произошла неизвестная ошибка. Попробуйте позднее.');
    }

    setTimeout(() => modal.style.display = "none", 2000);
}

function sendForm()
{
    let form = document.querySelector('#orderCallForm form');
    let data = new FormData(form);
    let req = new XMLHttpRequest();

    req.open('POST', '/shop/send/', false);

    req.send(data);

    closeModalForm();

    console.log(req);

    if (req.status === 200 && req.responseText !== 'error') {
        showResultMessage(true);
    } else {
        showResultMessage(false);
    }
}