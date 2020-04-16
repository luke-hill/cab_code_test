When("I navigate to the CAB home page") do
  @app.google_home.link_for_cab.click
end

Then("I should be on the CAB homepage") do
  expect(page.current_url).to include('citizensadvice')
end

Then("the navigation links at the top should be all correct") do
  expect(@app.cab_home.navigation_panel).to have_all_correct_links
end

Then("the navigation links at the top should include {word}") do |link_name|
  expect(@app.cab_home.navigation_panel.link_labels)
    .to include(link_name)
end
