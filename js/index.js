
function mostrarFeedback() {
  var feedback = document.getElementById("feedback");
  var formulario = document.getElementById("Formulario");

  formulario.classList.add("no-mostrar");
  feedback.classList.remove("no-mostrar");
  feedback.classList.add("mostrar");
}

function recolectarDatos() {
  var inputNombre = document.getElementById("fname");
  var inputMail = document.getElementById("mail");

  var nombre = inputNombre.value;
  var mail = inputMail.value;

  var spanNombre = document.getElementById("nombre-usuario");
  var spanEmail = document.getElementById("mail-usuario");

  spanNombre.innerText = nombre;
  spanEmail.innerText = mail;

  console.log("Nombre: " + nombre)
  console.log("Correo: " + mail)
}

function resetearFormulario() {
  var inputNombre = document.getElementById("fname");
  var inputMail = document.getElementById("mail");
  var inputPais = document.getElementById("imput3");
  var inputCiudad = document.getElementById("imput4");
  inputNombre.value = "";
  inputMail.value = "";
  inputPais.value = "";
  inputCiudad.value = "";
}

function enviarFormulario() {
  recolectarDatos();
  mostrarFeedback();
  resetearFormulario();
}

function cerrarFeedback() {
  var formulario = document.getElementById("Formulario");
  // var feedback = document.getElementById("contenedor-feedback");

  // feedback.classList.remove("mostrar");
  feedback.classList.add("no-mostrar");
  formulario.classList.remove("no-mostrar");
}

function abrirBloque1() {
  var aBloque1 = document.getElementById("bloque1");

  aBloque1.classList.remove("no-mostrar");
}

function cerrarBloque1() {
  var cBloque1 = document.getElementById("bloque1");

  cBloque1.classList.add("no-mostrar");
}

function abrirBloque6(bloquePopUp) {
  var aBloque6 = document.getElementById("bloque6");

  aBloque6.classList.remove("no-mostrar");
}

function cerrarBloque6() {
  var cBloque6 = document.getElementById("bloque6");

  cBloque6.classList.add("no-mostrar");
}
