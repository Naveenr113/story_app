# class LikesController < ApplicationController
#
#   def create
#     @like = Like.new(like_params)
#     if @like.save
#       flash[:notice] = @like.errors.full_message.to_sentence
#     end
#     redirect_to @like.post
#   end
#
#   private
#   def like_params
#     params.require(:like).permit(:post_id)
#   end
# end
