//console.log("ok")
function searchUser(){
    //console.log("ok2")
    const urlRandomSearch = `https://randomuser.me/api/`;
    fetch(urlRandomSearch)
    .then (Response => Response.json())
    .then((data)=>{
        let latitud = data.results[0].location.coordinates.latitude;
        let longitud = data.results[0].location.coordinates.longitude;
        //console.log(latitud)
        //console.log(longitud)
        var map = L.map('map').setView([51.505, -0.09], 13);
        L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
                maxZoom: 19,
                attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
            }).addTo(map);
    });
   // function CreateMap(){

    };