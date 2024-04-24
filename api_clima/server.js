const express = require('express');
const cors = require('cors')
const mysql = require('mysql2');

const db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'ClimaWeb'
});

const app = express();
app.use(cors())

app.get('/dados-climaticos', (req, res) => {
    db.query('SELECT * FROM DadosClimaticos ORDER BY data_hora DESC', (error, results) => {
        if(error) return res.status(500).send('Erro no servidor: ' + error.message);
        res.json(results);
  });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Servidor rodando na porta ${PORT}`);
});