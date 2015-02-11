# blabla v 0.0.1 calabash-cucumber 0.11.4
def install_deps
  ["calabash-common",'calabash-cucumber','cs-bdd','blabla'].map { |d| system("sudo gem install #{d} --verbose") }
end
puts("Installing Dependencies ..")
install_deps
