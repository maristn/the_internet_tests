require_relative '../spec_helper.rb'

step 'Open the url "url"' do |url|
  login_page.visit(url)
end

step 'Type the "username" for username and "password" for password' do |username, password|
  login_page.fill_field('username',username)
  login_page.fill_field('password',password)
end

step 'Click on "button" button' do |button|
  login_page.click_on(button)
end

step 'The text "message" must be displayed' do |message|
  login_page.save_screenshot("reports/images/#{message}.png", full:true)
  unless login_page.has_content?(message)
    puts "Message was not shown"
  end
end

step 'Hover over the "user" avatar picture' do |user|
  hovers_page.hover_user(user)
  hovers_page.save_screenshot("reports/images/#{user}.png", full:true)
end

step 'The username "user" must be displayed' do |user|
  unless  hovers_page.has_content?(user)
    puts "Username was not shown"
  end
end

step 'Click on "collumn" from "table" table' do |collumn, table|
  if table == "Example 2" && collumn == "Last Name"
    tables_page.click_table2_collumn_last_name
  end
end

step 'Check if the table is ordered alphabetically' do
  tables_page.save_screenshot("reports/images/order_#{Time.now.strftime('%Y-%m-%d_%H-%M-%S')}.png", full:true)
  names = tables_page.get_collumn_order
  puts names
  if names == names.sort
    puts "Last names are ordered alphabetically"
  else
    puts "Last names aren't ordered alphabetically"
  end
end






# require_relative '../spec_helper.rb'
#

#
# step 'Type "text" on search field' do |text|
#   main_page.fill_field('input',text)
#   @search_text = text
# end
#
#
# step 'The results page must be shown' do
#   main_page.save_screenshot("reports/images/result_page.png", full:true)
#   if main_page.title != "#{@search_text} - Google Search"
#     raise "Result page was not shown"
#   end
# end
#
# step 'The current page or the results page must not be shown' do
#   main_page.save_screenshot("reports/images/no_result_page.png", full:true)
#   if main_page.title == "#{@search_text} - Google Search" || main_page.title == "Google"
#     raise "Result or current page was shown"
#   end
# end
#
# step 'The results page must show the text "results_text"' do |results_text|
#   main_page.save_screenshot("reports/images/#{results_text}.png", full:true)
#   if main_page.get_message != results_text
#     raise "#{results_text} was not shown"
#   end
# end
