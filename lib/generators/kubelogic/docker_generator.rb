# frozen_string_literal: true

require 'rails/generators/base'

module Kubelogic
  module Generators

    # Rails generator for docker related stuff
    class DockerGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)

      def generate_docker
        template 'Dockerfile.erb', 'Dockerfile'
        template '.dockerignore', '.dockerignore'
      end
    end

  end
end

