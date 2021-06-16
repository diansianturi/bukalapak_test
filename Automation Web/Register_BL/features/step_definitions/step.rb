require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome

Given('open the website') do
    driver.navigate.to "https://www.bukalapak.com"
    driver.manage.window.maximize
  end
  
  Then('user register') do
    driver.find_element(:xpath, '//*[@id="vm__white-header-dweb"]/section/header/div[3]/div/div/div[2]/div/a[1]/p').click()
   driver.find_element(:class, 'bl-text-field__input').send_keys('tafelo7551@beydent.com')
   driver.find_element(:class, 'bl-button--primary').click()
   sleep(5)
    driver.switchTo().alert().accept()
    end
  
  
  Then('user closing the browser') do
    sleep(5)
  end