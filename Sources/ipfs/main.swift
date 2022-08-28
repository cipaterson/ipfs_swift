import IPFSKit

let client: IPFSClient?
    
public init() {
    client = try? IPFSClient.init(host: "localhost", port: 5001, ssl: false)
}

if let data = result.data.pngData() {
    do {
        try state.service.client?.add(data) { nodes in // Adding data to IPFS
            // use 'nodes' to pin content
        }
    } catch let error {
        GraniteLogger.info("error adding new image:\n\(error)", .expedition, focus: true)
    }
}
