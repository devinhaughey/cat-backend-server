const chai = require("chai");

const expect = chai.expect;
const url = "http://localhost:5000";
const request = require("supertest");

describe("GraphQL", () => {
    it("Returns breed with id = 10", (done) => {
        const expected = {
                 id: '10',
                 name: 'Australian Mist',
                 description: 'Short, Spotted or tabby',
                 image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Australian_Mist.jpg/100px-Australian_Mist.jpg",
                 temperament: 'meh',
                 origin: 'Australia' 
            };
         

        request(url)
        .post("/graphql")
        .send({ query: "{ getBreedId(id: 10){ id name description image_url temperament origin }}" })
        .expect(200)
        .end((err, res) => {
            // res will contain array with one user
            if (err) return done(err);
            expect(res.body.data.getBreedId).to.deep.equal(expected);
            done();
        })
    })

    it("Returns all breeds", (done) => {
        request(url)
        .post("/graphql")
        .send({ query: "{ getAllBreeds{ id name description image_url temperament origin }}" })
        .expect(200)
        .end((err, res) => {
            // res will contain array of all breeds
            if (err) return done(err);
            // There are 99 cats in the database
            expect(res.body.data.getAllBreeds).to.have.lengthOf(99);
            done();
        })
    })

    it("Returns breed by name", (done) => {
        const expected = {
            "id": "7",
            "name": "American Wirehair",
            "description": "Rex, All but colorpoint",
            "image_url": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/American_Wirehair_-_CFF_cat_show_Heinola_2008-05-04_IMG_8721.JPG/100px-American_Wirehair_-_CFF_cat_show_Heinola_2008-05-04_IMG_8721.JPG",
            "temperament": "meh",
            "origin": "United States"
          };

        request(url)
        .post("/graphql")
        .send({ query: '{ getBreedByName(name: "American Wirehair"){ id name description image_url temperament origin }}' })
        .expect(200)
        .end((err, res) => {
            // res will contain the response for American Wirehair
            if (err) return done(err);
            expect(res.body.data.getBreedByName).to.deep.equal(expected);
            done();
        })
    })

    // TODO: This is not what this should do
    it("Returns pagination of breed", (done) => {
        request(url)
        .post("/graphql")
        .send({ query: "{ getAllfavorites{ breed_id } }" })
        .expect(200)
        .end((err, res) => {
            // res returns all of the favorite breeds as an array
            if (err) return done(err);
            // TODO: getAllfavoriteBreeds needs to be getAllFavoriteBreeds, update name
            expect(res.body.data.getAllfavorites).to.have.lengthOf(3);
            done();
        })
    })

    it("Returns favorite breed", (done) => {
        const expected = {
            "id": "44",
            "name": "Japanese Bobtail",
            "description": "Short/long, All but colorpoint and ticked",
            "image_url": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/JapaneseBobtailBlueEyedMi-ke.JPG/100px-JapaneseBobtailBlueEyedMi-ke.JPG",
            "temperament": "cuddley",
            "origin": "Japan"
          };

        request(url)
        .post("/graphql")
        .send({ query: "{ getFavoriteBreed(id: 44){ id name description image_url temperament origin }}" })
        .expect(200)
        .end((err, res) => {
            // res returns the specified favorite breed and its information
            if (err) return done(err);
            expect(res.body.data.getFavoriteBreed).to.deep.equal(expected);
            done();
        })
    })

    // TODO: Don't need this test due to not being a requirement
    it("Returns all favorite breeds", (done) => {
        request(url)
        .post("/graphql")
        .send({ query: "{ getAllfavorites{ breed_id } }" })
        .expect(200)
        .end((err, res) => {
            // res returns all of the favorite breeds
            if (err) return done(err);
            expect(res.body.data.getAllfavorites).to.have.lengthOf(3);
            done();
        })
    })
});