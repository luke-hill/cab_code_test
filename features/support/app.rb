class App
  # CAB-NOTE-3
  # This structure is weird as we have 2 isolated areas, google and CAB
  # So I would probably restructure this better with more time
  def google_home
    @google_home ||= Google::Home::UK.new
  end

  def google_results
    @google_results ||= Google::Results::UK.new
  end
end
