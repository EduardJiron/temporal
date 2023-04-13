let decoMembers = document.querySelector(".clean-deco")
let protoMembers = document.querySelector(".clean-proto")
const data = [
    {
        "name": "Benjamín Narváez Pineda",
        "position": "Ing. de aseguramiento de calidad",
        "expo": "proto",
        "img": "assets/img/benjamin.png" 
    },
    {
        "name": "David Mauricio Quintanilla Ruiz",
        "position": "Gerente de Proyecto",
        "expo": "deco",
        "img": "assets/img/deibi.png" 
    },
    {
        "name": "David Sebastián Parales Ponce",
        "position": "Arquitecto de Software",
        "expo": "deco",
        "img": "assets/img/ponce.png" 
    },
    {
        "name": "Eduard Manuel Jiron Orozco",
        "position": "Analista de sistema",
        "expo": "proto",
        "img": "assets/img/eduard.png" 
    },
    {
        "name": "Erick Oswaldo González Gallegos",
        "position": "Jefe de Desarrollo",
        "expo": "deco",
        "img": "assets/img/erick.png" 
    },
    {
        "name": "Geraldine Belen Porras Villalta",
        "position": "Analista de Negocio",
        "expo": "proto",
        "img": "" 
    },
    {
        "name": "Riuske Mateo Nishime Robleto",
        "position": "Administrador de la configuración",
        "expo": "deco",
        "img": "assets/img/riuske.png" 
    },
    {
        "name": "Fernando Zair Ortiz Zeledon",
        "position": "-",
        "expo": "proto",
        "img": "" 
    }
];

data.map(function (element) {
    console.log(element)
    let contain = document.createElement("div")
    contain.setAttribute("class", "generic-member dflex-all-center br-default")

    let image = document.createElement("img");
    if(element.img == "")
        image.src = "assets/img/user-regular.svg"
    else
        image.src = element.img

    image.setAttribute("class", "br-circle")

    let containElement = document.createElement("div")

    let textName = document.createElement("h3")
    textName.innerHTML = element.name;

    let textPos = document.createElement("h4")
    textPos.innerHTML = element.position;

    containElement.append( textName,textPos)
    contain.append(image, containElement)

    if (element.expo == "deco") {
        decoMembers.append(contain)
    } else if (element.expo == "proto") {
        protoMembers.append(contain)
    }
});