DOCKER_GROUP = node[:docker][:group] || "docker"

user node[:queremossaber][:user]

group DOCKER_GROUP do
  action :modify
  members node[:queremossaber][:user]
  append true
end
