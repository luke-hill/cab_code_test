# frozen_string_literal: true

When('I navigate to the CAB home page') do
  @app.google_results.navigate_to_cab
end

Then('I should be on the CAB homepage') do
  expect(page.current_url).to include('citizensadvice')

  expect(@app.cab_home.main_header.text).to eq('Welcome to Citizens Advice')
end

Then('the navigation links at the top should be all correct') do
  expect(@app.cab_home.link_labels).to have_all_correct_navigation_links
end

Then('the navigation links at the top should include {word}') do |link_name|
  expect(@app.cab_home.link_labels)
    .to include(link_name)
end
