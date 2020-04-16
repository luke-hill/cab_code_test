module Google
  module Home
    class UK < SitePrism::Page
      element :search_form, 'name=["q"]'
      element :search_button, 'name=["btnK"]'

      def search_for(term)
        search_form.send_keys(term)
        search_button.click
      end
    end
  end
end
