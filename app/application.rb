
class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now
    if time <= (2018,8,17,11,59)
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
