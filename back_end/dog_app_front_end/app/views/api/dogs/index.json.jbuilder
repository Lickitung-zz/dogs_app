json.array! @dogs.each do | dog |
  json.name dog.name
  json.breed dog.breed
  json.size dog.size
end