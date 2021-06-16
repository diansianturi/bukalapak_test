require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome

Given('open the website') do
  driver.navigate.to "https://www.bukalapak.com"
  driver.manage.window.maximize
end

Then('user login') do
  driver.find_element(:class, 'te-header-login').click()
  driver.find_element(:id, 'user_session_username').send_keys('youremail@email.com')
  driver.find_element(:id, 'user_session_password').send_keys('yourpassword')
  driver.find_element(:name, 'commit').click()
end


Then('user closing the browser') do
  sleep(5)
end