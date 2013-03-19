require 'net/http'
require 'json'
require 'uri'

 #API DOC https://developers.google.com/web-search/docs/

 class Google

    attr_accessor :api_key 

    ENDPOINT = "http://ajax.googleapis.com/ajax/services/search/web?gl=en" 

    # Create a new instance of Google with your Google api key 
    #  
    # Example:         
    # 
    # >> require 'googler' 
    # => true
    # >> bing = Google.new('your-api-key')
    # => #<Google:0x1af10 @api_key="your-api-key">  
    #
    # Arguments:
    # 
    # @param (String) api_key - you specify a key (Application ID) and such key will be used to authenticate the request.
    def initialize(api_key)
        @api_key = api_key 
    end

    # Sending a request HTTP GET to the Endpoint.
    # 
    # A request to the HTTP endpoint consists of a HTTP GET request to the approriate URI. There are two URLs, one for XML results and one for JSON results.
    # 
    # 
    # Example:
    #
    # >> google.search(query="MooTools") 
    # => Anatomy of a result set
    # => 
    # => 
    # => 

    # Arguments:
    # @param (String) q        - The query parameter is the textof the query you want the API to execute. example: query=mootools
    # @param (String) sources  - The sources parameter is one or more values indicating the SourceType or SourceTypes from which you want to request results.
    #                            The "web" Source type returns a set of results from the WEB SourceType, "Image" searches for images on the WEB, "News" searches news stories
    # @param (Hash)   optional - page/offset
    def search(q="",sources="",optional=nil)
 
        params = {"hl"=>"en","v"=>1.0,"start"=>0, "rsz"=>8, "q"=>q}

        params.merge!(optional) if optional
        params = URI.encode_www_form( params )

        url = URI("#{ENDPOINT}?Appid=#{api_key}&#{params}")

        return JSON.parse(Net::HTTP.get(url))
 
    end
 end