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
    # Resque.enqueue(Gender, params[:code])
    oauth_redirect_url = 'http://electric-flower-607.heroku.com/redirect'
    oauth_code = Koala::Facebook::OAuth.new(oauth_redirect_url).get_access_token(params[:code]) if params[:code]

    @graph2 = Koala::Facebook::GraphAPI.new(oauth_code)
    @friends = @graph2.get_connections('me', 'friends')

    # redirect_to session[:access_token] ? success_path : failure_path

    redirect_to '/'
  end
end
