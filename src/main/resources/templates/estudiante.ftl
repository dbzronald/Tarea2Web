            <h4>
                <p> Estudiante: ${estudiante.nombre} ${estudiante.apellido}  </p>
            </h4>
            <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
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

        <table>
          <tr>
            <th>Matrícula</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Telefono</th>
          </tr>
          <tr>
            <td>${estudiante.matricula?string["0"]}</td>
            <td>${estudiante.nombre}</td>
            <td>${estudiante.apellido}</td>
            <td>${estudiante.telefono}</td>
          </tr>

        </table>
           <a href="/">
                 Back
           </a>
    </div>
</div>
