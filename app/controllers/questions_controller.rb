class QuestionsController < ApplicationController
  def create
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.create(params[:question].permit(:questiontext, :questionclass))
    redirect_to survey_path(@survey)
  end
end
