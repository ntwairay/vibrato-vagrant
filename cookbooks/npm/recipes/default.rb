# install npm
execute "install npm" do
  command "apt-get -y install npm"
  not_if "which npm | grep -c '/usr/local/bin/npm'"
end
