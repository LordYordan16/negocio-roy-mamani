# Métodos HTTP

API de prueba: https://jsonplaceholder.typicode.com/posts

> JSONPlaceholder simula los cambios y no los guarda de verdad, por lo que un GET posterior no los muestra.

## GET
**Para qué sirve:** < pedir/leer datos sin modificarlos>
**Cómo se usa:** se envía a una URL; no lleva body.

**Ejemplo**
- URL: `GET https://jsonplaceholder.typicode.com/posts/1`
- Body: no lleva
- Código de estado: `200 OK`
- Respuesta (resumida): `{ "userId": 1, "id": 1, "title": "sunt aut facere...", "body": "quia et suscipit..." }`

## POST
**Para qué sirve:** <crear un recurso nuevo>
**Cómo se usa:** se envía a la URL de la colección con un body en JSON y el header `Content-Type`.

**Ejemplo**
- URL: `POST https://jsonplaceholder.typicode.com/posts`
- Body: `{ "title": "Mi primer post", "body": "Contenido de prueba", "userId": 1 }`
- Código de estado: `201 Created`
- Respuesta: `{ "title": "Mi primer post", "body": "Contenido de prueba", "userId": 1, "id": 101 }`

## PUT
**Para qué sirve:** <reemplazar un recurso completo>
**Cómo se usa:** se envía a la URL de un recurso concreto con **todos** sus campos.

**Ejemplo**
- URL: `PUT https://jsonplaceholder.typicode.com/posts/1`
- Body: `{ "id": 1, "title": "Título nuevo", "body": "Cuerpo nuevo", "userId": 1 }`
- Código de estado: `200 OK`
- Respuesta: `{ "id": 1, "title": "Título nuevo", "body": "Cuerpo nuevo", "userId": 1 }`

## PATCH
**Para qué sirve:** <modificar solo una parte de un recurso>
**Cómo se usa:** se envía a la URL de un recurso con **solo los campos** que cambian.

**Ejemplo**
- URL: `PATCH https://jsonplaceholder.typicode.com/posts/1`
- Body: `{ "title": "Solo cambio el título" }`
- Código de estado: `200 OK`
- Respuesta: el post completo con el título nuevo y el resto de campos sin cambios.

## DELETE
**Para qué sirve:** <eliminar un recurso>
**Cómo se usa:** se envía a la URL del recurso; no lleva body.

**Ejemplo**
- URL: `DELETE https://jsonplaceholder.typicode.com/posts/1`
- Body: no lleva
- Código de estado: `200 OK`
- Respuesta: `{}`
