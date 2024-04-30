 $('.phone_with_ddd').mask('(00)00000-0000');

 const phones = document.getElementsByClassName("phone_with_ddd");
const telefoneChecked = document.getElementById('telefone');
const celularChecked = document.getElementById('celular');
const email = document.getElementById('email');
let verificaTelCel = (telCel,tamanho) =>{
        if(telCel.value.length < tamanho){
       telCel.style.border = 'solid 3px red';
    }else{
        telCel.style.border = 'solid 1px var(--white)';
        }
    }

let verificaTodosTelCel = (tamanho) =>{
     for (let phone of phones){
  verificaTelCel(phone,tamanho);
    
 }
}
let celular = () =>{
 for (let phone of phones){
  phone.addEventListener('change', () =>{
        if(phone.value.length < 14){
       phone.style.border = 'solid 3px red';
    }else{
        phone.style.border = 'solid 1px var(--white)';
        }
    });
    
 }
}
let telefone = () =>{
 for (let phone of phones){
  phone.addEventListener('change',  () =>{
        if(phone.value.length < 14){
       phone.style.border = 'solid 3px red';
    }else{
        phone.style.border = 'solid 1px var(--white)';
        }
    });
    
 }
}
celular();

 celularChecked.addEventListener('mouseout',()=>{
    if( celularChecked.checked == true){
         $('.phone_with_ddd').mask('(00)00000-0000');
        celular();
        verificaTodosTelCel(14);
    }else{
        $('.phone_with_ddd').mask('(00)0000-0000');
        telefone();
       
    }
 })
 telefoneChecked.addEventListener('mouseout',()=>{
    if( telefoneChecked.checked == true){
         $('.phone_with_ddd').mask('(00)0000-0000');
        telefone();
        verificaTodosTelCel(13);
    }else{
        $('.phone_with_ddd').mask('(00)00000-0000');
        celular();
       
    }
 })
email.addEventListener('change', ()=>{
    const er=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
    if(er.test(email.value)){
         email.style.border = 'solid 1px var(--white)';
    }else{
         email.style.border = 'solid 3px red';
       
    }
})