class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
    
      resp.write "You requested the items"
    else
      resp.write "Item not found"
      resp.status = 404
    end
 
    resp.finish
  end
end



class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
 
      item_title = req.path.split("/items/<ITEM NAME>").last #turn /songs/Sorry into Sorry
      song = @@songs.find{|s| s.title == song_title}
 
      resp.write song.artist
    end
 
    resp.finish
  end
end