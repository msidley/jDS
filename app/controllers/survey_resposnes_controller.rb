class SurveyResposnesController < ApplicationController
  def index
    @survey_resposnes = SurveyResposne.all
  end

  def show
    @survey_resposne = SurveyResposne.find(params[:id])
  end

  def q1
    @survey_resposne = SurveyResposne.new
    @survey_resposne.save
  end
  def q2
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.q1 = params[:q1]
    @survey_resposne.save
    if @survey_resposne.q1 == nil or @survey_resposne.q1 == "error"
      @survey_resposne.q1 = "error"
      @survey_resposne.save
      render('q1.html.erb')
    end
    if @survey_resposne.q1 == "no"
      render('ineligible.html.erb')
    end
  end
  def q3
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.q2 = params[:q2]
    @survey_resposne.save
    if @survey_resposne.q2 == nil or @survey_resposne.q2 == "error"
      @survey_resposne.q2 = "error"
      @survey_resposne.save
      render('q2.html.erb')
    end
    if @survey_resposne.q2 == "no"
      render('ineligible.html.erb')
    end
  end
  def q4
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.q3 = params[:q3]
    @survey_resposne.save
    if @survey_resposne.q3 == nil or @survey_resposne.q3 == "error"
      @survey_resposne.q3 = "error"
      @survey_resposne.save
      render('q3.html.erb')
    end
    if @survey_resposne.q3 == "Other"
      render('ineligible.html.erb')
    end
  end
  def q5
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.q4 = params[:q4]
    @survey_resposne.save
    if @survey_resposne.q4 == nil or @survey_resposne.q4 == "error"
      @survey_resposne.q4 = "error"
      @survey_resposne.save
      render('q4.html.erb')
    end
    if @survey_resposne.q4 == "no"
      render('ineligible.html.erb')
    end
  end
  def q6
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.q5 = params[:q5]
    @survey_resposne.save
    if @survey_resposne.q5 == nil or @survey_resposne.q5 == "error"
      @survey_resposne.q5 = "error"
      @survey_resposne.save
      render('q5.html.erb')
    end
    if @survey_resposne.q5 == "no"
      render('ineligible.html.erb')
    end
  end
  def q7
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.q6 = params[:q6]
    @survey_resposne.save
    if @survey_resposne.q6 == nil or @survey_resposne.q6 == "error"
      @survey_resposne.q6 = "error"
      @survey_resposne.save
      render('q6.html.erb')
    end
    if @survey_resposne.q6 == "no"
      render('ineligible.html.erb')
    end
  end
  def q8
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.q7 = params[:q7]
    @survey_resposne.save
    if @survey_resposne.q7 == nil or @survey_resposne.q7 == "error"
      @survey_resposne.q7 = "error"
      @survey_resposne.save
      render('q7.html.erb')
    end
    if @survey_resposne.q7 == "no"
      render('ineligible.html.erb')
    end
  end
  def q9
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.q8 = params[:q8]
    @survey_resposne.save
    if @survey_resposne.q8 == nil or @survey_resposne.q8 == "error"
      @survey_resposne.q8 = "error"
      @survey_resposne.save
      render('q8.html.erb')
    end
  end
  def q10
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.q9 = params[:q9]
    @survey_resposne.save
    if @survey_resposne.q9 == nil or @survey_resposne.q9 == "error"
      @survey_resposne.q9 = "error"
      @survey_resposne.save
      render('q9.html.erb')
    end
    if @survey_resposne.q9 == "yes"
      render('ineligible.html.erb')
    end
  end
  def q11
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.q10 = params[:q10]
    @survey_resposne.save
    if @survey_resposne.q10 == nil or @survey_resposne.q10 == "error"
      @survey_resposne.q10 = "error"
      @survey_resposne.save
      render('q10.html.erb')
    end
    if @survey_resposne.q10 == "no"
      render('q12.html.erb')
    end
  end
  def q12
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.q11 = params[:q11]
    @survey_resposne.save
    if @survey_resposne.q11 == nil or @survey_resposne.q11 == "error"
      @survey_resposne.q11 = "error"
      @survey_resposne.save
      render('q11.html.erb')
    end
    if @survey_resposne.q11 == "yes"
      render('ineligible.html.erb')
    end
  end
  def A1a
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    score = Integer(params[:q12_1])+Integer(params[:q12_2])+Integer(params[:q12_3])+Integer(params[:q12_4])+Integer(params[:q12_5])+Integer(params[:q12_6])+Integer(params[:q12_7])+Integer(params[:q12_8])+Integer(params[:q12_9])+Integer(params[:q12_10])+Integer(params[:q12_10])+Integer(params[:q12_11])+Integer(params[:q12_12])+Integer(params[:q12_13])+Integer(params[:q12_14])+Integer(params[:q12_15])+Integer(params[:q12_16])+Integer(params[:q12_17])+Integer(params[:q12_18])+Integer(params[:q12_19])+Integer(params[:q12_20])+Integer(params[:q12_21])
    puts score
    @survey_resposne.q12 = score
    @survey_resposne.save
    if score < 8 || score > 25
      render('ineligible.html.erb')
    end
  end
  def A3g
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.A1a = params[:A1a]
    @survey_resposne.A2b = params[:A2b]
    @survey_resposne.save
    if @survey_resposne.A1a == nil or @survey_resposne.A1a == "error" || @survey_resposne.A2b == nil or @survey_resposne.A2b == "error"
      @survey_resposne.A1a = "error"
      @survey_resposne.A2b = "error"
      @survey_resposne.save
      render('A1a.html.erb')
    end
    if @survey_resposne.A1a == "no" && @survey_resposne.A2b == "no"
      render('C1a.html.erb')
    end
  end
  def C1a
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.A3g = params[:A3g]
    @survey_resposne.save
    if @survey_resposne.A3g == nil or @survey_resposne.A3g == "error"
      @survey_resposne.A3g = "error"
      @survey_resposne.save
      render('A3g.html.erb')
    end
    if @survey_resposne.A3g == "yes"
      render('ineligible.html.erb')
    end
  end
  def C3
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.C1a = params[:C1a]
    @survey_resposne.C2a = params[:C2a]
    @survey_resposne.save
    if @survey_resposne.C1a == nil or @survey_resposne.C1a == "error" || @survey_resposne.C2a == nil or @survey_resposne.C2a == "error"
      @survey_resposne.C1a = "error"
      @survey_resposne.C2a = "error"
      @survey_resposne.save
      render('C1a.html.erb')
    end
    if @survey_resposne.C1a == "no" && @survey_resposne.C2a == "no"
      render('I1.html.erb')
    end
  end
  def C4
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.C3a = params[:C3a]
    @survey_resposne.C3b = params[:C3b]
    @survey_resposne.C3c = params[:C3c]
    @survey_resposne.C3d = params[:C3d]
    @survey_resposne.C3e = params[:C3e]
    @survey_resposne.C3f = params[:C3f]
    @survey_resposne.C3g = params[:C3g]
    sum = 0
    if @survey_resposne.C3a == "yes"
      sum = sum + 1
    end
    if @survey_resposne.C3b == "yes"
      sum = sum + 1
    end
    if @survey_resposne.C3c == "yes"
      sum = sum + 1
    end
    if @survey_resposne.C3d == "yes"
      sum = sum + 1
    end
    if @survey_resposne.C3e == "yes"
      sum = sum + 1
    end
    if @survey_resposne.C3f == "yes"
      sum = sum + 1
    end
    if @survey_resposne.C3g == "yes"
      sum = sum + 1
    end
    @survey_resposne.qe1 = "no"
    if sum >= 4 && @survey_resposne.C3f == "yes" && @survey_resposne.C1a == "no"
      @survey_resposne.qe1 = "yes"
    end
    if sum >= 3 && @survey_resposne.C3f == "yes" && @survey_resposne.C1a == "yes"
      @survey_resposne.qe1 = "yes"
    end
    @survey_resposne.save
    if @survey_resposne.C3a == nil or @survey_resposne.C3a == "error" || @survey_resposne.C3b == nil or @survey_resposne.C3b == "error" || @survey_resposne.C3c == nil or @survey_resposne.C3c == "error" || @survey_resposne.C3d == nil or @survey_resposne.C3d == "error" || @survey_resposne.C3e == nil or @survey_resposne.C3e == "error" || @survey_resposne.C3f == nil or @survey_resposne.C3f == "error" || @survey_resposne.C3g == nil or @survey_resposne.C3g == "error"
      @survey_resposne.C3a = "error"
      @survey_resposne.C3b = "error"
      @survey_resposne.C3c = "error"
      @survey_resposne.C3d = "error"
      @survey_resposne.C3e = "error"
      @survey_resposne.C3f = "error"
      @survey_resposne.C3g = "error"
      @survey_resposne.save
      render('C3.html.erb')
    end
    if @survey_resposne.C1a == "no" && @survey_resposne.C2a == "no"
      render('I1.html.erb')
    end
  end
  def C5
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.C4 = params[:C4]
    @survey_resposne.save
    if @survey_resposne.C4 == nil or @survey_resposne.C4 == "error"
      @survey_resposne.C4 = "error"
      @survey_resposne.save
      render('C4.html.erb')
    end
  end
  def C6
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.C5 = params[:C5]
    @survey_resposne.save
    if @survey_resposne.C5 == nil or @survey_resposne.C5 == "error"
      @survey_resposne.C5 = "error"
      @survey_resposne.save
      render('C5.html.erb')
    end
  end
  def C7
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.C6 = params[:C6]
    @survey_resposne.save
    if @survey_resposne.C6 == nil or @survey_resposne.C6 == "error"
      @survey_resposne.C6 = "error"
      @survey_resposne.save
      render('C6.html.erb')
    end
  end
  def I1
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.C7 = params[:C7]
    @survey_resposne.save
    if @survey_resposne.C7 == nil or @survey_resposne.C7 == "error"
      @survey_resposne.C7 = "error"
      @survey_resposne.save
      render('C7.html.erb')
    end
    if @survey_resposne.qe1 == "yes" && @survey_resposne.C7 == "yes" && @survey_resposne.C4 == "yes"
      render('ineligible.html.erb')
    end
    if @survey_resposne.qe1 == "yes" && @survey_resposne.C7 == "yes" && @survey_resposne.C5 == "yes"
      render('ineligible.html.erb')
    end
    if @survey_resposne.qe1 == "yes" && @survey_resposne.C7 == "yes" && @survey_resposne.C6 == "yes"
      render('ineligible.html.erb')
    end
  end
  def I2
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.I1 = params[:I1]
    @survey_resposne.save
    if @survey_resposne.I1 == nil or @survey_resposne.I1 == "error"
      @survey_resposne.I1 = "error"
      @survey_resposne.save
      render('I1.html.erb')
    end
    if @survey_resposne.I1 == "no"
      render('J1.html.erb')
    end
  end
  def J1
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.I2a = params[:I2a]
    @survey_resposne.I2b = params[:I2b]
    @survey_resposne.I2c = params[:I2c]
    @survey_resposne.I2d = params[:I2d]
    @survey_resposne.I2e = params[:I2e]
    @survey_resposne.I2f = params[:I2f]
    @survey_resposne.I2g = params[:I2g]
    @survey_resposne.I2h = params[:I2h]
    @survey_resposne.I2i = params[:I2i]
    @survey_resposne.I2j = params[:I2j]
    @survey_resposne.I2k1 = params[:I2k1]
    @survey_resposne.I2k2 = params[:I2k2]
    @survey_resposne.save
    if @survey_resposne.I2a == nil or @survey_resposne.I2a == "error" || @survey_resposne.I2b == nil or @survey_resposne.I2b == "error" || @survey_resposne.I2c == nil or @survey_resposne.I2c == "error" || @survey_resposne.I2d == nil or @survey_resposne.I2d == "error" || @survey_resposne.I2e == nil or @survey_resposne.I2e == "error" || @survey_resposne.I2f == nil or @survey_resposne.I2f == "error" || @survey_resposne.I2g == nil or @survey_resposne.I2g == "error" || @survey_resposne.I2h == nil or @survey_resposne.I2h == "error" || @survey_resposne.I2i == nil or @survey_resposne.I2i == "error" || @survey_resposne.I2j == nil or @survey_resposne.I2j == "error" || @survey_resposne.I2k1 == nil or @survey_resposne.I2k1 == "error"  || @survey_resposne.I2k2 == nil or @survey_resposne.I2k2 == "error"
      @survey_resposne.I2a = "error"
      @survey_resposne.I2b = "error"
      @survey_resposne.I2c = "error"
      @survey_resposne.I2d = "error"
      @survey_resposne.I2e = "error"
      @survey_resposne.I2f = "error"
      @survey_resposne.I2g = "error"
      @survey_resposne.I2h ="error"
      @survey_resposne.I2i ="error"
      @survey_resposne.I2j ="error"
      @survey_resposne.I2k1 = "error"
      @survey_resposne.I2k2 = "error"
      @survey_resposne.save
      render('I2.html.erb')
    end
    if @survey_resposne.I2k1 == "yes" ||  @survey_resposne.I2k2 == "yes"
      @survey_resposne.qe2 = "yes"
      @survey_resposne.save
    end
    sum = 0
    if @survey_resposne.I2a == "yes"
      sum = sum + 1
    end
    if @survey_resposne.I2b == "yes"
      sum = sum + 1
    end
    if @survey_resposne.I2c == "yes"
      sum = sum + 1
    end
    if @survey_resposne.I2d == "yes"
      sum = sum + 1
    end
    if @survey_resposne.I2e == "yes"
      sum = sum + 1
    end
    if @survey_resposne.I2f == "yes"
      sum = sum + 1
    end
    if @survey_resposne.I2g == "yes"
      sum = sum + 1
    end
    if @survey_resposne.I2h == "yes"
      sum = sum + 1
    end
    if @survey_resposne.I2j == "yes"
      sum = sum + 1
    end
    if sum >= 2 && @survey_resposne.qe2 = "yes"
      render('ineligible.html.erb')
    end
  end
  def J2
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.J1aLtext = params[:J1aLtext]
    @survey_resposne.save
    if @survey_resposne.J1aLtext == nil or @survey_resposne.J1aLtext == "error"
      @survey_resposne.J1aLtext = "error"
      @survey_resposne.save
      render('J1.html.erb')
    end
    if @survey_resposne.J1aLtext == "no"
      render('K1a.html.erb')
    end
  end
