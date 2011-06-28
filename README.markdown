A MarkDown TextEditor with jQuery and Markitup! and redcarpet for Rails 3
=========================================================================

__use: [Markitup](http://markitup.jaysalvat.com/ "Markitup")__

__[Demo](http://markitup.jaysalvat.com/downloads/demo.php?id=markupsets/markdown)__

Support Env:
------------
Rails3.0.8+/Ruby1.8.7+

Usage:
------

1. rails g rails_markitup:install
2. in layout:
  * = stylesheet_link_tag :markitup
  * = javascript_include_tag :markitup
3. in your textarea place the following div:

    * :id => 'markdown'

4. in your application.js:

>$(document).ready(function(){
>
>    $('#markdown').markItUp(myMarkdownSettings);
>
>
>});

5. in your show page:

    * = markdown(@topic.content)

