Given(/^I launch the sample page$/) do
  @browser=Selenium::WebDriver.for :chrome
  @browser.get "https://spreadsheets.google.com/a/thoughtworks.com/spreadsheet/viewform?formkey=dGtlWGJjbWhuSlAyMHhLdXc2eE0wX2c6MQ"
end

When(/^I fill in the options$/) do
  @browser.find_element(:xpath,'//*[@id="entry_0"]').send_keys "lu han"
end

Then(/^I check result$/) do
  @browser.find_element(:xpath,'//*[@id="ss-form"]/div[5]/div/input').click
end

Given(/^I get the api$/) do
 @api=RestClient.get("www.google.com")
end

When(/^I analyze the result$/) do
  puts @api.body
end