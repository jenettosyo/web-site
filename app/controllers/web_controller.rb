class WebController < ApplicationController
  def top
    @comments = Comment.all.order("created_at DESC")
  end

  def lunchbox
  end

  def oseti
  end

  def lunch
  end

  def dinner
  end
end
