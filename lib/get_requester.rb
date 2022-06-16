# Write your code here
class GetRequester 

    require 'open-uri'
require 'net/http'
require 'json'

    def initialize(url)
        @url = url
    end 

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    
    end 

def parse_json
    data = JSON.parse(get_response_body)
end 


end 
