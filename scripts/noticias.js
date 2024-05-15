let contador = 1;
let esquerda = document.getElementById("article-left");
let direita = document.getElementById("article-right");

esquerda.addEventListener('click', () => {
    contador--;
    atualizarTexto();
});

direita.addEventListener('click', () => {
    contador++;
    atualizarTexto();
});

atualizarTexto();

function atualizarTexto() {
    switch (contador) {
        case 1:
            document.getElementById("article-img").innerHTML = `<img id="wordpress3" src="assets/img/wordpress3.jpg"/>`;
            document.getElementById("article-text").innerHTML = `
                <p>Um CMS (Content Management System) é uma plataforma que permite a você publicar conteúdo na internet sem precisar de conhecimentos de HTML, CSS e outros padrões web. Sistemas assim trazem editor de textos, suportam inserção de fotos e vídeos, salvam rascunhos e possibilitam a atualização do conteúdo após ele ser publicado.</p>`;                
            break;
        case 2:
            document.getElementById("article-img").innerHTML = `<img id="wordpress2" src="assets/img/wordpress2.png"/>`;
            document.getElementById("article-text").innerHTML = `
                <p>O WordPress é o CMS mais popular da web, não só por oferecer esses recursos, mas também por suportar milhares de plugins que levam a ele funcionalidades extras. Além disso, é possível personalizar o visual das suas páginas no WordPress com temas prontos ou feitos sob medida para o seu projeto.</p>    
                `;
            break;
        case 3:
            document.getElementById("article-img").innerHTML = `<img id="cms" src="assets/img/cms.png"/>`;
            document.getElementById("article-text").innerHTML = `
                   <p>Embora o WordPress tenha se popularizado como um CMS para blogs, ele não serve só para isso. Seja com recursos nativos ou com plugins, é possível utilizar o WordPress para projetos como:</p>
               `;
            break;
        case 4:
            document.getElementById("article-img").innerHTML = `<img id="cms2" src="assets/img/cms2.png"/>`;
            document.getElementById("article-text").innerHTML = `
                   <ul id="list-news">
                    <li>Sites institucionais</li>
                    <li>Sites de notícias</li>
                    <li>Portfólios online</li>
                    <li>Galerias de fotos</li>
                    <li>Comunidades online</li>
                    <li>Cursos online</li>
                    <li>Páginas de newsletters</li>
                    <li>Páginas de eventos</li>
                    <li>Lojas virtuais</li>
                </ul>`;
            break;
         case 5:
            document.getElementById("article-img").innerHTML = `<img id="wordpress" src="assets/img/wordpress.jpg"/>`;
            document.getElementById("article-text").innerHTML = `
              <p>A melhor parte é que, por ser uma iniciativa com código-fonte aberto, o WordPress pode ser ajustado para as necessidades de cada projeto. Além disso, essa característica faz o WordPress ser atualizado regularmente para otimização de recursos e correção de falhas, o que o torna bastante versátil e seguro.</p>`;
            break;
        default:
            contador = contador < 1 ? 1 : contador > 5 ? 5 : contador;
            break;
    }
}
