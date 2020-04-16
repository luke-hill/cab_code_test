# frozen_string_literal: true

Before do |scenario|
  # CAB-NOTE-4
  # I would implement a Singleton Logger here but I haven't got time
  puts "Running #{scenario.name}"
  @app ||= App.new
  page.current_window.maximize
end
