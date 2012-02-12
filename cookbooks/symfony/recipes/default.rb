#
# Cookbook Name:: symfony
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


template "/var/www/index.html" do
	source "index.html.erb"
	owner node[:apache][:user]
	group node[:apache][:group]
	mode 0644
end
