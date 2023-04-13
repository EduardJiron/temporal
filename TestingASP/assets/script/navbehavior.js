
var title = document.title;

if (title == "Inicio") {
    document.querySelector(".element-start").classList.add("element-active")
    console.log("inicio")
} else if (title == "Prototype") {
    document.querySelector(".element-proto").classList.add("element-active")
    console.log("proto")
} else if (title == "Decorator") {
    document.querySelector(".element-decorator").classList.add("element-active")
    console.log("decorator")
} else {
    console.log("sadfas")
}