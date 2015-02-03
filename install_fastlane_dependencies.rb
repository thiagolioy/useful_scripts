def update_brew
  system("brew update")
end

def install_deps
  ["phantomjs",'slack-notifier'].map { |d| system("sudo gem install #{d} --verbose") }
end

def update_xcode_cmd_tools
  system("xcode-select --install")
end

def install_fastlane_tools
  ["fastlane","snapshot","frameit",
    "produce","sigh","pem","deliver"].map { |d| system("sudo gem install #{d} --verbose") }
end

puts("Updating Homebrew ..")
update_brew
puts("Installing Dependencies ..")
install_deps
puts("Updating xcode cmd line tools ..")
update_xcode_cmd_tools
puts("Installing Fastlane tools ..")
install_fastlane_tools
