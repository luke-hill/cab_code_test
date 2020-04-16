Given("I am on the {word} google website") do |domain|
  @domain = domain
  Capybara.app_host = admin_data.dig("google_domains", domain)
  @app.google_home.load
end

# CAB-NOTE-5
# This is a bad regex, but I've not got time
When(/^I make a search for (.*)$/) do |term|
  @app.google_home.search_for(term)
end

Then("the results should include the Citizens Advice Bureau") do
  expect(@app.results.result_titles).to include("Citizens Advice Bureau")
end
