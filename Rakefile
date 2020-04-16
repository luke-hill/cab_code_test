# frozen_string_literal: true

namespace :cukes do
  desc 'Run all cukes created for Coding Challenge'
  task :all do
    system('bundle exec cucumber') || raise('All Cukes failed')
  end

  desc 'Run all smoke-test cukes created for Coding Challenge'
  task :smoke_test do
    system('bundle exec cucumber features/smoke_test.feature') ||
      raise('Smoke test failed')
  end
end

task :cops do
  system('bundle exec rubocop') || raise('Cops failed')
end

task default: %i[cops cukes:all]
