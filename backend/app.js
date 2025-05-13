const express = require('express');
const app = express();
const AUTHOR = "Przemysław Romaniak";
const PORT = process.env.APP_PORT || 3000;
const startTime = new Date().toISOString();

console.log(`Aplikacja uruchomiona: ${startTime}`);
console.log(`Autor: ${AUTHOR}`);
console.log(`Nasłuchiwanie na porcie: ${PORT}`);

app.use(express.json());

app.get('/api/weather', async (req, res) => {
  const { city } = req.query;
  if (!city) return res.status(400).json({ error: 'City required' });

  try {
    const apiKey = 'dae47571dd61454e9a6102543251005';
    const url = `https://api.weatherapi.com/v1/current.json?q=${encodeURIComponent(city)}&key=${apiKey}`;
    const response = await fetch(url);
    const data = await response.json();
    res.json(data);
  } catch (err) {
    res.status(500).json({ error: 'API fetch failed.' });
  }
});

app.listen(3000, () => {
  console.log('App running on port 3000');
});


