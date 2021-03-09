module PostsHelper
  def post_list(post)
    data = ''
    a = render inline: "<%= link_to 'Sign_out', destroy_user_session_path, method: :delete %> <br>"
    b = render inline: "<%= link_to 'New post', new_post_path %> <br>"
    c = render inline: "<%= link_to 'Log In', new_user_session_path %> <br>"
    d = render inline: "<%= link_to 'Sign Up', new_user_registration_path %> <br>"

    if user_signed_in?
      post.each do |posts|
        data += "<p> <strong>#{posts.title}</strong> <br>
          #{posts.user.email}</br>#{posts.post}</p>"
      end
      return data.html_safe + b + a
    else
      post.each do |posts|
        data += "<p> <strong>#{posts.title}</strong><br>#{posts.post} </p>"
      end
    end
    data.html_safe + c + d
  end
end
