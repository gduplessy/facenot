ENV['REDISTOGO_URL'] ||= 'redis://gduplessy:030b81750720c317bfd1f23cad15e971@icefish.redistogo.com:9128/'

uri = URI.parse(ENV['REDISTOGO_URL'])
Resque.redis = Redis.new(host: uri.host, port: uri.port, password: uri.password)
Dir["#{Rails.root}/app/jobs/*.rb"].each { |file| require file }
