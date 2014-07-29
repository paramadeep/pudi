require 'capybara'
require 'selenium-webdriver'

module PudiCapybara
  def getHttpRequestCount
    httpcount = page.find('html').native.find_element(:id,'httpcount').attribute('count')
    httpcount.to_i
  end
end

