const chai = require("chai");

const expect = chai.expect;
const url = "http://localhost:5000";
const request = require("supertest");

describe("Mutations", () => {
    it("Adds new favorite ID with id = 12", (done) => {
        const expected = {
                 breed_id: '12',
            };
        const query = "mutation{ addFavorite(id: 12)}";

        request(url)
        .post("/graphql")
        .send({ query: "mutation{ addFavorite(id: 12) {breed_id}}" })
        .expect(200)
        .end((err, res) => {
            // res returns the breed_id that was added to the table 
            if (err) return done(err);
            expect(res.body.data.addFavorite).to.deep.equal(expected);
            done();
        })
    })

    it("Deletes new favorite ID with id = 12", (done) => {
        const expected = {
            breed_id: '12',
        };

        request(url)
        .post("/graphql")
        .send({ query: "mutation{ deleteFavorite(id: 12) {breed_id}}" })
        .expect(200)
        .end((err, res) => {
            // res returns the breed_id of the deleted breed
            if (err) return done(err);
            expect(res.body.data.deleteFavorite).to.deep.equal(expected);
            done();
        })
    })
});