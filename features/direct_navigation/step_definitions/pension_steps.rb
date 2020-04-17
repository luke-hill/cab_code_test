# frozen_string_literal: true

Given('I am on the CAB homepage') do
  @domain = 'cab'
  Capybara.app_host = admin_data.dig('cab_domain')
  @app.cab_home.load
  @app.cab_home.english_overlay_option.click
  @app.cab_home.dismiss_cookie_alert
end

When('I make a search using the CAB search bar for {string}') do |string|
  @app.cab_home.search_form.send_keys(string, :enter)
end

When('I select the option for State Pension information') do
  @app.cab_search.link_for('State Pension').click
end

Then('the CAB search results should include information about Pensions') do
  # CAB-NOTE-9 - I guess these assertions aren't great. But with a bit more
  # Product Knowledge I could improve them
  expect(@app.cab_search.link_titles)
    .to include(a_string_matching(/Pensions/))
end

Then('the CAB search results should include information about the State Pension') do
  # CAB-NOTE-9 - I guess these assertions aren't great. But with a bit more
  # Product Knowledge I could improve them
  expect(@app.cab_search.link_titles)
    .to include(a_string_matching(/State Pension/))
end

Then('the CAB search results should not show any results') do
  expect(@app.cab_search.result_items).to be_empty
end

Then('I should be presented with detailed information about the State Pension') do
  expect(@app.cab_state_pension.header.text).to eq('State Pension')
end

Then('results should be ordered from most to least relevant') do
  expect(@app.cab_search.result_accuracy_scores)
    .to eq(@app.cab_search.sorted_result_accuracy_scores)
end
