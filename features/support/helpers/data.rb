module Helpers
  # This is the helper which manages / loads up / saves data and responses
  module Data
    def admin_data
      load_yml("data")
    end

    private def load_yml(name)
      YAML.load_file("fixtures/#{name}.yml")
    end
  end
end
