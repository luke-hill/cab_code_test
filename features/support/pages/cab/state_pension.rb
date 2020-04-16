# frozen_string_literal: true

module CAB
  class StatePension < SitePrism::Page
    # CAB-NOTE-11
    # Due to good page design, there is only one h1 on this informative page
    element :header, 'h1'
  end
end
