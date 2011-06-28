require 'rails'

module RailsMarkitup
  class Engine < Rails::Engine
    
    # =====================================
    # = = javascript_include_tag :markitup =
    # = = stylesheet_link_tag    :markitup =
    # =====================================
    config.before_initialize do
      config.action_view.javascript_expansions[:markitup] = %w(markitup/jquery.markitup.js markitup/sets/markdown/set.js)
      config.action_view.stylesheet_expansions[:markitup] = %w(markitup/sets/markdown/style.css markitup/skins/markdown/style.css)
    end
    
  end
end