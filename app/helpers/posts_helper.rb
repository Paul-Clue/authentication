module PostsHelper
  def post_list(post)
    if user_signed_in?
      post.each do
        # render inline: '<p> post.title </p>'
        # render inline: '<p> post.user.email </p>'
        # render inline: '<p> post.post </p>'
        post.map { |item| tag.p(item.title) }.join.html_safe
      end
    else
      post.each do
        # render inline: '<p> post.title </p>'
        # render inline: '<p> post.post </p>'
        post.map { |item| tag.p(item.user.email) }.join.html_safe
      end
    end
  end
end
