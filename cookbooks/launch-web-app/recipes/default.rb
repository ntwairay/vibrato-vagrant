# change the owner of npm directory to current user
execute "change npm directory permission" do
  command "sudo chown -R $(whoami) $(npm config get prefix)"
end

# install npm package
execute "install package" do
  command "npm isntall"
  cwd "/home/vibrato_web_app"
end

# launch app using docker-compose up
execute "launch web-app" do
  command "docker-compose up"
  cwd "/home/vibrato_web_app"
end
