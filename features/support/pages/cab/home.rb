# frozen_string_literal: true

module CAB
  class Home < SitePrism::Page
    set_url '/'

    elements :navigation_panel, '#main-nav .nav-list-primary li'
    # This should be added to a SitePrism load_validation, with proper logging
    # and debug info, but I haven't got time for it.
    element :english_overlay_option, '#home-extent-popup [lang="en-GB"]'
    element :main_header, '#main h1'
    element :search_form, '#main-header__search__input'

    def link_labels
      navigation_panel.map(&:text)
    end
  end
end
