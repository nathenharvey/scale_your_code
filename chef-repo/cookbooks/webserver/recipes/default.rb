#
# Cookbook Name:: webserver
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe "apt::default"

package "apache2" do
  action :install
end

template "/var/www/index.html" do
  source "index.html.erb"
  mode "0644"
end