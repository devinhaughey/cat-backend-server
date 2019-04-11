const { db } = require("../dbAdaptor");
const { 
        GraphQLObjectType, 
        GraphQLID, 
        GraphQLList,
        GraphQLString 
        } = require("graphql");
const { BreedType, FavoriteType } = require("./types");

const RootQuery = new GraphQLObjectType({
  name: "RootQueryType",
  type: "Query",
  fields: {
    breed: {
      type: BreedType,
      args: { id: { type: GraphQLID }
    },
      resolve(parentValue, args) {
        const query = `SELECT * FROM breed WHERE id=$1`;
        const values = [args.id];

        return db
          .one(query, values)
          .then(res => res)
          .catch(err => err);
      }
    },
    breed: {
        type: BreedType,
        args: { name: { type: GraphQLString }
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
    breeds: {
        type: new GraphQLList(BreedType),
        resolve(parentValue) {
          const query = `SELECT * FROM breed`;
  
          return db
            .query(query)
            .then(res => res)
            .catch(err => err);
        }
    },
    breeds: {
        type: new GraphQLList(BreedType),
        args: { size: { type: GraphQLID }},
        resolve(parentValue, args) {
          const query = `SELECT * FROM breed fetch first $1 rows only`;
          const values = [args.size];

          return db
            .query(query,values)
            .then(res => res)
            .catch(err => err);
        }
    },
    // Not working
    favorites: {
        type: FavoriteType,
        args: { id: { type: GraphQLID }
      },
        resolve(parentValue, args) {
          const query = `SELECT * FROM favorite`;
          const values = [args.id];
  
          return db
            .query(query, values)
            .then(res => res)
            .catch(err => err);
        }
      }
  }
});

exports.query = RootQuery;