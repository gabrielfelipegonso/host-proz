$('.phone_with_ddd').mask('(00)00000-0000');

const phones = document.getElementsByClassName("phone_with_ddd");
const telefoneChecked = document.getElementById('telefone');
const celularChecked = document.getElementById('celular');
const email = document.getElementById('email');
const form = document.querySelector('form');

let verificaTelCel = (telCel, tamanho) => {
    if (telCel.value.length < tamanho) {
        telCel.style.border = 'solid 3px red';
        return false;
    } else {
        telCel.style.border = 'solid 1px var(--white)';
        return true;
    }
}

let verificaTodosTelCel = (tamanho) => {
    for (let phone of phones) {
        if (!verificaTelCel(phone, tamanho)) {
            return false;
        }
    }
    return true;
}

let celular = () => {
    for (let phone of phones) {
        phone.addEventListener('change', () => {
            verificaTelCel(phone, 14);
        });
    }
}

let telefone = () => {
    for (let phone of phones) {
        phone.addEventListener('change', () => {
            verificaTelCel(phone, 13);
        });
    }
}

form.addEventListener('submit', (event) => {
    event.preventDefault();
    
    let telefoneValido = telefoneChecked.checked ? verificaTodosTelCel(13) : true;
    let celularValido = celularChecked.checked ? verificaTodosTelCel(14) : true;
    const er = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
    let emailValido = er.test(email.value);
    
    if (!telefoneValido || !celularValido || !emailValido) {
        alert('Por favor, preencha os campos corretamente.');
        return;
    }
    
    // Se chegou até aqui, todos os campos estão válidos
    // Você pode enviar o formulário ou fazer qualquer outra coisa aqui
    
    alert('Formulário enviado com sucesso!');
    form.reset(); // Limpar o formulário após o envio
});

celular();

celularChecked.addEventListener('mouseout', () => {
    if (celularChecked.checked == true) {
        $('.phone_with_ddd').mask('(00)00000-0000');
        celular();
        verificaTodosTelCel(14);
    } else {
        $('.phone_with_ddd').mask('(00)0000-0000');
        telefone();
    }
});

telefoneChecked.addEventListener('mouseout', () => {
    if (telefoneChecked.checked == true) {
        $('.phone_with_ddd').mask('(00)0000-0000');
        telefone();
        verificaTodosTelCel(13);
    } else {
        $('.phone_with_ddd').mask('(00)00000-0000');
        celular();
    }
});

email.addEventListener('change', () => {
    const er = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
    if (er.test(email.value)) {
        email.style.border = 'solid 1px var(--white)';
    } else {
        email.style.border = 'solid 3px red';
    }
});
