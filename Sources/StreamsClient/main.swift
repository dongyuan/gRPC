let client = StreamsServiceServiceClient(
  address: "0.0.0.0:9000", secure: false
)
var request = StreamsRequest()
request.contents = "Hello, world!"
let response = try client.send(request)
print(response.contents)