const express = require('express');
const graphql = require("graphql");
const expressGraphQl = require("express-graphql");

const { GraphQLSchema } = graphql;
const { query } = require("./schemas/queries");

const schema = new GraphQLSchema({
    query
  });

const app = express();
// Port that Express server is running on
const port = process.env.PORT || 5000;

app.use(
    '/',
   expressGraphQl({
      schema: schema,
      graphiql: true
    })
  );

//app.get(
//   '/api/breeds/:id',
//  expressGraphQl({
//     schema: schema
//   })
//);


// Create a GET route initial test
//app.get('/', (request, response) => {
//    response.json({ info: 'Node.js, Express, and Postgres API' })
//})

// Output to console of which port server is running on
app.listen(port, () => {
    console.log(`App running on port ${port}.`)
})  