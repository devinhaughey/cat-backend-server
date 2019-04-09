# cat-backend-server

The goal of this project is to create a backend server that retrieves information on various Cat breeds through a REST Api.

### Suggested Technology
---
Node.js, GraphQl, MongoDB/PostgreSQL, Typescript


### Endpoints
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


### Models
---
Breed:
    Name
    Description
    Image URL
    Temperament
    Origin

Favorite:
    BreedId    