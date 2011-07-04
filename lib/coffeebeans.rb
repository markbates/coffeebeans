require 'coffee-script'

module CoffeeBeans
  module Handlers
    module CoffeeScript
      
      def self.handler(type)
        @@handler ||=  ActionView::Template.registered_template_handler(type)
      end
      
      def self.call(template)
        puts template.class
        compiled_source = defined?(Haml) ? handler(:haml).call(template) : handler(:erb).call(template)
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