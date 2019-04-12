const graphql = require("graphql");
const { GraphQLObjectType, GraphQLString, GraphQLInt } = graphql;

// Defining the shape of the types, matching the shape of the database table 
const BreedType = new GraphQLObjectType({
  name: "Breed",
  type: "Query",
  fields: {
    id: { type: GraphQLString },
    name: { type: GraphQLString },
    description: { type: GraphQLString },
    imageurl: { type: GraphQLString },
    temperament: { type: GraphQLString },
    origin: { type: GraphQLString }
  }
});

const FavoriteType = new GraphQLObjectType({
  name: "Favorites",
  type: "Query",
  fields: {
    breedid: { type: GraphQLString }
  }
});

// Exporting them so they can be used in other places that import them.
exports.BreedType = BreedType;
exports.FavoriteType = FavoriteType;