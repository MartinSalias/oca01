Given(/^Voy al sitio$/) do
  visit '/'
end

Then(/^veo "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

When(/^Tira un dado jugador (\d+) sale un (\d+)$/) do |valor_forzado1, valor_forzado2|
  click_button("Tirar dado")
end

