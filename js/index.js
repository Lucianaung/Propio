window.addEventListener("load", function () {
  console.log("Funciona");
});

function Mostrar_Feedback() {
  var parte_feedback = document.getElementById("Feedback_Container");
  var parte_formulario = document.getElementById("Form_Container");

  parte_formulario.classList.add("show");
  parte_feedback.classList.remove("show");
  parte_feedback.classList.add("hidden");
}

function Tomar_Datos() {
  var inputNombre = document.getElementById("fname");
  var nombre = inputNombre.value;

  var inputMail = document.getElementById("mail");
  var mail = inputMail.value;

  var spanNombre = document.getElementById("nombre-usuario");
  var spanEmail = document.getElementById("mail-usuario");

  spanNombre.innerText = nombre;
  spanEmail.innerText = mail;
  console.log(nombre);
}

function Reset_Formulario() {
  var inputNombre = document.getElementById("fname");
  var inputMail = document.getElementById("mail");
  inputNombre.value = "";
  inputMail.value = "";
}

function Enviar_Formulario() {
  Tomar_Datos();
  Mostrar_Feedback();
  Reset_Formulario();
}

function Salir_Feedback() {
  var parte_formulario = document.getElementById("Form_Container");
  var parte_feedback = document.getElementById("Form_Container");

  parte_feedback.classList.remove("show");
  parte_feedback.classList.add("hidden");
  parte_formulario.classList.remove("hidden");
}
