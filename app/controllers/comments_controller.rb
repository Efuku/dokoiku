class CommentsController < ApplicationController

def create
  @comment = Comment.create(create_params)
end

private
def create_params
  params.require(:comment).permit(:text, :reference_url).merge(plan_id: params[:plan_id])
end



end
