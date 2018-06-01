
 <style>

 .button {
     background-color: #4CAF50; /* Green */
     border: none;
     color: white;

     text-align: center;
     text-decoration: none;
     display: inline-block;
     font-size: 16px;
     margin: 4px 2px;
     cursor: pointer;
 }

 .button2 {background-color: #008CBA;} /* Blue */
 .button3 {background-color: #f44336;} /* Red */
            table {
                font-family: arial, sans-serif;
                border-style: outset;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
            </style>

        <div>
            Lista de estudiantes. Puedes agregar uno nuevo con el botón de abajo:
        </div>
             <h4>
             <a href="/agregar">
                  <button>Agregar nuevo</button>
              </a>
             </h4>
<#if estudiantes?size gt 0>
                  <table>
                     <tr>
                       <th>Estudiantes</th>
                     </tr>

    <#list estudiantes as estudiante>
    <tr>
                         <td>${estudiante.nombre}
                         <a href="/${estudiante.matricula?string["0"]}">
                            <button class="button">Mostrar</button>
                          </a>
                          <a href="/editar/${estudiante.matricula?string["0"]}">
                             <button class="button button2">Editar</button>
                          </a>
                          <a href="/borrar/${estudiante.matricula?string["0"]}">
                             <button class="button button3">Borrar</button>
                          </a></td>
                         </tr>
    </#list>
     </table>
</#if>
