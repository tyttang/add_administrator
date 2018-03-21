Given /^I am on LoginPage, I will login root$/ do
  visit_page(LoginPage) do |page|
    page.login_username = 'root'
    page.login_password = '123456'
    page.login_button
  end
  # visit_page(LoginPage).login_with 'root', '123456'

end


When /^I will add one administrator$/ do
  on_page(UnomsPage).add_button
  on_page(UnomsPage).add_administrator
end


And /^I logout and login the add administrator user$/ do
  on_page(UnomsPage).login_out
  # visit_page(LoginPage).login_with 'tang', '123456'
  visit_page(LoginPage) do |page|
    page.login_username = 'tang'
    page.login_password = '123456'
    page.login_button
  end
end



Then /^I can see the administrator name$/ do
  on_page(UnomsPage).text.should include 'tang'
end
