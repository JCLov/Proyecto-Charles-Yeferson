function usuarioAdmin(){
    var rol = document.getElementById('rol')
    var usuarioInput = document.getElementById('verificarUsuario')
    var claveInput = document.getElementById('verificarClave')
    var rolSelec = rol.value
    usuarioInput.value=""
    claveInput.value=""

    if (rolSelec === "1"){
        usuarioInput.removeAttribute("disabled")
        usuarioInput.setAttribute("required","true")
        claveInput.removeAttribute("disabled")
        claveInput.setAttribute("required","true")
    }else{
        usuarioInput.removeAttribute("required")
        usuarioInput.setAttribute("disabled","true")
        claveInput.removeAttribute("required")
        claveInput.setAttribute("disabled","true")
    }
}
/*
//Función para agregar opciones a un <select>.
function addOptions(domElement, array) {
    var selector = document.getElementsByName(domElement)[0];
    var i=0;
    for (dato in array) {
        var opcion = document.createElement("option");
        opcion.text = array[dato];
        opcion.value = i;
        i++;
        selector.add(opcion);
    }
}

function cargarTipoInstitucion() {
    var array = ["", "Publica", "Privada"];
    //addOptions("tipoInstitucion", array);
}

function cargarInstitucion() {
    // Objeto de tipoInstitucion con instituciones
    var listaInstituciones = {
      1: ["Publica1", "Publica2", "Publica3", "Publica4"],
      2: ["Privada1", "Privada2", "Privada3", "Privada4"]
    }
    
    var tipoInstitucion = document.getElementById('tipoInstitucion')
    var institucion = document.getElementById('institucion')
    var tipoInstitucionSelec = tipoInstitucion.value
    var array
    
    // Se limpian las instituciones
    institucion.innerHTML = '<option value=""></option>'
    
    if(tipoInstitucionSelec !== "0"){
      // Se seleccionan los institucion y se ordenan
      array = listaInstituciones[tipoInstitucionSelec]
      array.sort()
    
      // Insertamos los institucion
      addOptions("institucion", array);
    }
}

function cargarEstado() {
    var array = ["", "Táchira", "Otro"];
    addOptions("estado", array);
}

function cargarMunicipio() {
    var listaMunicipios = {
      1: ["Andrés Bello", "Antonio Rómulo Costa", "Ayacucho", "Bolívar", "Cárdenas", "Córdoba", "Fernández Feo", "Francisco de Miranda", "García de Hevia", "Guásimos",
            "Independencia", "Jáuregui", "José María Vargas", "	Junín", "Libertad", "Libertador", "Lobatera", "Michelena", "Panamericano", "Pedro María Ureña",
            "Rafael Urdaneta", "Samuel Darío Maldonado", "San Cristóbal", "San Judas Tadeo", "Seboruco", "Simón Rodríguez", "Sucre", "Torbes", "Uribante"],
      2: ["Caracas"]
    }
    
    var estado = document.getElementById('estado')
    var municipio = document.getElementById('municipio')
    var estadoSelec = estado.value
    var array
    
    municipio.innerHTML = '<option value=""></option>'
    
    if(estadoSelec !== "0"){
      array = listaMunicipios[estadoSelec]
      array.sort()
    
      addOptions("municipio", array);
    }
}
*/