require 'coffee-script'

module CoffeeBeans
  module Handlers
    module CoffeeScript
      
      def self.haml_handler
        @@haml_handler ||= ActionView::Template.registered_template_handler(:haml)
      end
      
      def self.erb_handler
        @@erb_handler ||= ActionView::Template.registered_template_handler(:erb)
      end

      def self.call(template)
        compiled_source = defined?(Haml) ? haml_handler.call(template) : erb_handler.call(template)
        "::CoffeeScript.compile(begin;#{compiled_source};end)"
      end
    end
  end
  
  module ViewHelpers
    
    def coffee_script_tag(&block)
      content_tag(:script, coffee_script(&block), :type => 'text/javascript')
    end
    
    def coffee_script(&block)
      ::CoffeeScript.compile(capture(&block)).html_safe
    end
    
  end
  
end

ActionView::Template.register_template_handler :coffee, CoffeeBeans::Handlers::CoffeeScript
ActionView::Base.send :include, CoffeeBeans::ViewHelpers