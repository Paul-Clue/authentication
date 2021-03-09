module ApplicationHelper
    def my_link_to(text, href)
        "<a href='#{href}'>#{text}</a>".html_safe
      end
end
