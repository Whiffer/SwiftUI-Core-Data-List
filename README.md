# SwiftUI-Core-Data-Data-List
Extended sample program to demonstrate how CoreData can be used with SwiftUI.
This sample has been sort of a play ground to try to duplicate or reinvent some familiar 
UIKit patterns using SwiftUI that are common with some Core Data based Apps.

This project currently compiles and runs on Xcode 11.0 Beta 7 
Current development testing has mostly been on iPhone devices.
It does run on iPad and macOS with a few size class issues.

The key component of this sample is the class CoreDataDataSource which encapsulates
much of the functionality of an NSFetchedResultsController for use with SwiftUI.
This version of CoreDataDataSource has several custom initializers for extended capabilities.

=======================

Typical "drill-down" view with Lists and Detail view editing

The ItemDetailDisclosureButton and AttributeDetailDisclosureButton Views are used within
a List row to show a Detail Disclose Button and provide programmatic navigation to
an appropriate View, which is usually different from the NavigationLink of the row itself.

=======================

This project is still a work in progress.  Several more changes will be made in the near future.
