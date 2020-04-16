# frozen_string_literal: true

module CAB
  class Home < SitePrism::Page
    elements :navigation_panel, '#main-nav .nav-list-primary li'
    element :english_overlay_option, '#home-extent-popup [lang="en-GB"]'
    element :main_header, '#main h1'

    def link_labels
      navigation_panel.map(&:text)
    end
  end
end
