const express = require('express');
const app = express();
// Port that Express server is running on
const port = process.env.PORT || 5000;

// Create a GET route initial test
app.get('/', (request, response) => {
    response.json({ info: 'Node.js, Express, and Postgres API' })
})

// Output to console of which port server is running on
app.listen(port, () => {
    console.log(`App running on port ${port}.`)
})  