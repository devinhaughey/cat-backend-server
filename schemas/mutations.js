const graphql = require('graphql');
// Declaring the Database as db to use for queries
const db = require('../dbAdaptor').db;
const { GraphQLObjectType, GraphQLID, GraphQLString, GraphQLBoolean } = graphql;
const { FavoriteType } = require('./types');

const RootMutation = new GraphQLObjectType({
  name: 'RootMutationType',
  type: 'Mutation',
  fields: {
    addFavorite: {
      type: FavoriteType,
      args: { id: { type: GraphQLID }},
      description: 'Inserts the provided breedid into the favorite table',
      resolve(parentValue, args) {
        const query = `INSERT INTO cat_schema.favorite_table(breedid) VALUES ($1) RETURNING breedid`;
        const values = [args.id];

        return db
          .one(query, values)
          .then(res => res)
          .catch(err => err);
      }
    },
    deleteFavorite: {
        type: FavoriteType,
        args: { id: { type: GraphQLID }},
        description: 'Deletes the provided breedid from the favorite table',
        resolve(parentValue, args) {
          const query = `DELETE FROM cat_schema.favorite_table WHERE breedid=$1 RETURNING breedid`;
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