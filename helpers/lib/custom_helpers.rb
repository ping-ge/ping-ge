module CustomHelpers
  def article_summary_class_from_tags(tags)
    if(([*tags] & ['poem', '诗']).empty?)
      'summary'
    else
      'summary poem'
    end
  end
end
