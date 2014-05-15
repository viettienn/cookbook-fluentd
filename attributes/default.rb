default[:fluentd][:install_from_source] = true
default[:fluentd][:user] = 'fluentd'
default[:fluentd][:group] = 'fluentd'
default[:fluentd][:version] = '0.10.46'
default[:fluentd][:download_source_url] = "https://github.com/fluent/fluentd/archive/v#{node[:fluentd][:version]}.zip"
default[:fluentd][:install_dir] = '/usr/local/fluentd'