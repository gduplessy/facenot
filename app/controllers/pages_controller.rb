class PagesController < ApplicationController

  def index
    graph = Koala::Facebook::GraphAPI.new('194345430580007|ad910226438f313f411b99fe-549563502|yNzMstNxGGnYNAHhyoSRBvCiBGs')
    @profile = graph.get_object("me")
    @test = graph.get_object("503174896")
    @friends = graph.get_connections("me", "friends")
    @gen
  end
  
  def redirect
    session[:access_token] = Koala::Facebook::OAuth.new(oauth_redirect_url).get_access_token(params[:code]) if params[:code]
    
    redirect_to session[:access_token] ? success_path : failure_path
  end
  
end
