class SurveysController < ApplicationController
  def new
    @survey = Survey.new
  end

  def create
    #render text: params[:survey].inspect
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to @survey
    else
      render 'new'
    end
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def index
    @surveys = Survey.all
  end

  def edit
    @survey = Survey.find(params[:id])
  end

  def update
    @survey = Survey.find(params[:id])

    if @survey.update(params[:survey].permit(:title, :term, :comment, :active))
      redirect_to @survey
    else
      render 'edit'
    end
  end

  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy

    redirect_to surveys_path
  end

  private
    def survey_params
      params.require(:survey).permit(:title, :term, :comment, :active, :survey)
    end
end
