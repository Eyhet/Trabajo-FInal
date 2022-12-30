let counter = 1;

function siguiente() {
  var imagen = document.getElementById("imagenes");
  console.log(imagen);

  counter++;

  if (counter % 2 === 0) {
    imagen.src = "img/ParqueAcuatico1.jpeg";
  } else {
    imagen.src = "img/ParqueAcuatico2.jpg";
  }
}
