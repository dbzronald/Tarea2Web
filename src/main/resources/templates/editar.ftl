<style>
input[type=text], select {

    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

button[type=submit] {

    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button[type=submit]:hover {
    background-color: #45a049;
}
</style>
            <h3>
                Editar estudiante
            </h3>

        <form action="/editar" method="post">
            <div>
                Matricula <br>
                <input type="text" name="matricula" readonly value="${estudiante.matricula?string["0"]}">
                </br>
            </div>

                    <div>
                        Nombre<br>
                        <input type="text" name="nombre" value="${estudiante.nombre}">
                        </br>
                    </div>

                    <div>
                        Apellido<br>
                        <input type="text" name="apellido" value="${estudiante.apellido}">
                        </br>
                    </div>

            <div>
                Telefono<br>
                <input type="text" name="telefono" value="${estudiante.telefono}">
                </br>
            </div>
            <button type="submit">
                <i></i> Editar
            </button>
        </form>

