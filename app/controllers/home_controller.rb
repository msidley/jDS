class HomeController < ApplicationController
  def start
    @survey_resposnes = SurveyResposne.all
  end
end
