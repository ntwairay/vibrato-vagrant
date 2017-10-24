# install git
execute "install git" do
  command "apt-get -y install git"
  only_if "which git | grep -c '/usr/local/bin/git'"
end

# download the repo
execute "download git repo" do
  command "git clone https://github.com/ntwairay/vibrato_pallet_tracker_web_app.git /home/vibrato_web_app"
  not_if { File.exist?("/home/vibrato_web_app") }
end
