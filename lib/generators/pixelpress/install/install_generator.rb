module Pixelpress
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

      def create_application_printer
        template 'application_printer.rb', 'app/printers/application_printer.rb'
      end
    end
  end
end
