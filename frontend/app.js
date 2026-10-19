const API_URL = 'https://pokeapi.co/api/v2/pokemon/';

const form = document.getElementById('form-busqueda');
const input = document.getElementById('input-nombre');
const mensaje = document.getElementById('mensaje');
const resultado = document.getElementById('resultado');
const elNombre = document.getElementById('poke-nombre');
const elImagen = document.getElementById('poke-imagen');
const elTipos = document.getElementById('poke-tipos');
const elPeso = document.getElementById('poke-peso');
const elAltura = document.getElementById('poke-altura');

function mostrarMensaje(texto, esError = false) {
  mensaje.textContent = texto;
  mensaje.classList.toggle('error', esError);
}

async function buscarPokemon(nombre) {
  resultado.classList.add('oculto');
  mostrarMensaje('Cargando...');

  try {
    const response = await fetch(API_URL + encodeURIComponent(nombre));

    if (!response.ok) {
      if (response.status === 404) {
        throw new Error(`No se encontró ningún pokémon llamado "${nombre}".`);
      }
      throw new Error(`La API respondió con un error (código ${response.status}).`);
    }

    const data = await response.json();
    mostrarPokemon(data);
    mostrarMensaje('');
  } catch (error) {
    if (error instanceof TypeError) {
      mostrarMensaje('No se pudo conectar con la API. Revisa tu conexión a internet.', true);
    } else {
      mostrarMensaje(error.message, true);
    }
  }
}
function mostrarPokemon(data) {
  const nombre = data.name.charAt(0).toUpperCase() + data.name.slice(1);
  const imagen =
    data.sprites.other['official-artwork'].front_default || data.sprites.front_default;
  const tipos = data.types.map((t) => t.type.name).join(', ');
  const pesoKg = data.weight / 10;   // la API entrega hectogramos
  const alturaM = data.height / 10;  // la API entrega decímetros

  elNombre.textContent = nombre;
  elImagen.src = imagen;
  elImagen.alt = `Imagen de ${nombre}`;
  elTipos.textContent = tipos;
  elPeso.textContent = `${pesoKg} kg`;
  elAltura.textContent = `${alturaM} m`;
  resultado.classList.remove('oculto');
}



form.addEventListener('submit', (evento) => {
  evento.preventDefault();
  const nombre = input.value.trim().toLowerCase();

  if (!nombre) {
    mostrarMensaje('Escribe el nombre de un pokémon.', true);
    return;
  }
  buscarPokemon(nombre);
});