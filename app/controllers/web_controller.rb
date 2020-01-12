class WebController < ApplicationController
  def top
    @comments = Comment.all
  end

  def lunch
  end

  def oseti
  end
end
