require 'rails'
require File.dirname(__FILE__) + "/../../app/helpers/rails_markitup/markitup_helper"

module RailsMarkitup
  class Engine < Rails::Engine

    config.to_prepare do
      ApplicationController.helper(MarkitupHelper)
    end

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