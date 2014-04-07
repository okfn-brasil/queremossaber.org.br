node.default['docker']['image_cmd_timeout'] = 9999

docker_image 'queremossaber_data' do
  source 'https://raw.githubusercontent.com/okfn-brasil/queremossaber-docker/master/data/Dockerfile'
  rm true
  action :build_if_missing
end

docker_image 'vitorbaptista/queremossaber'

docker_container 'queremossaber_data'

docker_container 'vitorbaptista/queremossaber' do
  detach true
  port '80:80'
  volumes_from 'queremossaber_data'
end
