# GHUnit install setps for iOS app

## Environment

Mac OS X 10.6.8
Xcode 4.2
GHUnit 0.5.6


## Steps

1. Download GHUnitIOS-0.5.6.zip from [downloads](https://github.com/gabriel/gh-unit/downloads)
2. Unzip the file. And you can see "GHUnitIOS.framework" directory
3. Create new project in Xcode
4. Add Empty application 'Tests' for GHUnit
5. Import GHUnitIOS.framework into Frameworks
    * Right-click "Frameworks" and 'Add Files to "XXXX"...' in project navigator.
    * I checked "Copy items into destination group's folder (if needed)" checkbox.
6. Add settings to 'Other Linker Flags' in build settings of Tests.
    * In the Tests target, Build Settings, under Other Linker Flags, add -ObjC and -all_load.
7. delete unused files
    * Tests/AppDelegate.h
    * Tests/AppDelegate.m
8. Change AppDelegate class name to GHUnitIOSAppDelegate
9. add QuartzCore.framework into Link Binary in "Tests" - "Build Phases" - "Libraries"

