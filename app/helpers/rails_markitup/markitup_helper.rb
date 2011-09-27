module RailsMarkitup::MarkitupHelper

  def markdown(text, style="bright")
     options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
     content_tag(:div, :class => "#{style}"){syntax_highlighter(Redcarpet.new(text, *options).to_html).html_safe}
   end


  def syntax_highlighter(html)
    doc = Nokogiri::HTML(html)
    doc.search("//pre[@lang]").each do |pre|
      pre.replace Albino.colorize(pre.text.rstrip, pre[:lang])
    end
    doc.to_s
  end
end