def K1a
  @survey_resposne = SurveyResposne.find(params[:survey_id])
  @survey_resposne.J2a = params[:J2a]
  @survey_resposne.J2b = params[:J2b]
  @survey_resposne.J2c = params[:J2c]
  @survey_resposne.J2d = params[:J2d]
  @survey_resposne.J2e = params[:J2e]
  @survey_resposne.J2f = params[:J2f]
  @survey_resposne.J2g = params[:J2g]
  @survey_resposne.J2h = params[:J2h]
  @survey_resposne.J2i = params[:J2i]
  @survey_resposne.J2j = params[:J2j]
  @survey_resposne.J2k1 = params[:J2k1]
  @survey_resposne.J2k2 = params[:J2k2]
  @survey_resposne.save
  if @survey_resposne.J2a == nil or @survey_resposne.J2a == "error" || @survey_resposne.J2b == nil or @survey_resposne.J2b == "error" || @survey_resposne.J2c == nil or @survey_resposne.J2c == "error" || @survey_resposne.J2d == nil or @survey_resposne.J2d == "error" || @survey_resposne.J2e == nil or @survey_resposne.J2e == "error" || @survey_resposne.J2f == nil or @survey_resposne.J2f == "error" || @survey_resposne.J2g == nil or @survey_resposne.J2g == "error" || @survey_resposne.J2h == nil or @survey_resposne.J2h == "error" || @survey_resposne.J2i == nil or @survey_resposne.J2i == "error" || @survey_resposne.J2j == nil or @survey_resposne.J2j == "error" || @survey_resposne.J2k1 == nil or @survey_resposne.J2k1 == "error"  || @survey_resposne.J2k2 == nil or @survey_resposne.J2k2 == "error"
    @survey_resposne.J2a = "error"
    @survey_resposne.J2b = "error"
    @survey_resposne.J2c = "error"
    @survey_resposne.J2d = "error"
    @survey_resposne.J2e = "error"
    @survey_resposne.J2f = "error"
    @survey_resposne.J2g = "error"
    @survey_resposne.J2h ="error"
    @survey_resposne.J2i ="error"
    @survey_resposne.J2j ="error"
    @survey_resposne.J2k1 = "error"
    @survey_resposne.J2k2 = "error"
    @survey_resposne.save
    render('J2.html.erb')
  end
  if @survey_resposne.J2k1 == "yes" ||  @survey_resposne.J2k2 == "yes"
    @survey_resposne.qe3 = "yes"
    @survey_resposne.save
  end
  sum = 0
  if @survey_resposne.J2a == "yes"
    sum = sum + 1
  end
  if @survey_resposne.J2b == "yes"
    sum = sum + 1
  end
  if @survey_resposne.J2c == "yes"
    sum = sum + 1
  end
  if @survey_resposne.J2d == "yes"
    sum = sum + 1
  end
  if @survey_resposne.J2e == "yes"
    sum = sum + 1
  end
  if @survey_resposne.J2f == "yes"
    sum = sum + 1
  end
  if @survey_resposne.J2g == "yes"
    sum = sum + 1
  end
  if @survey_resposne.J2h == "yes"
    sum = sum + 1
  end
  if @survey_resposne.J2j == "yes"
    sum = sum + 1
  end
  if sum >= 2 && @survey_resposne.qe3 = "yes"
    render('ineligible.html.erb')
  end
