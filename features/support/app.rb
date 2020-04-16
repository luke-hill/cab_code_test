# frozen_string_literal: true

class App
  # CAB-NOTE-3
  # This structure is weird as we have 2 isolated areas, google and CAB
  # So I would probably restructure this better with more time
  def google_home
    @google_home ||= Google::Home.new
  end

  def google_results
    @google_results ||= Google::Results.new
  end

  def cab_home
    @cab_home ||= CAB::Home.new
  end

  def cab_search_results
    @cab_search_results ||= CAB::SearchResults.new
  end

  def cab_state_pension
    @cab_state_pension ||= CAB::StatePension.new
  end
end
