path ="C:/Users/Teacher/Desktop/repos/automation-new-practical/drivers/chromedriver.exe"

Given(/^I open a browser$/) do
  @browser = Selenium::WebDriver.for :chrome, driver_path: path
  url = "http://www.old.practicalsqa.net/wp-login.php/"
   @browser.navigate.to url
end

Then(/^I verify Practical SQA page loaded$/) do
@browser.find_element(xpath: "//h1[@class ='site-title']")
end

Given(/^I login with "([^"]*)" username and "([^"]*)" password$/) do |username, password|
  @browser.find_element(xpath: "//input[@id ='user_login']").send_key username
  @browser.find_element(xpath: "//input[@id ='user_pass']").send_key password
  @browser.find_element(xpath: "//input[@id ='wp-submit']").click


end

