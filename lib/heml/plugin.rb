module Heml
	class Plugin
		def compile(template)
			Heml::Engine.new(template.source).compiler.precompile
		end

		def self.call(template)
      		new.compile(template)
    	end
	end
end

ActionView::Template.register_template_handler(:haml, Haml::Plugin)