module PostsHelper
  def post_list(post)
    data = ''
    if user_signed_in?
      post.each do |posts|
        data += "<p> <strong>#{posts.title}</strong> <br>
          #{posts.user.email}</br>#{posts.post}</p>"
      end
    else
      post.each do |posts|
        data += "<p> <strong>#{posts.title}</strong><br>#{posts.post} </p>"
      end
    end
    data.html_safe
  end
end
