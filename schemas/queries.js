// Declaring the Database as db to use for queries
const { db } = require('../dbAdaptor');
const { 
        GraphQLObjectType, 
        GraphQLID, 
        GraphQLList,
        GraphQLString 
        } = require('graphql');
// Importing the types to use their declared shape for output        
const { BreedType, FavoriteType } = require('./types');

const RootQuery = new GraphQLObjectType({
  name: 'RootQueryType',
  type: 'Query',
  fields: {
    getAllBreeds: {
      type: new GraphQLList(BreedType),
      description: 'Query to get all breeds from the database',
      resolve(parentValue) {
        const query = `SELECT * FROM breed`;

        return db
          .query(query)
          .then(res => res)
          .catch(err => err);
      }
    },
    getBreedId: {
      type: BreedType,
      args: { id: { type: GraphQLID } },
      description: 'Queries for the provided ID.',
      resolve(parentValue, args) {
        const query = `SELECT * FROM breed WHERE id=$1`;
        const values = [args.id];

        return db
          .one(query, values)
          .then(res => res)
          .catch(err => err);
      }
    },
    getBreedByName: {
        type: BreedType,
        args: { name: { type: GraphQLString },
        description: 'Queries for the breed by name',
      },
        resolve(parentValue, args) {
          const query = `SELECT * FROM breed WHERE name=$1`;
          const values = [args.name];
  
          return db
            .one(query, values)
            .then(res => res)
            .catch(err => err);
        }
    },
    getPaginateOfBreeds: {
        type: new GraphQLList(BreedType),
        args: { size: { type: GraphQLID }},
        description: 'Queries for all of the breeds but filters the top number of rows.',
        resolve(parentValue, args) {
          const query = `SELECT * FROM breed fetch first $1 rows only`;
          const values = [args.size];

          return db
            .query(query,values)
            .then(res => res)
            .catch(err => err);
        }
    } ,
    getFavoriteBreed: {
        type: BreedType,
        args: { id: { type: GraphQLID } },
        description: 'Queries for the favorite breed by the provided Id from the favorite table',
        resolve(parentValue, args) {
            const query = `SELECT * FROM favorite WHERE breedid=$1`;
            const values = [args.id];

            return db
                .one(query, values)
                .then(res =>
                {
                    // Queries the breed table to get the favorite breed information
                    const query = `SELECT * FROM breed WHERE id=$1`;
                    const values = [res.breedid];
                    
                    return db
                        .one(query, values)
                        .then(res => res)
                        .catch(err => err);
                })
                .catch(err => err);
        }
    },
    getAllfavorites: {
        type: new GraphQLList(FavoriteType),
        description: 'Queries for all of the favorite breed Ids',
        resolve(parentValue) {
          const query = `SELECT * FROM favorite`;
  
          return db
            .query(query)
            .then(res => res)
            .catch(err => err);
        }
    }  
  }
});

// Exports the queries so that GraphQL can use them when imported.
exports.query = RootQuery;