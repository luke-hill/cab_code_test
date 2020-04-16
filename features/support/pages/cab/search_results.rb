# frozen_string_literal: true

module CAB
  class SearchResults < SitePrism::Page
    # Using anonymous sections here gives you more clarity over method
    # signatures used in the steps / other portions of code
    sections :result_items, '.search-results > li' do
      element :title, 'h3'
      element :description, '.description'
    end

    def link_titles
      result_items.map { |result| result.title.text }
    end
  end
end
