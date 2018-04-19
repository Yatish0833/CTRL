class ConsentController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def step_one
    @step = current_user.step_one
    render 'step_one.html.erb'
  end

  def step_two
    @step = current_user.step_two
    render 'step_two.html.erb'
  end

  def step_three
    @step = current_user.step_three
    render 'step_three.html.erb'
  end

  def step_four
    @step = current_user.step_four
    render 'step_four.html.erb'
  end

  def step_five
    @step = current_user.step_five
    render 'step_five.html.erb'
  end

  def confirm_answers;
  end

  def review_answers;
  end


end