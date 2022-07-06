
## Widgets

## Basic Widgets
# Scaffold

Scaffold is a class in flutter which provides many widgets or we can say APIs like Drawer, SnackBar, BottomNavigationBar, FloatingActionButton, AppBar, etc. Scaffold will expand or occupy the whole device screen. It will occupy the available space. Scaffold will provide a framework to implement the basic material design layout of the application. 

Properties of Scaffold Class: 

* appBar: It displays a horizontal bar which mainly placed at the top of the Scaffold. appBar uses the widget AppBar which has its own properties like elevation, title, brightness, etc. 
* body: It will display the main or primary content in the Scaffold. It is below the appBar and under the floatingActionButton. The widgets inside the body are at the left-corner by default.
* floatingActionButton: FloatingActionButton is a button that is placed at the right bottom corner by default. FloatingActionButton is an icon button that floats over the content of the screen at a fixed place. If we scroll the page its position won’t change, it will be fixed.
* drawer: drawer is a slider menu or a panel which is displayed at the side of the Scaffold. The user has to swipe left to right or right to left according to the action defined to access the drawer menu. In the Appbar, an appropriate icon for the drawer is set automatically at a particular position. The gesture to open the drawer is also set automatically. It is handled by the Scaffold. 
* bottomNavigationBar: bottomNavigationBar is like a menu at the bottom of the Scaffold. We have seen this navigationbar in most of the applications. We can add multiple icons or texts or both in the bar as items. 
* backgroundColor: used to set the color of the whole Scaffold widget.
floatingActionButtonAnimator: used to provide animation to move floatingActionButton.
* primary: to tell whether the Scaffold will be displayed or not.
drawerScrimColor: used to define the color for the primary content while a drawer is open.
* bottomSheet: This property takes in a widget  (final) as the object to display it at the bottom of the screen.
* drawerDragStartBehaviour: This property holds DragStartBehavior enum as the object to determine the drag behaviour of the drawer.
* drawerEdgeDragWidth: This determines the area under which a swipe or a drag will result in the opening of the drawer. And it takes in a double as the object.
* drawerEnableOpenGesture: This property holds in a boolean value as the object to determine the drag gesture will open the drawer or not, by default it is set to true.
* endDrawer: The endDrawer property takes in a widget as the parameter. It is similar to the Drawer, except the fact it opens in the opposite direction.
endDrawerEnableOpenGesture: Again this property takes in a boolean value as the object to determine whether the drag gesture will open the endDrawer or not.
* extendBody: The extendBody property takes in a boolean as the object. By default, this property is always false but it must not be null. If it is set to true in the presence of a bottomNavigationBar or persistentFooterButtons, then the height of these is added to the body and they are shifted beneath the body.
* extendBodyBehindAppBar:  This property also takes in a boolean as the object. By default, this property is always false but it must not be null. If it is set to true the appBar instead of being on the body is extended above it and its height is added to the body. This property is used when the color of the appBar is not fully opaque.
* floatingActionButtonLocation: This property is responsible for the location of the floatingActionBotton.
p* ersistentFooterButton: This property takes in a list of widgets. Which are usually buttons that are displayed underneath the scaffold.
* resizeToAvoidBottomInsets: This property takes in a boolean value as the object. If set to true then the floating widgets on the scaffold resize themselves to avoid getting in the way of the on-screen keyboard.
* restorationId: Restoration ID to save and restore the state of the Scaffold.
* onDrawerChanged: Optional callback that is called when the Scaffold.drawer is opened or closed.
* onEndDrawerChanged: Optional callback that is called when the Scaffold.endDrawer is opened or closed.

Static Methods

* geometryOf
* hasDrawer
* maybeOf
* of