const graphql = require("graphql");
const { GraphQLObjectType, GraphQLString } = graphql;

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
    id: { type: GraphQLString },
    name: { type: GraphQLString },
    description: { type: GraphQLString },
    imageurl: { type: GraphQLString },
    temperament: { type: GraphQLString },
    origin: { type: GraphQLString }
  }
});

exports.BreedType = BreedType;
exports.FavoriteType = FavoriteType;