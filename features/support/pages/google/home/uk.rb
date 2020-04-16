module Google
  module Home
    class UK < SitePrism::Page
      element :search_form, 'name=["q"]'
      element :search_button, 'name=["btnK"]'
    end
  end
end
