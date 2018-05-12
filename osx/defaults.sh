# Airdrop on all interfaces
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Show the ~/Library folder
chflags nohidden ~/Library

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Disable the Ping sidebar in iTunes
defaults write com.apple.iTunes disablePingSidebar -bool true

# Disable all the other Ping stuff in iTunes
defaults write com.apple.iTunes disablePing -bool true

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Enable AirDrop over Ethernet and on unsupported Macs running Lion
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# Don't bounce applications when they have notifications
# ITS SO FREAKING DISTRACTING!
defaults write com.apple.dock no-bouncing -bool TRUE

# Kill affected applications
for app in Finder Dock Mail Safari iTunes iCal Address\ Book SystemUIServer; do killall "$app" > /dev/null 2>&1; done
echo "OSX Hacks Done. Note that some of these changes require a logout/restart to take effect."

# show full extension to avoid tricky.jpg.app
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Don't use natural scrolling, as I'm usually docked and using am ouse
# and it becomes super awkward
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Create projects folder
mkdir ~/projects

