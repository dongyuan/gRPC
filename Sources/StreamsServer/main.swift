import Dispatch
import SwiftGRPC

final class StreamsProvider: StreamsServiceProvider {
  func send(request: StreamsRequest,
            session: StreamsServicesendSession)
            throws -> StreamsResponse {
    var response = StreamsResponse()
    response.contents = "Received: \(request.contents)"
    return response
  }
}

let address = "0.0.0.0:9000"
let server = ServiceServer(
  address: address, serviceProviders: [StreamsProvider()]
)
print("Starting server in \(address)")
server.start()
dispatchMain()