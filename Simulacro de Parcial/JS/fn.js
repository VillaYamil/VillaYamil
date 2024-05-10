// Obtener referencia al botón y al input
const botonAgregar = document.getElementById('botonAgregar');
const inputValor = document.getElementById('inputValor');

// Crear un array para almacenar los valores
let miArray = [];

// Función para agregar el valor del input al array
function agregarValor() {

      // Verificar si el array ya tiene 10 elementos
      if (miArray.length >= 10) {
        alert('Ya se han agregado 10 valores, no se pueden agregar más.');
        return; // Salir de la función si ya hay 10 elementos
    }
    // Obtener el valor del input
    const valor = inputValor.value;

    // Agregar el valor al array
    miArray.push(valor);
    
    // Muestro como se va cargando el array
    console.log(miArray);

    // Limpiar el input
    inputValor.value = '';
}

    // Función para encontrar el mayor valor en el array
    function mostrarPersonaje(){
    let mayorValor = Math.max(...miArray);
    console.log('El mayor valor ingresado es:',mayorValor); 

    fetch (`https://rickandmortyapi.com/api/character/${mayorValor}`)
    .then(Response=>Response.json())
    .then((data)=>{
    console.log(data)
    document.getElementById("info").innerHTML=`
    <h1> Nombre: ${data.name}</h1>
    <img src="${data.image}">` 
    });
    }
// Agregar un event listener al botón para llamar a la función agregarValor() cuando sea clickeado
botonAgregar.addEventListener('click', agregarValor);

 
    
