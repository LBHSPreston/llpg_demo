class AddressApi
  require 'net/http'
  def list_properties(postcode)
    url = URI.parse('http://lbhwebintd01.ad.hackney.gov.uk:9000/v1/Addresses?Postcode=' + postcode+'&AddressStatus=ApprovedPreferred&Format=Detailed&Gazetteer=Local')
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    response = res.body
  end
end
