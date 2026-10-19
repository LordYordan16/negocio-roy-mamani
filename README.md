# Negocio Roy Mamani

Práctica 1 de Programación Web III (Git y GitHub, base de datos SQL, métodos HTTP y fetch a una API pública).

## Datos del estudiante

- **Apellidos:** Mamani Apaza
- **Nombres:** Roy Yhordan
- **Paralelo:** B
- **CI:** 13758811
- **Fecha:** 18/10/2026

## Contenido del repositorio

- `db/`: `schema.sql` (5 tablas), `seed.sql` (datos de ejemplo) y `consultas.sql` (7 consultas).
- `frontend/`: app que busca pokémon con `fetch` a la PokeAPI (`index.html`, `styles.css`, `app.js`).
- `docs/`: `metodos_http.md`, `app_pokeapi.md` y las capturas de la app.


## Conflicto controlado

1. Creé dos ramas (`feature/9-readme-a` y `feature/10-readme-b`) desde el mismo punto de `main` y en cada una cambié la primera línea del README con un texto distinto.
2. Fusioné la rama A por pull request; al traer `main` a la rama B con `git merge`, Git no pudo unir ambos cambios y marcó el conflicto con `<<<<<<<`, `=======` y `>>>>>>>`.
3. Lo resolví editando el archivo (dejé una sola línea y borré los marcadores), hice `git add`, un commit de resolución y luego fusioné la rama B por pull request.