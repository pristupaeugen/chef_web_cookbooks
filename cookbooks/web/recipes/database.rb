#
# Cookbook Name:: web
# Recipe:: database
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

mysql_service 'default' do
  port '3306'
  version '5.5'
  action [:create, :start]
end

mysql_client 'default' do
  action :create
end