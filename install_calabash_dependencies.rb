def install_deps
  ["calabash-common",'calabash-cucumber','cs-bdd','blabla'].map { |d| system("sudo gem install #{d} --verbose") }
end
puts("Installing Dependencies ..")
install_deps
