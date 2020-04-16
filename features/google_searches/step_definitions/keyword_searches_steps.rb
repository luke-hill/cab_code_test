Given("I am on the uk google website") do |domain|
  Capybara.app_host = load_yml("google_domains", domain)
end

# CAB-NOTE-5
# This is a bad regex, but I've not got time
When(/^I make a search for (.*)$/) do |term|
  @app.home.search_for(term)
end

Then("the results should not include the Citizens Advice Bureau") do
  expect(@app.results.result_titles).not_to include("Citizens Advice Bureau")
end
