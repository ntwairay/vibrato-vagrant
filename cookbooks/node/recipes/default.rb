# install node
execute "install nodejs" do
  command "apt-get -y install nodejs"
  not_if "which node | grep -c '/usr/local/bin/node'"
end

# update nodejs
execute "update nodejs" do
  command <<-EOH
          npm cache clean -f \
          && sudo npm install -g n \
          && sudo n stable
          EOH
end

# create symbolic link
execute "create symbolic link" do
  command "ln -s /usr/bin/nodejs /usr/bin/node"
  not_if "which node | grep -c '/usr/local/bin/node'"
end
