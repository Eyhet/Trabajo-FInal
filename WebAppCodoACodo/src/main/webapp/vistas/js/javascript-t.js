
function chequeo() {
    let nombre = document.getElementById("inputnombre");
    let apellido = document.getElementById("inputapellido");
    let correo = document.getElementById("inputcorreo");
    let cantidad = document.getElementById("inputcantidad");
    let categoria = document.getElementById("inputcategoria");
    let emailValido = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
    let baseCost = 200;
    let total = document.getElementById("ptotalresult");
    
    if (nombre.value === "" || nombre.value >= 0 || nombre.value <= 0) {
      alert("verifique nombre");
      nombre.classList.add("is-invalid");
      return;
    } else {
      nombre.classList.remove("is-invalid");
    }
    
    if (apellido.value === "" || apellido.value >= 0 || apellido.value <= 0) {
      apellido.classList.add("is-invalid");
      alert("verifique apellido ");
      return;
    } else {
      apellido.classList.remove("is-invalid");
    }
    
    if (emailValido.test(correo.value) === false) {
      alert("email invalido");
      correo.classList.add("is-invalid");
    } else {
      correo.classList.remove("is-invalid");
    }
    
    if (cantidad.value <= 0) {
      alert("verifique cantidad");
      cantidad.classList.add("is-invalid");
      return;
    } else {
      cantidad.classList.remove("is-invalid");
    }
    
    if (categoria.value === "") {
      alert("seleccione una categoria");
      categoria.classList.add("is-invalid");
      return;
    } else {
      categoria.classList.remove("is-invalid");
    }
    
    if(categoria.value=="Junior")
    {
    multiplicacion= cantidad.value*200*0.8
    total.innerHTML= cantidad.value*200-multiplicacion
    }
     else if(categoria.value=="Adultos")
    {
    multiplicacion= cantidad.value*200*0.15
    total.innerHTML= cantidad.value*200-multiplicacion
    }
     else
    {
    total.innerHTML=cantidad.value*200
    }

}

 /*function chequeo()
{ 
    var nombre=document.getElementById("inputnombre")

 if(nombre.value==""||nombre.value>=0||nombre.value<=0)
{
  alert("verifique nombre")
  nombre.classList.add("is-invalid")
  return
}
else
{
  nombre.classList.remove("is-invalid")
}

var apellido=document.getElementById("inputapellido")
    
    if(apellido.value==""||apellido.value>=0||apellido.value<=0)
{
  apellido.classList.add("is-invalid")
  alert("verifique apellido ")
  return
}
else
{
  apellido.classList.remove("is-invalid")
}


var correo=document.getElementById("inputcorreo")
const emailValido=/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i
if (emailValido.test(correo.value)==false)
{
    alert("email invalido")
    correo.classList.add("is-invalid")
}
else
{
    correo.classList.remove("is-invalid")
}

var cantidad=document.getElementById("inputcantidad")

if (cantidad.value<=0)
{
    alert("verifique cantidad")
    cantidad.classList.add("is-invalid")
    return
}
else
{
    cantidad.classList.remove("is-invalid")
}

var categoria=document.getElementById("inputcategoria")

if(categoria.value=="")
{
    alert("seleccione una categoria")
    categoria.classList.add("is-invalid")
    return
}
else
{
    categoria.classList.remove("is-invalid")
}

var total=document.getElementById("ptotalresult")

if(categoria.value=="Junior")
{
    multiplicacion= cantidad.value*200*0.8
    total.innerHTML= cantidad.value*200-multiplicacion
}
else if(categoria.value=="Adultos")
{
    multiplicacion= cantidad.value*200*0.15
    total.innerHTML= cantidad.value*200-multiplicacion
}
else
{
    total.innerHTML=cantidad.value*200
}

} */

function borrar()
{
    var nombre=document.getElementById("inputnombre")
    var apellido=document.getElementById("inputapellido")
    var correo=document.getElementById("inputcorreo")
    var cantidad=document.getElementById("inputcantidad")
    var categoria=document.getElementById("inputcategoria")
    var total=document.getElementById("ptotalresult")
    if (nombre.value!=""||apellido.value!=""||correo.value!=""||cantidad.value!=0||categoria.value!=""||total.value!="")
    {
        nombre.value=""
        apellido.value=""
        correo.value=""
        cantidad.value=0
        categoria.value=""
        total.innerHTML=""
    }
}
