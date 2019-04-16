const chai = require("chai");

const expect = chai.expect;
const url = "http://localhost:5000";
const request = require("supertest");

describe("REST API", () => {
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
        .get("/api/breeds/10")
        .expect(200)
        .end((err, res) => {
            // res will contain array with one user
            if (err) return done(err);
            expect(res.body.getBreedId).to.deep.equal(expected);
            done();
        })
    })

    it("Returns all breeds", (done) => {
        request(url)
        .get("/api/breeds")
        .expect(200)
        .end((err, res) => {
            // res will contain array of all breeds
            if (err) return done(err);
            // There are a 99 cats in the database
            expect(res.body.getAllBreeds).to.have.lengthOf(99);
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
        .get("/api/breeds/?q=American%20Wirehair")
        .expect(200)
        .end((err, res) => {
            // res will contain the response for American Wirehair
            if (err) return done(err);  
            expect(res.body.getBreedByName).to.deep.equal(expected);
            done();
        })
    })

    // TODO: This is not what this should do
    it("Returns pagination of breed", (done) => {
        request(url)
        .get("/api/breeds/?size=<numberPerPage>?Page=<pageNumber></pageNumber>")
        .expect(200)
        .end((err, res) => {
            // res returns all of the favorite breeds as an array
            if (err) return done(err);
            //console.log(res);
            // TODO: getAllfavoriteBreeds needs to be getAllFavoriteBreeds, update name
            expect(res.body.getAllfavorites).to.have.lengthOf(3);
            done();
        })
    })

    it("Adds a favorite breed to favorite_table", (done) => {
        const expected = {
            breed_id: '12',
       };

        request(url)
        .post("/api/favorites/12")
        .expect(200)
        .end((err, res) => {
            // res returns the breed_id that was added to the table 
            if (err) return done(err);
            expect(res.body.addFavorite).to.deep.equal(expected);
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
        .get("/api/favorites/44")
        .expect(200)
        .end((err, res) => {
            // res returns the breed information from the breed_table based on breed_id
            if (err) return done(err);
            expect(res.body.getFavoriteBreed).to.deep.equal(expected);
            done();
        })
    })

    it("Deletes favorite breed from favorite_table", (done) => {
        const expected = {
            breed_id: '12',
       };

        request(url)
        .delete("/api/favorites/12")
        .expect(200)
        .end((err, res) => {
            // res returns the breed_id of the deleted breed
            if (err) return done(err);
            expect(res.body.deleteFavorite).to.deep.equal(expected);
            done();
        })
    })
});