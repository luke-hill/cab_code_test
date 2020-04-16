# frozen_string_literal: true

module Google
  module Home
    class UK < SitePrism::Page
      set_url '/'

      element :search_form, '[name="q"]'
      element :search_button, '[name="btnK"][type="submit"]'
      element :logo, '#hplogo'

      def search_for(term)
        search_form.send_keys(term)
        logo.click # To reset state
        search_button.click
      end
    end
  end
end
