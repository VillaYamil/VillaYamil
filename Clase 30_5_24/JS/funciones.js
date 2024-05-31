
function MostrarPersona(){
const personajes = "personas.json";
fetch (personajes)
.then(response=>response.json())
.then((data)=>{
    //console.log(data);
        for (let i = 0; i < 5; i++) {
           // console.log(data.results[i]);  
document.getElementById('buscar').innerHTML=
`<h1> Nombre: ${data[i].gender}</h1>'<br>'`
        }
});
}