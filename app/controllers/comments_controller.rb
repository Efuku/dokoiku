class CommentsController < ApplicationController
def create
  @comment = Comment.create(text: params[:text], reference_url: params[:reference_url], plan_id: params[:plan_id])
end

private
def comment_params
  params.permit(:text, :reference_url, :plan_id)
  
end



end
