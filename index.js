const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('¡Hola mundo, bienvenidos a mi Node.js de prueba!');
});

app.get('/inicio', (req, res) => {
  res.send('Esta es la ruta /inicio');
});

app.get('/menu', (req, res) => {
  res.send('Esta es la ruta /menu');
});

app.listen(port, () => {
  console.log(`Aplicación escuchando en http://localhost:${port}`);
});
