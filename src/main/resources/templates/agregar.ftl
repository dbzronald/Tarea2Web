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

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
            <h3>
              Agregar estudiante
            </h3>

        <form action="/agregar" method="post">
            <div>
                Matricula:<br>
                <input type="text" name="matricula">
                </br>
            </div>

                    <div>
                        Nombre:<br>
                        <input type="text" name="nombre">
                        </br>
                    </div>

                    <div>
                       Apellido:<br>
                        <input type="text" name="apellido">
                        </br>
                    </div>


            <div>
                       Telefono:<br>
                        <input type="text" name="telefono">
                        </br>
            </div>

            <button type="submit">
                 Agregar
            </button>
        </form>

