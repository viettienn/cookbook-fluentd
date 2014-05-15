#
# Cookbook Name:: fluentd
# Recipe:: install_from_source
#

version = node[:fluentd][:version]

# Create user and group
group node[:fluentd][:group] do
  action :create
end

user node[:fluentd][:user] do
  gid node[:fluentd][:group]
end

# Download source
download_to_path = ::File.join Chef::Config[:file_cache_path], "fluentd-source-#{version}.zip"
remote_file download_to_path do
  mode '0644'
  source node[:fluentd][:download_source_url]
  action :create
  not_if "test -f #{download_to_path}"
end

# Extract downloaded source file and build
execute 'extract downloaded file' do
  user node[:fluentd][:user]
  group node[:fluentd][:user]
  creates "#{node[:fluentd][:install_dir]}/#fluentd-{version}"
  cwd node[:fluentd][:install_dir]
  command "tar -zxvf #{download_to_path}"
end

execute 'build and install gem' do
  user node[:fluentd][:user]
  group node[:fluentd][:user]
  cwd "#{node[:fluentd][:install_dir]}/#fluentd-{version}"
  command "rake build && gem install pkg/fluentd-#{version}.gem"
end