# frozen_string_literal: true

require 'rails/generators/base'

module Kubelogic
  module Generators

    # Rails generator example
    class ConfigGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)

      def create_config
        template 'application.yml', 'config/application.yml'
      end
    end

  end
end

