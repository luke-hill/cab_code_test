Given("I am on the {word} google website") do |domain|
  Capybara.app_host = admin_data.fetch("google_domains", domain)
end

# CAB-NOTE-5
# This is a bad regex, but I've not got time
When(/^I make a search for (.*)$/) do |term|
  @app.home.search_for(term)
end

Then("the results should include the Citizens Advice Bureau") do
  expect(@app.results.result_titles).to include("Citizens Advice Bureau")
end
