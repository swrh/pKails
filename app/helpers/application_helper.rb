module ApplicationHelper
  def link_to_in_li(body, url, link_to_options = {})
    active = 'active' if current_page?(url)
    url = '#' if current_page?(url)
    content_tag :li, class: active do
      link_to body, url, link_to_options
    end
  end
end
