const graphql = require("graphql");
const {GraphQLObjectType, GraphQLString, GraphQLID} = graphql;

// Defining the shape of the types, matching the shape of the database table
const BreedType = new GraphQLObjectType({
    name: "Breed",
    type: "Query",
    fields: {
        id: {type: GraphQLID},
        name: {type: GraphQLString},
        description: {type: GraphQLString},
        image_url: {type: GraphQLString},
        temperament: {type: GraphQLString},
        origin: {type: GraphQLString}
    }
});

const FavoriteType = new GraphQLObjectType({
    name: "Favorites",
    type: "Query",
    fields: {
        breed_id: {type: GraphQLID}
    }
});

// Exporting them so they can be used in other places that import them.
exports.BreedType = BreedType;
exports.FavoriteType = FavoriteType;