end
  def K2a
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.K1a = params[:K1a]
    @survey_resposne.save
    if @survey_resposne.K1a == nil or @survey_resposne.K1a == "error"
      @survey_resposne.K1a = "error"
      @survey_resposne.save
      render('K1a.html.erb')
    end
  end
  def K3a
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.K2a = params[:K2a]
    @survey_resposne.save
    if @survey_resposne.K2a == nil or @survey_resposne.K2a == "error"
      @survey_resposne.K2a = "error"
      @survey_resposne.save
      render('K2a.html.erb')
    end
  end
  def K4a
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.K3a = params[:K3a]
    @survey_resposne.save
    if @survey_resposne.K3a == nil or @survey_resposne.K3a == "error"
      @survey_resposne.K3a = "error"
      @survey_resposne.save
      render('K3a.html.erb')
    end
  end
  def K5a
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.K4a = params[:K4a]
    @survey_resposne.save
    if @survey_resposne.K4a == nil or @survey_resposne.K4a == "error"
      @survey_resposne.K4a = "error"
      @survey_resposne.save
      render('K4a.html.erb')
    end
  end
  def K6a
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.K5a = params[:K5a]
    @survey_resposne.save
    if @survey_resposne.K5a == nil or @survey_resposne.K5a == "error"
      @survey_resposne.K5a = "error"
      @survey_resposne.save
      render('K5a.html.erb')
    end
  end
  def K7a
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.K6a = params[:K6a]
    @survey_resposne.save
    if @survey_resposne.K6a == nil or @survey_resposne.K6a == "error"
      @survey_resposne.K6a = "error"
      @survey_resposne.save
      render('K6a.html.erb')
    end
  end
  def L1a
    @survey_resposne = SurveyResposne.find(params[:survey_id])
    @survey_resposne.K7a = params[:K7a]
    @survey_resposne.save
    if @survey_resposne.K7a == nil or @survey_resposne.K7a == "error"
      @survey_resposne.K7a = "error"
      @survey_resposne.save
      render('K7a.html.erb')
    end
    sum = 0
    if @survey_resposne.K1a == "yes"
      sum = sum + 1
    end
    if @survey_resposne.K2a == "yes"
      sum = sum + 1
    end
    if @survey_resposne.K3a == "yes"
      sum = sum + 1
    end
    if @survey_resposne.K4a == "yes"
      sum = sum + 1
    end
    if @survey_resposne.K5a == "yes"
      sum = sum + 1
    end
    if @survey_resposne.K6a == "yes"
      sum = sum + 1
    end
    if @survey_resposne.K7a == "yes"
      sum = sum + 1
    end
    if sum >= 2
    render('ineligible.html.erb')
    end
  end




  def ineligible
  end

  def create
    @survey_resposne = SurveyResposne.new
    @survey_resposne.q1 = params[:q1]
    @survey_resposne.q2 = params[:q2]
    @survey_resposne.q3 = params[:q3]
    @survey_resposne.q4 = params[:q4]
    @survey_resposne.q5 = params[:q5]
    @survey_resposne.q6 = params[:q6]
    @survey_resposne.q7 = params[:q7]
    @survey_resposne.q8 = params[:q8]
    @survey_resposne.q9 = params[:q9]
    @survey_resposne.q10 = params[:q10]
    @survey_resposne.q11 = params[:q11]
    @survey_resposne.q12 = params[:q12]
    @survey_resposne.A1a = params[:A1a]
    @survey_resposne.A2b = params[:A2b]
    @survey_resposne.A3g = params[:A3g]
    @survey_resposne.C1a = params[:C1a]
    @survey_resposne.C2a = params[:C2a]
    @survey_resposne.C3a = params[:C3a]
    @survey_resposne.C3b = params[:C3b]
    @survey_resposne.C3c = params[:C3c]
    @survey_resposne.C3d = params[:C3d]
    @survey_resposne.C3e = params[:C3e]
    @survey_resposne.C3f = params[:C3f]
    @survey_resposne.C3g = params[:C3g]
    @survey_resposne.C4 = params[:C4]
    @survey_resposne.K1a = params[:C5]
    @survey_resposne.C6 = params[:C6]
    @survey_resposne.C7 = params[:C7]
    @survey_resposne.I1 = params[:I1]
    @survey_resposne.I2a = params[:I2a]
    @survey_resposne.I2b = params[:I2b]
    @survey_resposne.I2c = params[:I2c]
    @survey_resposne.I2d = params[:I2d]
    @survey_resposne.I2e = params[:I2e]
    @survey_resposne.I2f = params[:I2f]
    @survey_resposne.I2g = params[:I2g]
    @survey_resposne.I2h = params[:I2h]
    @survey_resposne.I2i = params[:I2i]
    @survey_resposne.I2j = params[:I2j]
    @survey_resposne.I2k1 = params[:I2k1]
    @survey_resposne.I2k2 = params[:I2k2]
    @survey_resposne.J1aLtext = params[:J1aLtext]
    @survey_resposne.J2a = params[:J2a]
    @survey_resposne.J2b = params[:J2b]
    @survey_resposne.J2c = params[:J2c]
    @survey_resposne.J2d = params[:J2d]
    @survey_resposne.J2e = params[:J2e]
    @survey_resposne.J2f = params[:J2f]
    @survey_resposne.J2g = params[:J2g]
    @survey_resposne.J2h = params[:J2h]
    @survey_resposne.J2i = params[:J2i]
    @survey_resposne.J2j = params[:J2j]
    @survey_resposne.J2k1 = params[:J2k1]
    @survey_resposne.J2k2 = params[:J2k2]
    @survey_resposne.K1a = params[:K1a]
    @survey_resposne.K2a = params[:K2a]
    @survey_resposne.K3a = params[:K3a]
    @survey_resposne.K4a = params[:K4a]
    @survey_resposne.K5a = params[:K5a]
    @survey_resposne.K6a = params[:K6a]
    @survey_resposne.K7a = params[:K7a]
    @survey_resposne.L1a = params[:L1a]
    @survey_resposne.L1b = params[:L1b]
    @survey_resposne.L2 = params[:L2]
    @survey_resposne.L3 = params[:L3]
    @survey_resposne.L4a = params[:L4a]
    @survey_resposne.L4b = params[:L4b]
    @survey_resposne.L4c = params[:L4c]
    @survey_resposne.M1 = params[:M1]
    @survey_resposne.M2 = params[:M2]
    @survey_resposne.M3 = params[:M3]
    @survey_resposne.M3a = params[:M3a]
    @survey_resposne.M4 = params[:M4]
    @survey_resposne.M5 = params[:M5]
    @survey_resposne.qe1 = params[:qe1]
    @survey_resposne.qe2 = params[:qe2]
    @survey_resposne.qe3 = params[:qe3]
    @survey_resposne.qe4 = params[:qe4]
    @survey_resposne.qe5 = params[:qe5]
    @survey_resposne.qe6 = params[:qe6]
    @survey_resposne.qe7 = params[:qe7]
    @survey_resposne.qe8 = params[:qe8]
    @survey_resposne.qe9 = params[:qe9]
    @survey_resposne.qe10 = params[:qe10]

    if @survey_resposne.save
      redirect_to "/survey_resposnes", :notice => "Survey resposne created successfully."
    else
      render 'new'
    end
  end

  def edit
    @survey_resposne = SurveyResposne.find(params[:id])
  end

  def update
    @survey_resposne = SurveyResposne.find(params[:id])

    @survey_resposne.q1 = params[:q1]
    @survey_resposne.q2 = params[:q2]
    @survey_resposne.q3 = params[:q3]
    @survey_resposne.q4 = params[:q4]
    @survey_resposne.q5 = params[:q5]
    @survey_resposne.q6 = params[:q6]
    @survey_resposne.q7 = params[:q7]
    @survey_resposne.q8 = params[:q8]
    @survey_resposne.q9 = params[:q9]
    @survey_resposne.q10 = params[:q10]
    @survey_resposne.q11 = params[:q11]
    @survey_resposne.q12 = params[:q12]
    @survey_resposne.A1a = params[:A1a]
    @survey_resposne.A2b = params[:A2b]
    @survey_resposne.A3g = params[:A3g]
    @survey_resposne.C1a = params[:C1a]
    @survey_resposne.C2a = params[:C2a]
    @survey_resposne.C3a = params[:C3a]
    @survey_resposne.C3b = params[:C3b]
    @survey_resposne.C3c = params[:C3c]
    @survey_resposne.C3d = params[:C3d]
    @survey_resposne.C3e = params[:C3e]
    @survey_resposne.C3f = params[:C3f]
    @survey_resposne.C3g = params[:C3g]
    @survey_resposne.C4 = params[:C4]
    @survey_resposne.C5 = params[:C5]
    @survey_resposne.C6 = params[:C6]
    @survey_resposne.C7 = params[:C7]
    @survey_resposne.I1 = params[:I1]
    @survey_resposne.I2a = params[:I2a]
    @survey_resposne.I2b = params[:I2b]
    @survey_resposne.I2c = params[:I2c]
    @survey_resposne.I2d = params[:I2d]
    @survey_resposne.I2e = params[:I2e]
    @survey_resposne.I2f = params[:I2f]
    @survey_resposne.I2g = params[:I2g]
    @survey_resposne.I2h = params[:I2h]
    @survey_resposne.I2i = params[:I2i]
    @survey_resposne.I2j = params[:I2j]
    @survey_resposne.I2k1 = params[:I2k1]
    @survey_resposne.I2k2 = params[:I2k2]
    @survey_resposne.J1aLtext = params[:J1aLtext]
    @survey_resposne.J2a = params[:J2a]
    @survey_resposne.J2b = params[:J2b]
    @survey_resposne.J2c = params[:J2c]
    @survey_resposne.J2d = params[:J2d]
    @survey_resposne.J2e = params[:J2e]
    @survey_resposne.J2f = params[:J2f]
    @survey_resposne.J2g = params[:J2g]
    @survey_resposne.J2h = params[:J2h]
    @survey_resposne.J2i = params[:J2i]
    @survey_resposne.J2j = params[:J2j]
    @survey_resposne.J2k1 = params[:J2k1]
    @survey_resposne.J2k2 = params[:J2k2]
    @survey_resposne.K1a = params[:K1a]
    @survey_resposne.K2a = params[:K2a]
    @survey_resposne.K3a = params[:K3a]
    @survey_resposne.K4a = params[:K4a]
    @survey_resposne.K5a = params[:K5a]
    @survey_resposne.K6a = params[:K6a]
    @survey_resposne.K7a = params[:K7a]
    @survey_resposne.L1a = params[:L1a]
    @survey_resposne.L1b = params[:L1b]
    @survey_resposne.L2 = params[:L2]
    @survey_resposne.L3 = params[:L3]
    @survey_resposne.L4a = params[:L4a]
    @survey_resposne.L4b = params[:L4b]
    @survey_resposne.L4c = params[:L4c]
    @survey_resposne.M1 = params[:M1]
    @survey_resposne.M2 = params[:M2]
    @survey_resposne.M3 = params[:M3]
    @survey_resposne.M3a = params[:M3a]
    @survey_resposne.M4 = params[:M4]
    @survey_resposne.M5 = params[:M5]
    @survey_resposne.qe1 = params[:qe1]
    @survey_resposne.qe2 = params[:qe2]
    @survey_resposne.qe3 = params[:qe3]
    @survey_resposne.qe4 = params[:qe4]
    @survey_resposne.qe5 = params[:qe5]
    @survey_resposne.qe6 = params[:qe6]
    @survey_resposne.qe7 = params[:qe7]
    @survey_resposne.qe8 = params[:qe8]
    @survey_resposne.qe9 = params[:qe9]
    @survey_resposne.qe10 = params[:qe10]

    if @survey_resposne.save
      redirect_to "/survey_resposnes", :notice => "Survey resposne updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @survey_resposne = SurveyResposne.find(params[:id])

    @survey_resposne.destroy

    redirect_to "/survey_resposnes", :notice => "Survey resposne deleted."
  end
end
