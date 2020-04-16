Given("I am on the CAB homepage") do
  @domain = 'cab'
  Capybara.app_host = admin_data.dig('cab_domain')
  @app.cab_home.load
  @app.cab_home.english_overlay_option.click
end

When("I make a search using the CAB search bar for {string}") do |string|
  @app.cab_home.search_form.send_keys(string, :enter)
end

Then("the CAB search results should include information about Pensions") do

end

Then("the CAB search results should include information about the State Pension") do

end

Then("the CAB search results should not show any results") do
  expect(@app.cab_search_results.result_items).to be_empty
end
