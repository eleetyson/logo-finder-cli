require 'clearbit'
class API

  Clearbit.key = '{sk_22070fd03165830dfc7c33a098991734}'

  def self.get_company_info(company)
    response = HTTParty.get("https://autocomplete.clearbit.com/v1/companies/suggest?query=#{company}")
    response.each { |c| Company.new(c) } # create a new Company instance with this hash
  end

end
