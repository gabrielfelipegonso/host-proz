var menuHidden = true;

function handleClickMenuHeader(){
    if(menuHidden){
          var menu =  document.getElementsByClassName('menu-header-hide');
   
   for(var i =0; i<menu.length;i++){
    menu[i].style.display = 'block';
   }    menuHidden = false;
    }else{  
              var menu =  document.getElementsByClassName('menu-header-hide');
   
   for(var i =0; i<menu.length;i++){
    menu[i].style.display = 'none';
   }    menuHidden = true;

    }
 
}