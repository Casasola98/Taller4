let connection =  require('./index');

const getPuntos = async (usuario) =>{
    return new Promise((resolve,reject) =>{
        let sql = "SELECT * FROM puntos WHERE ruta = ?"
        let params = [usuario];
        connection.connection.query(sql,params, async (err, results) =>{
            return  resolve({puntos: results}); 
        });
    });
}

const getRadio = async (latitud, logitud) =>{
    return new Promise((resolve,reject) =>{
        let sql = "SELECT * FROM puntos WHERE ruta = ?" //Aqui hay que hacer la consulta que si va
        let params = [latitud, longitud];
        connection.connection.query(sql,params, async (err, results) =>{
            return  resolve({puntos: results}); 
        });
    });
}

const addPunto = async (nombre, descripcion, latitud, longitud, ruta) =>{
    return new Promise((resolve,reject) =>{
        let sql = "INSERT INTO puntos(nombre, descripcion, latitud, longitud, ruta) VALUES (?,?,?,?,?)";
        let params = [nombre, descripcion, latitud, longitud, ruta];
        connection.connection.query(sql,params, async (err, results) =>{
            return  resolve({puntos: results}); 
        });
    });
}

module.exports.getPuntos = getPuntos;
module.exports.getRadio = getRadio;
module.exports.addPunto = addPunto;

module.exports.default = {
    getPuntos,
    getRadio,
    addPunto
}