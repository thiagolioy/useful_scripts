def remove_fastlane_tools
  ["fastlane","snapshot","frameit",
    "produce","sigh","pem","cert","deliver","fastlane_core"].map { |d| system("sudo gem uninstall #{d}") }
end

def remove_fastlane_dep_tools
  ["phantomjs",'rest-client','slack-notifier','nomad-cli'].map { |d| system("sudo gem uninstall #{d}") }
end

puts("Removing fastlane tools..")
remove_fastlane_tools
remove_fastlane_dep_tools
