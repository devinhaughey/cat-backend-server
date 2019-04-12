# cat-backend-server

The goal of this project is to create a backend server that retrieves information on various Cat breeds through a REST Api. The backend server is running Node.js with GraphQL making queries to the PostgreSQL Database. The GraphQL queries have also been wrapped in functions to serve the same responses over a REST API. The entire project has been packaged into Docker-Compose for easier deployment and development. 

## Installation
----
```
git clone git@github.com:devinhaughey/cat-backend-server.git
cd cat-backend-server
```
### Start Docker

```
docker-compose up
```

## Suggested Technology
---
Node.js, GraphQl, MongoDB/PostgreSQL, Typescript


## Endpoints
----
```
GET: /api/breeds
```
Get all breeds
```
GET: /api/breeds/:id
```
Get a breed by id
```
GET: /api/breeds/?q=<name>
```
Search a breed by name
```
GET: /api/breeds/?size=<numberPerPage>?Page=<pageNumber>
```
Paginate breeds
```
POST: /api/favorites
```
Add favorite breeds
```
GET: /api/favorites/:id
```
Get a favorite breed by id
```
DELETE: /api/favorites/:id
```
Delete a favorite breed by id


## Models
---
Breed:
    Name
    Description
    Image URL
    Temperament
    Origin

Favorite:
    BreedId    

### Issues / Things to Work On
---
Two endpoints don't work how they are supposed to.
```
GET: /api/breeds/?q=<name>
```
Search a breed by name
```
GET: /api/breeds/?size=<numberPerPage>?Page=<pageNumber>
```
Paginate breeds

I had issues with getting the correct responses from them using the REST API interface. 
Adding Test cases to the project would have helped with development and ensuring aspects of the requirements were implemented properly. Also, making seperate build scripts for docker if it is production or testing to turn on or off various features. One thing I wish I had time for was implementing a login or token system.

If I have time in the future I would like to add a Frontend to this Backend Application to serve up the linked URLs for the images of the cats. Also, write the application in Typescript to dip my toes back into learning it again after using Javascript for a while. The theme of the site would be sleeping cats obviously, because they're RESTing... 

I thoroughly enjoyed programming this backend server project and have learned a lot. I will definitely be utilizing my new skills with any new applications I will need to write. 