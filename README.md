# REST API starter

This application satisfies the requirements of Part I, 1. of the LBG project specification.

## Installation

To initialise the project you will need to install several dependencies, open up a git bash terminal from the repo directory and run the command:

~~~ bash
$ npm install
~~~

## Running the application

In order to run the application, from your git bash terminal run:

~~~ bash
$ npm start
API Listening on http://localhost:8080
~~~

## Stopping the application

In order to stop the application from the git bash terminal that is running the server press ``CTRL`` + ``C``

## Running on a different port

To start the application on an alternative port to the default (8080) from your git bash terminal run:

~~~ bash
$ PORT=9090 npm start
API Listening on http://localhost:9090
~~~

## Functionality

### Through the browser

In order to interact with this application through a browser navigate to http://localhost:8080/ or change the port number to the alternative that you have used.

### CREATE

To create the example product run the command:

~~~ bash
$ curl -s -X POST http://localhost:8080/product/create -H 'Content-type:application/json' -d '{"name":"example product", "description":"this is an example", "price":9.99}'
~~~

### READ (all)

To read all of the products run the command:

~~~ bash
$ curl -s -X GET http://localhost:8080/product/read
~~~

### READ (one)

To read one of the products run the command:

~~~ bash
$ curl -s -X GET http://localhost:8080/product/read/<id>
~~~

n.b: For these commands anything surrounded by angled braces <> needs to be replaced by you

### UPDATE

To update one of the products run the command:

~~~ bash
$ curl -s -X PUT http://localhost:8080/product/update/<id> -H 'Content-type:application/json'  -d '{"name":"updated product", "description":"its brand new", "price":99.99}'
~~~

n.b: For these commands anything surrounded by angled braces <> needs to be replaced by you

### DELETE

To delete one of the products run the command:

~~~ bash
$ curl -s -X DELETE http://localhost:8080/product/delete/<id>
~~~

n.b: For these commands anything surrounded by angled braces <> needs to be replaced by you

---

By Jackson Thirgood

# Testing

To run tests on this project, use the command.

~~~ bash
npm test
~~~

## Example Test

### Unit

An example unit test we can create for this project is to test the product builder function.

If we test the builder and input a name of "Cascade", a description of "Hops" and a price of 5... We can expet an object to be created that matches this format.

~~~ javascript
{
    name : "Cascade",
    description :"Hops",
    price: 5
}
~~~

### Integration

An example integration test we can create for this project is to test the RESTful endpoints.

If we test the DELETE endpoint by sending a request with a method of 'DELETE' and a path of '/product/delete/1' we should expect th response to be:

Status code: 204
Status text: No content    

### System Testing

Our first example of system testing is 'System Integration Testing' to perform this on our project, we could integration test the CREATE method and check that the output from the READ method is expected.

If we created the Hops as above and received the 201 status code & text 'Created', we could then read all of the products and expect a status code of 200, status text of OK and a message body containing the Hops we created.

Alternatively we could BlackBox system test by using the front end to create a new product and reading the page to make sure that the new product has been created