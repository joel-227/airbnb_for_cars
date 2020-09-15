class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  #comment by mark
  def home
  end
end
