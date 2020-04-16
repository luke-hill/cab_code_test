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
    element :cookie_alert, '.hide-no-js .button--blue.cookie-monster__close'

    def link_labels
      navigation_panel.map(&:text)
    end

    def dismiss_cookie_alert
      # CAB-NOTE-11
      # Wrapped this in a quick puts statement just to show notice, this should
      # be dealt with in load_validations also, but would need speed testing
      # which I would do if I had more time
      cookie_alert.click
      puts 'Cookie alert should now not show on any other page!'
    end
  end
end
