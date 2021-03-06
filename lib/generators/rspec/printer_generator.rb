module Rspec
  module Generators
    class PrinterGenerator < ::Rails::Generators::NamedBase
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

      argument :passed_methods, type: :array, default: [], required: false, banner: 'method_name1 method_name2 ...'

      check_class_collision suffix: 'Printer'

      def create_printer_spec
        template 'printer_spec.rb', File.join('spec/printers', class_path, "#{file_name}_printer_spec.rb")
      end

      def create_printer_previews
        template 'preview.rb', File.join('spec/printers/previews', class_path, "#{file_name}_preview.rb")
      end

      private

      def file_name
        @_file_name ||= super.gsub(/_printer/i, '')
      end
    end
  end
end
