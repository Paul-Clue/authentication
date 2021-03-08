module PostsHelper
  def post_list(post)
      data = ""
      if user_signed_in? 
        post.each do |post|
          data += "<p> <strong>#{post.title}</strong> <br>
          #{post.user.email}</br>#{post.post}</p>"
        end
    else
      post.each do |post|
        data += "<p> <strong>#{post.title}</strong><br>#{post.post} </p>"
      end
    end
    data.html_safe
  end
end
