#
# Cookbook Name:: oh-my-zsh
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "git"
include_recipe "zsh"

script "oh-my-zsh install from github.com" do
  interpreter "bash"
  code <<-EOH
  /usr/bin/env git clone https://github.com/robbyrussell/oh-my-zsh.git /root/.oh-my-zsh
  mv /root/.oh-my-zsh/templates/zshrc.zsh-template /root/.zshrc
  chsh -s /bin/zsh
  EOH
  not_if { File.directory? "/root/.oh-my-zsh" }
end

