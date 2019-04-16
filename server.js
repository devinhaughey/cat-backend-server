const express = require("express");
const graphql = require("graphql");
const expressGraphQl = require("express-graphql");
const fetch = require("node-fetch");

const { GraphQLSchema } = graphql;
const { query } = require("./schemas/queries");
const { mutation } = require("./schemas/mutations");

const schema = new GraphQLSchema({
    query,
    mutation
  });

const app = express();
// Port that Express server is running on
const port = process.env.PORT || 5000;

// REST API logic to call the respective GraphQL queries using node-fetch
// Makes a POST request with JSON to the graphql endpoint with the query that
// this REST endpoint is representing.
const getAllBreedsRest = async(request, response) => {
    const result = await fetch("http://localhost:5000/graphql",
        {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(
                {query: "{ getAllBreeds{ id name description imageurl temperament origin }}"}
            ),
        })
        .then(res => res.json())
            .then(res => {return res.data})
            .catch(err => {
                console.log(err);
                res.sendStatus(500)
            });

    response.send(result)
};

const getBreedIdRest = async(request, response) => {
    const req_id = parseInt(request.params.id);
    const query = "{ getBreedId(id: " + req_id + "){ id name description imageurl temperament origin }}";

    const result = await fetch("http://localhost:5000/graphql",
        {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(
                { query }
            ),
        })
        .then(res => res.json())
            .then(res => {return res.data})
            .catch(err => {
                console.log(err);
                res.sendStatus(500)
            });

    response.send(result)
};

const getBreedByNameRest = async(request, response) => {
    console.log("We made it");
    const req_name = request.param.name;
    console.log(request.Url.query);
    const query = "{ getBreedByName(name: 'American Wirehair'){ id name description imageurl temperament origin }}";

    const result = await fetch("http://localhost:5000/graphql",
        {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify({query}),
        })
        .then(res => res.json())
            .then(res => {return res.data})
            .catch(err => {
                console.log(err);
                res.sendStatus(500)
            });

    response.send(result)
};

const getPaginateBreedsRest = async(request, response) => {
    const result = await fetch("http://localhost:5000/graphql",
        {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify({query: "{ getAllfavorites{ breedid } }"}),
        })
        .then(res => res.json())
            .then(res => {return res.data})
            .catch(err => {
                console.log(err);
                res.sendStatus(500)
            });

    response.send(result)
};

const postAddFavoriteRest = async(request, response) => {
    const req_id = parseInt(request.params.id);
    const query = "mutation { addFavorite(id: " + req_id + "){ breedid }}";

    const result = await fetch("http://localhost:5000/graphql",
        {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify({query}),
        })
        .then(res => res.json())
            .then(res => {return res.data})
            .catch(err => {
                console.log(err);
                res.sendStatus(500)
            });

    response.send(result)
};

const getFavoriteBreedRest = async(request, response) => {
    const req_id = parseInt(request.params.id);
    const query = "{ getFavoriteBreed(id: " + req_id + "){ id name description imageurl temperament origin }}";

    const result = await fetch("http://localhost:5000/graphql",
        {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify({query}),
        })
        .then(res => res.json())
            .then(res => {return res.data})
            .catch(err => {
                console.log(err);
                res.sendStatus(500)
            });

    response.send(result)
};

const deleteFavoriteRest = async(request, response) => {
    const req_id = parseInt(request.params.id);
    const query = "mutation { deleteFavorite(id: " + req_id + "){ breedid }}";
    const result = await fetch("http://localhost:5000/graphql",
        {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify({query: "{ getAllfavorites{ breedid } }"}),
        })
        .then(res => res.json())
            .then(res => {return res.data})
            .catch(err => {
                console.log(err);
                res.sendStatus(500)
            });

    response.send(result)
};

// REST Endpoints
app.get("/api/breeds", getAllBreedsRest);
app.get("/api/breeds/:id", getBreedIdRest);
// This REST Endpoint does not work
app.get("/api/breeds/?q=<name>", getBreedByNameRest);
// This REST Endpoint does not work
app.get("/api/breeds/?size=<numberPerPage>?Page=<pageNumber></pageNumber>", getPaginateBreedsRest);
app.post("/api/favorites", postAddFavoriteRest);
app.get("/api/favorites/:id", getFavoriteBreedRest);
app.delete("/api/favorites/:id", deleteFavoriteRest);

// GraphQL Endpoint
app.use(
    "/graphql",
   expressGraphQl({
      schema: schema,
      graphiql: true
    })
);

// Output to console of which port server is running on
app.listen(port, () => {
    console.log(`App running on port ${port}.`)
});