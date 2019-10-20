json.id location.id 
json.name location.name 
json.current do
  json.temp location.recordings.last.temp 
  json.status location.recordings.last.status
  json.date location.recordings.last.created_at.strftime("%Y-%m-%d")
  json.time location.recordings.last.created_at.strftime("%H:%M")
end

# json.id @location.id 
# json.name @location.name 
# json.current do
#   json.temp @location.recordings.last.temp 
#   json.status @location.recordings.last.status
#   json.date @location.recordings.last.created_at.strftime("%Y-%m-%d")
#   json.time @location.recordings.last.created_at.strftime("%H:%M")
# end