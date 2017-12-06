Given(/^Voy al sitio$/) do
  visit '/'
end

Then(/^veo "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

When(/^Tira un dado sale un (\d+)$/) do |resultado|
  click_button("Tirar dado")
end

