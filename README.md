# Hello PHP

This is a sample "Hello World" project written in PHP.

To startup the service graph:

  - `cd services/service-graph`
  - `make dc-graph-up-d`

To call the frontend application:

 - `curl -X GET http://localhost:48080`

To shutdown the service graph:

  - `cd services/service-graph`
  - `make dc-graph-down`
