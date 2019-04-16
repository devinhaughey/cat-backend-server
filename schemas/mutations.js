const graphql = require("graphql");
// Declaring the Database as db to use for queries
const db = require("../dbAdaptor").db;
const {GraphQLObjectType, GraphQLID} = graphql;
const {FavoriteType} = require("./types");

const RootMutation = new GraphQLObjectType({
    name: "RootMutationType",
    type: "Mutation",
    fields: {
        addFavorite: {
            type: FavoriteType,
            args: {id: {type: GraphQLID}},
            description: "Inserts the provided breed_id into the favorite table",
            resolve(parentValue, args) {
                const query = `INSERT INTO cat_schema.favorite_table(breed_id) VALUES ($1) RETURNING breed_id`;
                const values = [args.id];

                return db
                    .one(query, values)
                    .then(res => res)
                    .catch(err => err);
            }
        },
        deleteFavorite: {
            type: FavoriteType,
            args: {id: {type: GraphQLID}},
            description: "Deletes the provided breed_id from the favorite table",
            resolve(parentValue, args) {
                const query = `DELETE FROM cat_schema.favorite_table WHERE breed_id=$1 RETURNING breed_id`;
                const values = [args.id];

                return db
                    .one(query, values)
                    .then(res => res)
                    .catch(err => err);
            }
        }
    }
});

// Exports mutations to be used by GraphQL and the server
exports.mutation = RootMutation;