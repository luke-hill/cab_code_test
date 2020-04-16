# frozen_string_literal: true

module Google
  module Results
    class UK < SitePrism::Page
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
end
