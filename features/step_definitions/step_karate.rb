Given /^I navigate to Google$/ do

	@browser.goto "http://www.google.co.in"
end

When /^I enter asia into the search field$/ do
searchField = @browser.text_field(:name, 'q')
searchButton = @browser.button(:name, 'btnG')
searchField.set 'asia'
searchButton.click
end

Then /^the text India should be present$/ do
@browser.div(:id => 'resultStats').wait_until_present
(@browser.text.include? 'India').should == true

end 
