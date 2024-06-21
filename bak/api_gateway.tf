resource "oci_apigateway_gateway" "example_gateway" {
  compartment_id = var.compartment_id
  display_name   = "example_gateway"
  endpoint_type  = "PUBLIC"
  subnet_id      = oci_core_subnet.public_subnet.id
}

resource "oci_apigateway_deployment" "example_deployment" {
  compartment_id  = var.compartment_id
  gateway_id      = oci_apigateway_gateway.example_gateway.id
  display_name    = "example_deployment"
  path_prefix     = "/api"

  specification = <<EOF
openapi: 3.0.0
info:
  title: Example API
  version: 1.0.0
paths:
  /auth:
    get:
      summary: Authentication Service
      x-oci-backend:
        url: http://<container-public-ip>:3000/healthcheck
      responses:
        '200':
          description: OK
EOF
}
