class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post, notice: 'Comment was successfully created.' }
      end
    end
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(parent_id: params[:parent_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:name,:body, :parent_id).merge(post_id: params[:post_id])
  end
end
