class SayController < ApplicationController
  skip_before_filter :authorize
  
  def about
  end

end
