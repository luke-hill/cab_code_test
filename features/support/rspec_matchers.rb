# frozen_string_literal: true

RSpec::Matchers.define :have_all_correct_navigation_links do
  match do |actual|
    actual ==
      [
        'Benefits',
        'Work',
        'Debt and money',
        'Consumer',
        'Housing',
        'Family',
        'Law and courts',
        'Immigration',
        'Health',
        'More from us'
      ]
  end
end
