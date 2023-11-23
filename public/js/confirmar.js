// var button = $("delete")

// button.on("click", function(){
//     var confirmado = confirm('Deseja deletar esse imovel ?');
//     if(confirmado){
//         alert('Apagado!');
//     } else {
//         alert('Cancelado!');
//     }
// })

function ExcluirImovel() {

    var confirmado = confirm('Deseja deletar esses dados?');
    
    if (!confirmado) {
        
    } else {
        $.ajax({
            url: "deletar",
            data: "deletar()",
            method: 'POST',
            dataType: "html",

            success: function (result) {

                alert('Teste')



            }
        })
    }


}



