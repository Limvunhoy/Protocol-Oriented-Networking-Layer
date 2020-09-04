### TargetType
    protocol TargetType {
        
        // The target's base `URL`.
        var baseUrl: URL { get }
        
        // The path to be appended to `baseURL` to form the full `URL`.
        var path: String { get }
        
        // The HTTP method used in the request.
        var method: HTTPMethod { get }
        
        // The type of HTTP task to be performed. (request body)
        var task: Task { get }
        
        // The headers to be used in the request.
        var headers: Headers { get }

    }


#### NOTE: 
   ##### Task Property
- <b>Get Request</b>
        - return .requestPlain <small> // for no url param </small>
        - return .requestParameters(bodyParameters: <b>nil</b>, bodyEncoding: <b>.urlEncoding</b>, urlParameters: <b>urlParams</b>) <small>// for request with url param </small><br><br>

- <b>Post Request</b>
        - return .requestPlain <small> // for no body request </small>
        - return .requestParameters(bodyParameters: <b>bodyRequest</b>, bodyEncoding: <b>.jsonEncoding</b>, urlParameters: <b>nil</b>) <small>// for request with only body request </small>
        - return .requestParameters(bodyParameters: <b>bodyRequest</b>, bodyEncoding: <b>.urlAndJsonEncoding</b>, urlParameters: <b>urlParams</b>) <small>// for request with both body request and url param </small>


             