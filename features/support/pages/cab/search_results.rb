# frozen_string_literal: true

module CAB
  class Search < SitePrism::Page
    # Using anonymous sections here gives you more clarity over method
    # signatures used in the steps / other portions of code
    sections :result_items, '.search-results > li' do
      element :title, 'h3'
      element :link, 'h3 > a'
      element :description, '.description'
    end

    def link_titles
      result_items.map { |result| result.title.text }
    end

    def link_for(text)
      result_for(text).link
    end

    def result_accuracy_scores
      result_items.map { |result| result.root_element['data-score'].to_f }
    end

    def sorted_result_accuracy_scores
      result_accuracy_scores.sort { |x, y| y <=> x }
    end

    private

    # CAB-NOTE-10
    # Using a method here over a CapybaraQuerySelector as this is more dynamic
    # and cleaner because we can then re-use this logic for finding any property
    # of the found item (Title/Desc/Data property)
    def result_for(text)
      result_items.detect do |result|
        result.title.text == text
      end
    end
  end
end
