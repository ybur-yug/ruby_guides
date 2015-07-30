class StaticPagesController < ApplicationController
  def home
    @chapters = Chapter.all
  end
end
