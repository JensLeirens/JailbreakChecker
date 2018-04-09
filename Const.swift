struct Const {
    
    static let files = ["/Applications/Cydia.app",
                        "/Applications/blackra1n.app",
                        "/Applications/FakeCarrier.app",
                        "/Applications/Icy.app",
                        "/Applications/IntelliScreen.app",
                        "/Applications/MxTube.app",
                        "/Applications/RockApp.app",
                        "/Applications/SBSettings.app",
                        "/Applications/WinterBoard.app",
                        "/Library/MobileSubstrate/MobileSubstrate.dylib",
                        "/Library/MobileSubstrate/DynamicLibraries/LiveClock.plist",
                        "/Library/MobileSubstrate/DynamicLibraries/Veency.plist",
                        "/private/var/mobile/Library/SBSettings/Themes",
                        "/private/var/stash",
                        "/private/var/lib/cydia",
                        "/private/var/lib/apt/",
                        "/System/Library/LaunchDaemons/com.ikey.bbot.plist",
                        "/System/Library/LaunchDaemons/com.saurik.Cydia.Startup.plist",
                        "/bin/bash",
                        "/usr/sbin/sshd",
                        "/etc/apt"]
    
    static let applications = [ // accesing other IOS applications is a sandbox violations
        "cydia://package/com.example.package"]
}
