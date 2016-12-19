class SuggestionsController < ApplicationController

  def create
    @suggestion = Suggestion.create(create_params)
  end

  private
  def create_params
    params.require(:suggestion).permit(:text, :reference_url).merge(plan_id: params[:plan_id])
    
  end

end
