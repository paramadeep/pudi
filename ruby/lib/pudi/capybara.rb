require 'capybara'
require 'selenium-webdriver'

module PudiCapybara
  def getHttpRequestCount
    page.find('html').native.find_element(:id,'httpcount').attribute('count')
  end
end

