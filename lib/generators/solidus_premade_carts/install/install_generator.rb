# frozen_string_literal: true

module SolidusPremadeCarts
  module Generators
    class InstallGenerator < Rails::Generators::Base

      source_root(__dir__)

      class_option :auto_run_migrations, type: :boolean, default: false

      def add_javascripts
        append_file 'vendor/assets/javascripts/spree/frontend/all.js', "//= require spree/frontend/solidus_premade_carts\n"
        append_file 'vendor/assets/javascripts/spree/backend/all.js', "//= require spree/backend/solidus_premade_carts\n"
      end

      def add_stylesheets
        inject_into_file 'vendor/assets/stylesheets/spree/frontend/all.css', " *= require spree/frontend/solidus_premade_carts\n", before: %r(/\*\//), verbose: true
        inject_into_file 'vendor/assets/stylesheets/spree/backend/all.css', " *= require spree/backend/solidus_premade_carts\n", before: %r(/\*\//), verbose: true
      end

      def create_initializer_file
        copy_file 'premade_carts_initializer.rb', 'config/initializers/premade_carts_initializer.rb'
      end

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=solidus_premade_carts'
      end

      def run_migrations
        run_migrations = options[:auto_run_migrations] || ['', 'y', 'Y'].include?(ask('Would you like to run the migrations now? [Y/n]'))
        if run_migrations
          run 'bundle exec rake db:migrate'
        else
          puts 'Skipping rake db:migrate, don\'t forget to run it!'
        end
      end

    end
  end
end
