module PostLister
  def post_list(post)
     if user_signed_in?
      <table>
        <thead>
          <tr>
            <th>Post</th>
            <th colspan="3"></th>
          </tr>
        </thead>

        <tbody>
         @posts.each do |post|
          <tr>
            <td><strong><> post.title</strong></td>
          </tr>
          <tr>
          <td>post.user.email</td>
          </tr>
          <tr>
          <td>post.post </td>
          </tr>
          <tr>
          <td></td>
          </tr>
          <tr>
          <td></td>
          </tr>
          <tr>
          <td></td>
          </tr>
            end
        </tbody>
      </table>

       else 
      <table>
        <thead>
          <tr>
            <th>Post</th>
            <th colspan="3"></th>
          </tr>
        </thead>

          <tbody>
             @posts.each do |post| 
              <tr>
                <td><strong>post.title</strong></td>
                </tr>
              <tr>
                <td>post.post</td>
              </tr>
              <tr>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                </tr>  
                <tr>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                </tr>
                <tr>
                  <td></td>
                </tr>
              end
          </tbody>
      </table>
      end

    <br>


    if user_signed_in?
      <%= link_to 'New Post', new_post_path %><br />
      <%= link_to "Logout", destroy_user_session_path, method: :delete, class:"button is-info" %>
      else
       link_to 'Sign In', new_user_session_path, class: "button is-info" <br />
      <%= link_to 'Sign Up', new_user_registration_path, class: "button is-info" %>
    end
  end
end
 
 
 
 
