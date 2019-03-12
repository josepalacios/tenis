Given(/^Voy a la portada$/) do
    visit "/"
end

When(/^El jugador A hace un punto$/) do
    click_button("A")
end

Then(/^debo ver "(.*?)"$/) do |arg1|
  last_response.should have_xpath("//h2[@id=\"#{puntaje}\"]")  do |h2|
    h2.should contain( arg1 )
end

