const chai = require("chai");
const graphql = require("graphql");
const {BreedType, FavoriteType} = require("../schemas/types");

const expect = chai.expect;

describe("BreedType", () => {
    it("Should have an id field of type ID", () => {
        expect(BreedType.getFields()).to.have.property("id");
        expect(BreedType.getFields().id.type).to.deep.equals(graphql.GraphQLID);
    });

    it("Should have a name field of type String", () => {
        expect(BreedType.getFields()).to.have.property("name");
        expect(BreedType.getFields().name.type).to.deep.equals(graphql.GraphQLString);
    });

    it("Should have a description field of type String", () => {
        expect(BreedType.getFields()).to.have.property("description");
        expect(BreedType.getFields().description.type).to.deep.equals(graphql.GraphQLString);
    });

    it("Should have a imageurl field of type String", () => {
        expect(BreedType.getFields()).to.have.property("image_url");
        expect(BreedType.getFields().image_url.type).to.deep.equals(graphql.GraphQLString);
    });

    it("Should have a temperament field of type String", () => {
        expect(BreedType.getFields()).to.have.property("temperament");
        expect(BreedType.getFields().temperament.type).to.deep.equals(graphql.GraphQLString);
    });

    it("Should have a origin field of type String", () => {
        expect(BreedType.getFields()).to.have.property("origin");
        expect(BreedType.getFields().origin.type).to.deep.equals(graphql.GraphQLString);
    })
});

describe("FavoriteType", () => {
    it("Should have an id field of type ID", () => {
        expect(FavoriteType.getFields()).to.have.property("breed_id");
        expect(FavoriteType.getFields().breed_id.type).to.deep.equals(graphql.GraphQLID);
    });
});