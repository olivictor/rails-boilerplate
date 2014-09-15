class PostsController < InheritedResources::Base
  before_filter :only => [:show] do
    @post = Post.friendly.find(params[:id])
    @posts = @post.post_category.posts.all
  end
end
