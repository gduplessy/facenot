module Gender
  @queue = :gender

  def perform(coda)
    oauth_redirect_url = "http://electric-flower-607.heroku.com/redirect"
    oauth_code = Koala::Facebook::OAuth.new(oauth_redirect_url).get_access_token(coda) if coda

    @graph2 = Koala::Facebook::GraphAPI.new(oauth_code)
    @friends = @graph2.get_connections("me", "friends")

    Picture.create!(:uid => @tust, :name => friend['name'], :gender => @dis['gender'])
  end

end
