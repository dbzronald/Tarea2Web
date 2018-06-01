
            <h2>
              Borrar estudiante
            </h2>

        <form action="/borrar/${estudiante.matricula?string["0"]}" method="post" class="p-2">
            <p>Desea borrar al estudiante ${estudiante.nombre} ${estudiante.apellido} ${estudiante.matricula?string["0"]}?</p>
            <button>
                Borrar
            </button>
        </form>

