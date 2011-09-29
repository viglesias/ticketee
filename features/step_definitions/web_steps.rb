Given /^(?:|I )am on (.+)$/ do |page_name|
visit path_to(page_name)
end
When /^I follow "([^"]*)"$/ do |arg1|
 visit new_project_path
end
When /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  visit  new_project_url
  fill_in arg1, :with => arg2
  click_button "Create Project"
end
When /^I press "([^"]*)"$/ do |arg1|
   visit  new_project_url 
   click_button(arg1)
end

Then /^I should see "([^"]*)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end




