//
//  DebugOverlay.swift
//  DebugInformation
//
//  Created by Eric Miller on 6/2/17.
//  Copyright © 2017 Tiny Zepplin. All rights reserved.
//

import UIKit

/**
 A built-in debugging overlay that can be used to verify design spec conformance, inspect the
 view hierarchy, measure element position and dimensions, and much more.

 To use the debug overlay, call the `prepareForPresentation()` method then two-finger tap on the status
 bar inside of your application.  A modal should appear with a list of debug options.

 For simulator usage,
 you need to use the `toggleVisibility()` method to make the overlay appear.

 - Note: To use the spec compare feature, you must add the `NSPhotoLibraryUsageDescription`
 key and a value to your info.plist.

 - Attention: This object uses Apple Private APIs and should not be used in a production application environment.
 It is the responsibility of the implementing developer to ensure this code is not used in production.
 */
struct DebugOverlay {

    private static var overlayClass: UIWindow.Type?

    /**
     Prepares the debug information overlay for presentation.
    */
    static func prepareForPresentation() {
        let overlayClass = NSClassFromString("UIDebuggingInformationOverlay") as? UIWindow.Type
        _ = overlayClass?.perform(NSSelectorFromString("prepareDebuggingOverlay"))
        DebugOverlay.overlayClass = overlayClass
    }

    /**
     Toggles the visibility of the debug information overlay
     */
    static func toggleVisibility() {
        let overlay = overlayClass?.perform(NSSelectorFromString("overlay")).takeUnretainedValue() as? UIWindow
        _ = overlay?.perform(NSSelectorFromString("toggleVisibility"))
    }
}
