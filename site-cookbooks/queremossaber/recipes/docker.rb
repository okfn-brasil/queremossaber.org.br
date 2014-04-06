docker_image 'queremossaber_data' do
  source 'https://raw.githubusercontent.com/okfn-brasil/queremossaber-docker/master/data/Dockerfile'
  tag 'queremossaber_data'
  action :build_if_missing
end
