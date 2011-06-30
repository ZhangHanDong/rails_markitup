A MarkDown TextEditor with jQuery and Markitup! and redcarpet for Rails 3
=========================================================================

__use: [Markitup](http://markitup.jaysalvat.com/ "Markitup")__ and [Redcarpet](https://github.com/tanoku/redcarpet "Redcarpet")

__[Demo](http://markitup.jaysalvat.com/downloads/demo.php?id=markupsets/markdown)__

Support Env:
------------
Rails3.0.8+/Ruby1.8.7+

## Usage:

**you need install pygments**

    easy_install pygments

a. In Gemfile:

    gem "redcarpet"
    gem "albino"
    gem "nokogiri"
    gem 'rails_markitup'

b. Then run :

    rails g rails_markitup:install

c. In layout:

    = stylesheet_link_tag :markitup
    = javascript_include_tag :markitup

    or you can use another highlight css:

    = stylesheet_link_tag :markitup_shiny

d. In your textarea , simple\_form\_for exapmle:

    = form.input :content, :as => :text, :input_html => {:id => 'markdown'} 

e. In your application.js:

    $(document).ready(function(){
      $('#markdown').markItUp(myMarkdownSettings);
    });

f. In your show page:

    = markdown(@topic.content)

    if you use shiny style

    = markdown(@topic.content, 'shiny')

