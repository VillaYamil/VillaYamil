/*$array = ['pera','manzana','frutilla','banana','durazno'];
console.log ($array [1]);
for (i=0; i<$array.length; i++){
    console.log($array[i])
} 
let frutas = ['pera','manzana','frutilla','banana','durazno'];
//frutas.forEach(fruta => {console.log(fruta);})
for (const fruta of frutas){
    if (fruta == "manzana") {
        console.log(fruta);
    } 
}*/
function buscar (){
    let id = document.getElementById("id").value;
    fetch(`https://rickandmortyapi.com/api/character/${id}`)
    .then(response => response.json())
    .then((data) => {
    console.log(data)
    document.getElementById("info").innerHTML=data.status
});
}
