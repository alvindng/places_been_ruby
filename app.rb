require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/places")

get("/") do
  @locations = Places.all()
  erb(:index)
end

post("/locations") do
  description = params.fetch("description")
  location = Places.new(description)
  @tempLocation = location
  location.add()
  erb(:success)
end
