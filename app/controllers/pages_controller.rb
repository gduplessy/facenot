class PagesController < ApplicationController

  def index
    graph = Koala::Facebook::GraphAPI.new('194345430580007|ad910226438f313f411b99fe-549563502|yNzMstNxGGnYNAHhyoSRBvCiBGs')      
  end
  
  def redirect
    oauth_redirect_url = "http://electric-flower-607.heroku.com/redirect"
    @graph2 = Koala::Facebook::GraphAPI.new('194345430580007|ad910226438f313f411b99fe-549563502|yNzMstNxGGnYNAHhyoSRBvCiBGs')

    @friends = @graph2.get_connections("me", "friends")

    session[:access_token] = Koala::Facebook::OAuth.new(oauth_redirect_url).get_access_token(params[:code]) if params[:code]
    
    #redirect_to session[:access_token] ? success_path : failure_path

    redirect_to '/'
  end
  
end
