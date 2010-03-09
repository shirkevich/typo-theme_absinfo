ContentHelper.module_eval do
  def category_links(article)
    article.categories.map { |c| link_to h(c.name), category_url(c), :rel => 'tag'}.join(" ")
  end

  def tag_links(article)
    article.tags.map { |tag| link_to tag.display_name, tag.permalink_url, :rel => "tag"}.sort.join(" ")
  end
end

SearchSidebar.view_root = File.dirname(__FILE__) + '/../views/plugins/search_sidebar'
TagSidebar.view_root = File.dirname(__FILE__) + '/../views/plugins/tag_sidebar'
PageSidebar.view_root = File.dirname(__FILE__) + '/../views/plugins/page_sidebar'
