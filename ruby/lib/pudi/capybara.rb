require 'capybara'
module PudiCapybara
  def getHttpRequestCount
    page.find('HttpRequestCount')[:count]
  end
end

