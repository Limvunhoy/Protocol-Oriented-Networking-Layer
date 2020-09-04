### Structure
    * Create both Resource and Service folders under Networking/Service

    Eg. + Networking
            + Service
                + Newsfeed
                    -  NewsfeedResource.swift
                    -  NewsfeedService.swift

#### Resource File
    enum NewsfeedResource {
        case fetchNewsfeed(userId: String, page: Int)
    }

    extension NewsfeedResource: TargetType {
        var path: String {
            switch self {
                
            case .fetchNewsfeed:
                return "endpoint"
            }
        }
    
        var method: HTTPMethod {
            switch self {
                
            case .fetchNewsfeed:
                return .post
            }
        }
    
        var task: Task {
            switch self {
                
            case .fetchNewsfeed(let userId, let page):

                let bodyRequest: [String: String] = ["": ""]
                let urlParams: [String: Any] = ["": ""]
                
                return .requestParameters(bodyParameters: bodyRequest, bodyEncoding: .urlAndJsonEncoding, urlParameters: urlParams)
            }
        }
    
        var headers: Headers {
            switch self {
                
            case .fetchNewsfeed:
                return getHeader()
                
            }
        }
    
    }

#### NewsfeedService
    class NewsfeedService: BaseApiService<NewsfeedResource> {
        
        static let sharedInstance = NewsfeedService()
        
        func fetchNewsfeed(userId: String, success: @escaping (FakeNewsfeedListResponse) -> Void, failure: @escaping (APIError) -> Void) {
            
            request(service: .fetchNewsfeed(userId: userId, page: 2), model: FakeNewsfeedListResponse.self) { (response) in
                switch response {
                    
                case .success(let res):
                    print(res)
                    success(res)
                case .failure(let error):
                    print(error)
                    failure(error)
                }
            }
            
        }
        
    }

<b>*NOTE:</b> when request api success. It's return the ResultType with success and failure case

### TargetType
+ <b>[TargetType](Protocol/README.md)</b><br>