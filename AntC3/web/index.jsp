<%-- 
    Document   : index
    Created on : 16/06/2021, 03:18:34 PM
    Author     : fido
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--//Bootstrap core CSS--> 
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <!--Angular--> 
        <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>  
        <style>
            /*div {border-style: dotted; }*/
        </style>
    </head>
    <body>
        <div class="container-fluid" ng-app = "demoCiclo3" ng-controller = "contactosController as cn">
            <div class="row">
                <div class="col-12">
                    <center><h1>Demo ciclo3</h1></center> 
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <h3>Sección 1</h3>
                    <div class="row">
                        <div class="col-6">
                            <label >Identificacion</label>
                            <input class="form-control" type="number" min="0" ng-model="cn.identificacion">
                        </div>
                        <div class="col-6">
                            <label>Nombre</label>
                            <input class="form-control" type="text" ng-model="cn.nombre">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <label>Apellido</label>
                            <input class="form-control" type="text" ng-model="cn.apellido">
                        </div>
                        <div class="col-6">
                            <label>Genero</label>
                            <select class="form-control" ng-model="cn.genero">
                                <option>Masculino</option>
                                <option>Femenino</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <label>Tipo identificacion</label>
                            <select class="form-control" ng-model="cn.tipoIdentificacion">
                                <option>CC</option>
                                <option>TI</option>
                            </select>
                        </div>
                        <div class="col-6">
                            <label>Telefono</label>
                            <input class="form-control" type="text" ng-model="cn.telefono">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <label>Dirección</label>
                            <input class="form-control" type="text" ng-model="cn.direccion">
                        </div>
                        <div class="col-6">
                            <label>Correo</label>
                            <input class="form-control" type="text" ng-model="cn.correo">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-3">
                            <button  class="btn btn-success" ng-click="cn.guardarContacto()">Guardar</button>
                        </div>
                        <div class="col-3">
                            <button  class="btn btn-primary" ng-click="cn.listarContactos()">Listar contacto</button>
                        </div>
                        <div class="col-3">
                            <button  class="btn btn-danger" ng-click="cn.eliminarContacto()">Eliminar contacto</button>
                        </div>
                        <div class="col-3">
                            <button  class="btn btn-warning" ng-click="cn.actualizarContacto()">Actualizar contacto</button>
                        </div>
                    </div>
                </div>
                <div class="col-6">
                    <h3>Sección 2</h3>
                    <div class="row">
                        <div class="col-6">
                            <label >Identificacion</label>
                            <input class="form-control" type="text" value="{{cn.identificacion}}" disabled="">
                        </div>
                        <div class="col-6">
                            <label>Nombre</label>
                            <input class="form-control" type="text" value="{{cn.nombre}}" disabled="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <label>Apellido</label>
                            <input class="form-control" type="text" value="{{cn.apellido}}" disabled="">
                        </div>
                        <div class="col-6">
                            <label>Genero</label>
                            <input class="form-control" type="text" value="{{cn.genero}}" disabled="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <label>Tipo identificacion</label>
                            <input class="form-control" type="text" value="{{cn.tipoIdentificacion}}" disabled="">
                        </div>
                        <div class="col-6">
                            <label>Telefono</label>
                            <input class="form-control" type="text" value="{{cn.telefono}}" disabled="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <label>Dirección</label>
                            <input class="form-control" type="text" value="{{cn.direccion}}" disabled="">
                        </div>
                        <div class="col-6">
                            <label>Correo</label>
                            <input class="form-control" type="text" value="{{cn.correo}}" disabled="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" >
                <div class="col-12 table-responsive-xl">
                    <h3>Sección 3</h3>
                    <table class="table table-striped table-hover">  
                        <thead class="thead-dark">
                            <tr>  
                                <th>Id</th>  
                                <th>Nombre</th>  
                                <th>Apellido</th>  
                                <th>Genero</th>  
                                <th>Tipo id</th>  
                                <th>Telefono</th>  
                                <th>Direccion</th>  
                                <th>Correo</th>  
                            </tr>  
                        </thead>

                        <tr ng-repeat = "contacto in cn.contactos">  
                            <td>{{ contacto.identificacion}}</td>  
                            <td>{{ contacto.nombre}}</td>  
                            <td>{{ contacto.apellido}}</td>  
                            <td>{{ contacto.genero}}</td>  
                            <td>{{ contacto.tipoIdentificacion}}</td>  
                            <td>{{ contacto.telefono}}</td>  
                            <td>{{ contacto.direccion}}</td>  
                            <td>{{ contacto.correo}}</td>  
                        </tr>  
                    </table> 
                </div>
            </div>
        </div>
    </body>
    <script>
        var app = angular.module('demoCiclo3', []);
        app.controller('contactosController', ['$http', controladorContactos]);
        function controladorContactos($http) {
            var cn = this;
            cn.listarContactos = function () {
                var url = "peticiones.jsp";
                var params = {
                    proceso: "listarcontacto"
                };
                $http({
                    method: 'POST',
                    url: 'peticiones.jsp',
                    params: params
                }).then(function (res) {
                    cn.contactos = res.data.Contactos;
                });
            };
            cn.guardarContacto = function () {
                if (validar('todos')) {
                    var contacto = {
                        proceso: "guardarContacto",
                        identificacion: cn.identificacion,
                        nombre: cn.nombre,
                        apellido: cn.apellido,
                        genero: cn.genero,
                        tipoIdentificacion: cn.tipoIdentificacion,
                        telefono: cn.telefono,
                        direccion: cn.direccion,
                        correo: cn.correo
                    };
                    $http({
                        method: 'POST',
                        url: 'peticiones.jsp',
                        params: contacto
                    }).then(function (res) {
                        if (res.data.ok === true) {
                            if (res.data[contacto.proceso] === true) {
                                alert("Guardado con éxito");
//                                                            cn.listarContactos();
                            } else {
                                alert("Por favor vefifique sus datos");
                            }
                        } else {
                            alert(res.data.errorMsg);
                        }
                    });
                }
            };
            cn.eliminarContacto = function () {
                if (validar('soloId')) {
                    var contacto = {
                        proceso: "eliminarcontacto",
                        identificacion: cn.identificacion
                    };
                    $http({
                        method: 'POST',
                        url: 'peticiones.jsp',
                        params: contacto
                    }).then(function (res) {
                        if (res.data.ok === true) {
                            if (res.data[contacto.proceso] === true) {
                                alert("Eliminado con éxito");
                                //                                cn.listarContactos();
                            } else {
                                alert("Por favor vefifique sus datos");
                            }
                        } else {
                            alert(res.data.errorMsg);
                        }
                    });
                }
            };
            cn.actualizarContacto = function () {
                if (validar('todos')) {
                    var contacto = {
                        proceso: "actualizarcontacto",
                        identificacion: cn.identificacion,
                        nombre: cn.nombre,
                        apellido: cn.apellido,
                        genero: cn.genero,
                        tipoIdentificacion: cn.tipoIdentificacion,
                        telefono: cn.telefono,
                        direccion: cn.direccion,
                        correo: cn.correo
                    };
                    $http({
                        method: 'POST',
                        url: 'peticiones.jsp',
                        params: contacto
                    }).then(function (res) {
                        if (res.data.ok === true) {
                            if (res.data[contacto.proceso] === true) {
                                alert("actualizarcontacto con éxito");
                                //                                cn.listarContactos();
                            } else {
                                alert("Por favor vefifique sus datos");
                            }
                        } else {
                            alert(res.data.errorMsg);
                        }
                    });
                }
            };
            validar = function (tipoValidacion) {
                var vIdentificacion = cn.identificacion ? true : false;
                var vNombre = cn.nombre ? true : false;
                var vApellido = cn.apellido ? true : false;
                var vGenero = cn.genero ? true : false;
                var vTipoIdentificacion = cn.tipoIdentificacion ? true : false;
                var vTelefono = cn.telefono ? true : false;
                var vDireccion = cn.direccion ? true : false;
                var vCorreo = cn.correo ? true : false;
                if (tipoValidacion === 'soloId') {
                    if (!vIdentificacion) {
                        alert('Valide el campo identificacion');
                        return false;
                    } else {
                        return true;
                    }
                } else if (tipoValidacion === 'todos') {
                    if (!vIdentificacion) {
                        alert('Valide el campo identificacion');
                        return false;
                    } else if (!vNombre) {
                        alert('Valide el campo nombre');
                        return false;
                    } else if (!vApellido) {
                        alert('Valide el campo apellido');
                        return false;
                    } else if (!vGenero) {
                        alert('Valide el campo genero');
                        return false;
                    } else if (!vTipoIdentificacion) {
                        alert('Valide el campo tipo identificación');
                        return false;
                    } else if (!vTelefono) {
                        alert('Valide el campo telefono');
                        return false;
                    } else if (!vDireccion) {
                        alert('Valide el campo direccion');
                        return false;
                    } else if (!vCorreo) {
                        alert('Valide el campo correo');
                        return false;
                    } else {
                        return true;
                    }
                }
            };
        }
    </script>  
</html>
