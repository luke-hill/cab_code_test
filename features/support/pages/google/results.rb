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

    # This code isn't very good because we're hitting a JS injection
    # detection. I'd probably refactor this into a helper given more time
    def navigate_to_cab
      first_cab_entry.link.click
      ::CAB::Home.new.english_overlay_option.click
    end

    def first_cab_entry
      individual_results.detect do |element|
        element.text.include?('citizen') &&
          element.text.include?('advice')
      end
    end
  end
end
