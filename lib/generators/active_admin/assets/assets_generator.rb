module ActiveAdmin
  module Generators
    class AssetsGenerator < Rails::Generators::Base

      def self.source_root
        @_active_admin_source_root ||= File.expand_path("../templates", __FILE__)
      end

      def install_assets
        template 'active_admin.js.coffee', 'app/assets/javascripts/active_admin.js.coffee'
        template 'active_admin.css.scss',  'app/assets/stylesheets/active_admin.css.scss'
      end

    end
  end
end
