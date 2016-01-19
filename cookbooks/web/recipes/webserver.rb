#
# Cookbook Name:: web
# Recipe:: webserver
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Install Apache and start the service.

httpd_service 'default' do
  listen_ports ['80']
  action [:create, :start]
end

httpd_config 'default' do
  source 'webserver.conf.erb'
  notifies :restart, 'httpd_service[default]'
  action :create
end

# Install the mod_php5 Apache module.
httpd_module 'php5' do
  instance 'default'
end