module CustomHelpers
  DEFAULT_LANG = :'zh-CN'

  def article_summary_class_from_tags(tags)
    if(([*tags] & ['poem', '诗']).empty?)
      'summary'
    else
      'summary poem'
    end
  end

  def localized_path_for(path)
    if(current_lang == DEFAULT_LANG)
      path
    else
      "/#{current_lang.to_s + path}"
    end
  end

  def current_lang
    I18n.locale
  end
end
