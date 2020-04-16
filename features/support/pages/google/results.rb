# frozen_string_literal: true

module Google
  class Results < SitePrism::Page
    # Using anonymous sections here gives you more clarity over method
    # signatures used in the steps / other portions of code
    sections :result_items, '#search .g' do
      element :link, '.r > a'
      element :title, '.r h3'
    end

    # To remove any weird google behaviour which adds a phone based
    # result to call the number e.t.c.
    def individual_results
      result_items.select do |section|
        section.title
      rescue Capybara::ElementNotFound
        false
      end
    end

    def result_titles
      individual_results.map { |section| section.title.text }
    end
  end
end
