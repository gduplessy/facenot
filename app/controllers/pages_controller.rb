class PagesController < ApplicationController

  def index
    @graph = Koala::Facebook::GraphAPI.new('194345430580007|ad910226438f313f411b99fe-549563502|yNzMstNxGGnYNAHhyoSRBvCiBGs')      

    @user  = Picture.limit(1).where("gender = 'female'").order('random()')
    @user.each do |id|
      @friend = id.uid
    end

    @friendsrandom = Picture.random
  end
  
  def redirect
    Resque.enqueue(Gender, params[:code])
  end
  
end
