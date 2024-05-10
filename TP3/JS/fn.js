
const botonAgregar1 = document.getElementById('botonAgregar1');
const inputValor1 = document.getElementById('inputValor1');
const botonAgregar2 = document.getElementById('botonAgregar2');
const inputValor2 = document.getElementById('inputValor2');

let miArray1 = [];
let miArray2 = [];

function agregarValor1() {
      if (miArray1.length >= 3) {
        alert('Ya se han agregado 3 valores, no se pueden agregar más.');
        return;
    }
    const valor1 = inputValor1.value;
    miArray1.push(valor1);
    console.log(miArray1);
    inputValor1.value = '';
}
function agregarValor2() {
    if (miArray2.length >= 3) {
      alert('Ya se han agregado 3 valores, no se pueden agregar más.');
      return;
  }
  const valor2 = inputValor2.value;
  miArray2.push(valor2);
  console.log(miArray2);
  inputValor2.value = '';
}
let miArray3 = miArray1.concat(miArray2);
    // Función para encontrar el mayor valor en el array
    function mostrarPersonaje(){
    fetch (`https://rickandmortyapi.com/api/character/`+miArray3)
    .then(Response=>Response.json())
    .then((data)=>{
    console.log(data)
    document.getElementById("info1").innerHTML=`
    <h1> Nombre: ${data[i].name}</h1>
    <img src="${data[i].image}">`
    document.getElementById("info2").innerHTML=`
    <h1> Nombre: ${data[j].name}</h1>
    <img src="${data[j].image}">`
    });
    }

botonAgregar1.addEventListener('click', agregarValor1);
botonAgregar2.addEventListener('click', agregarValor2);