# frozen_string_literal: true

namespace :cukes do
  desc 'Run all PASSING cukes created for Coding Challenge'
  task :all do
    system('bundle exec cucumber --t "not @failing"') ||
      raise('All tests failed')
  end

  desc 'Run all google search cukes created for Coding Challenge'
  task :google_search do
    system('bundle exec cucumber features/google_searches') ||
      raise('Google search tests failed')
  end

  desc 'Run all direct cukes created for Coding Challenge'
  task :google_search do
    system('bundle exec cucumber features/direct_navigation') ||
      raise('Direct navigation tests failed')
  end
end

task :cops do
  system('bundle exec rubocop') || raise('Cops failed')
end

task default: %i[cops cukes:all]
