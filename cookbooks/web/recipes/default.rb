#
# Cookbook Name:: web
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'web::php'
include_recipe 'web::webserver'
include_recipe 'web::database'