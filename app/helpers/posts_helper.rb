module PostsHelper
  def choose_new_or_edit
    if action_name == "new"
      posts_path
      #   confirm_posts_path
    elsif action_name == "edit"
      posts_path
    end
  end
end
