#
# Cookbook Name:: kt-tpo
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
src_rpm = "transport33_13.win.exe"
src_filename = "transport33_13.win.exe"
src_filepath = "#{Chef::Config['file_cache_path']}/#{src_filename}"

remote_file src_filepath do
  source "http://ktwiki.kewill.com/files/#{src_filename}"
  action :create_if_missing
end

# create a tpo admin user

# update the box
execute "yum-update" do
  command "yum update -y"
  action :run
end
