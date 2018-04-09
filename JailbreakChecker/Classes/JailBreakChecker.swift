import Foundation
import UIKit

class JailbreakChecker {
    
    public static func jailbreakCheck() -> [String : Bool] {
        var reasons : [String : Bool] = [:]
        
        if TARGET_OS_SIMULATOR == 1 {
            reasons["Simulator"] = true
        }
        
        // Check 1 : existence of files that are common for jailbroken devices
        for path in Const.files {
            if FileManager.default.fileExists(atPath: path) {
                reasons["file: " + path] = true
            } else {
                //reasons["file: " + path] = false
            }
        }
        
        // Check 2: existence of applications that are common for jailbroken devices (if they are accesable then there is a sandbox violation wich means the device is jailbroken)
        for path in Const.applications {
            if UIApplication.shared.canOpenURL(URL(string: path)!) {
                reasons["application: " + path] = true
            } else {
                //reasons["application: " + path] = false
            }
        }
        
        // Check 3 : Reading and writing in system directories (sandbox violation)
        let stringToWrite = "Jailbreak Test"
        do {
            try stringToWrite.write(toFile:"/private/JailbreakTest.txt", atomically:true, encoding:String.Encoding.utf8)
            //Device is jailbroken
            reasons["Read and write acces"] = true
        } catch {
            //reasons["Read and write acces"] = false
        }
        
        return reasons
    }
    
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
}


