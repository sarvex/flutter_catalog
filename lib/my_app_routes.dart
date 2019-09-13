// This file declares routes of this app, in particular it declares the
// "structure" of the group of example routes, in a const List<Tuple2> object.
import 'package:flutter/material.dart';

import './constants.dart';
import './my_route.dart';
import './routes/home.dart';
import './routes/about.dart';

import './routes/animation_animated_builder_ex.dart';
import './routes/animation_animated_container_ex.dart';
import './routes/animation_animated_widget_ex.dart';
import './routes/animation_basic_ex.dart';
import './routes/animation_hero_ex.dart';
import './routes/animation_opacity_ex.dart';
import './routes/appbar_backdrop_ex.dart';
import './routes/appbar_basic_appbar_ex.dart';
import './routes/appbar_bottom_appbar_ex.dart';
import './routes/appbar_search_ex.dart';
import './routes/appbar_sliver_appbar_ex.dart';
import './routes/firebase_chatroom_ex.dart';
import './routes/firebase_login_ex.dart';
import './routes/firebase_mlkit_ex.dart';
import './routes/firebase_vote_ex.dart';
import './routes/layouts_container_padding_center_ex.dart';
import './routes/layouts_expanded_ex.dart';
import './routes/layouts_row_col_ex.dart';
import './routes/layouts_stack_ex.dart';
import './routes/layouts_wrap_ex.dart';
import './routes/lists_datatable_ex.dart';
import './routes/lists_expansion_tile_ex.dart';
import './routes/lists_grid_list_ex.dart';
import './routes/lists_list_tile_ex.dart';
import './routes/lists_listview_builder_ex.dart';
import './routes/lists_reorderable_ex.dart';
import './routes/lists_swipe_to_dismiss_ex.dart';
import './routes/nav_bottom_navbar_ex.dart';
import './routes/nav_bottom_tabbar_ex.dart';
import './routes/nav_dialogs_ex.dart';
import './routes/nav_nav_drawer_header_ex.dart';
import './routes/nav_pageselector_ex.dart';
import './routes/nav_routes_ex.dart';
import './routes/nav_tabs_ex.dart';
import './routes/persistence_file_rw_ex.dart';
import './routes/persistence_preference_ex.dart';
import './routes/persistence_sembast_ex.dart';
import './routes/persistence_sqlite_ex.dart';
import './routes/plugins_image_picker_ex.dart';
import './routes/plugins_local_auth_ex.dart';
import './routes/plugins_markdown_ex.dart';
import './routes/plugins_webview_ex.dart';
import './routes/state_bloc_ex.dart';
import './routes/state_bloc_lib_ex.dart';
import './routes/state_inherited_widget_ex.dart';
import './routes/state_provider_ex.dart';
import './routes/state_scoped_model_ex.dart';
import './routes/state_streambuilder_ex.dart';
import './routes/state_streamcontroller_ex.dart';
import './routes/widgets_buttons_ex.dart';
import './routes/widgets_card_ex.dart';
import './routes/widgets_dropdown_button_ex.dart';
import './routes/widgets_icon_ex.dart';
import './routes/widgets_image_ex.dart';
import './routes/widgets_stateful_widgets_ex.dart';
import './routes/widgets_text_ex.dart';
import './routes/widgets_textfield_ex.dart';
import './routes/widgets_textformfield_ex.dart';

const kHomeRoute = MyRoute(
  child: MyHomePage(),
  sourceFilePath: 'lib/routes/home.dart',
  title: APP_NAME,
  routeName: Navigator.defaultRouteName,
);

const kAboutRoute = MyRoute(
  child: MyAboutRoute(),
  sourceFilePath: 'lib/routes/about.dart',
  title: 'About',
  links: {'Doc': 'https://docs.flutter.io/flutter/material/showAboutDialog.html'},
);

// The structure of app's navigation drawer items is a 2-level menu, its schema
// is the following:
// [ MyRouteGroup{
//        groupName: group1_name,
//        icon: group1_icon,
//        routes: [route1, route2, ...]
//   },
//   MyRouteGroup{
//        groupName: group2_name,
//        icon: group2_icon,
//        routes: [route1, route2, ...]
//   },
//   ...
// ]
class MyRouteGroup {
  const MyRouteGroup({@required this.groupName, @required this.icon, @required this.routes});
  final String groupName;
  final Widget icon;
  final List<MyRoute> routes;
}

const kMyAppRoutesStructure = <MyRouteGroup>[
  MyRouteGroup(
    groupName: 'Widgets',
    icon: Icon(Icons.extension),
    routes: <MyRoute>[
      MyRoute(
        child: IconExample(),
        sourceFilePath: 'lib/routes/widgets_icon_ex.dart',
        title: 'Icon',
      ),
      MyRoute(
        child: TextExample(),
        sourceFilePath: 'lib/routes/widgets_text_ex.dart',
        title: 'Text',
      ),
      MyRoute(
        child: TextFieldExample(),
        sourceFilePath: 'lib/routes/widgets_textfield_ex.dart',
        title: 'TextField',
        description: 'Text input.',
        links: {'Doc': 'https://docs.flutter.io/flutter/material/TextField-class.html'},
      ),
      MyRoute(
        child: TextFormFieldExample(),
        sourceFilePath: 'lib/routes/widgets_textformfield_ex.dart',
        title: 'TextFormField',
        description: 'Convenience widget wrapping a TextField in a FormField.',
        links: {'Doc': 'https://docs.flutter.io/flutter/material/TextFormField-class.html'},
      ),
      MyRoute(
        child: ImageExample(),
        sourceFilePath: 'lib/routes/widgets_image_ex.dart',
        title: 'Image',
        links: {'Doc': 'https://docs.flutter.io/flutter/widgets/Image-class.html'},
      ),
      MyRoute(
        child: CardExample(),
        sourceFilePath: 'lib/routes/widgets_card_ex.dart',
        title: 'Card, Inkwell',
        description: 'Container with corner and shadow; inkwell (ripple) effects',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/Card-class.html',
          'Inkwell': 'https://flutter.io/cookbook/gestures/ripples/',
        },
      ),
      MyRoute(
        child: ButtonsExample(),
        sourceFilePath: 'lib/routes/widgets_buttons_ex.dart',
        title: 'Buttons',
        description: 'RaisedButton, FlatButton, OutlineButton, IconButton&Tooltips',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/ButtonBar-class.html',
          'Gallery button demo code':
              'https://github.com/flutter/flutter/blob/master/examples/flutter_gallery/lib/demo/material/buttons_demo.dart'
        },
      ),
      MyRoute(
        child: DropdownButtonExample(),
        sourceFilePath: 'lib/routes/widgets_dropdown_button_ex.dart',
        title: 'DropdownButton, MenuButton',
        links: {'Doc': 'https://docs.flutter.io/flutter/material/DropdownButton-class.html'},
      ),
      MyRoute(
        child: StatefulWidgetsExample(),
        sourceFilePath: 'lib/routes/widgets_stateful_widgets_ex.dart',
        title: 'Other stateful widgets',
        description: 'Switch, CheckBox, Slider, etc.',
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'Layouts',
    icon: Icon(Icons.dashboard),
    routes: <MyRoute>[
      MyRoute(
        child: ContainerExample(),
        sourceFilePath: 'lib/routes/layouts_container_padding_center_ex.dart',
        title: 'Container',
        description: 'Basic widgets for layout.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/Container-class.html',
        },
      ),
      MyRoute(
        child: RowColExample(),
        sourceFilePath: 'lib/routes/layouts_row_col_ex.dart',
        title: 'Row, Column',
        description: 'Align chidren widgets linearly.',
        links: {
          "Youtube video": "https://www.youtube.com/watch?v=RJEnTRBxaSg&t=75s",
          'Doc': 'https://docs.flutter.io/flutter/widgets/Row-class.html',
        },
      ),
      MyRoute(
        child: WrapExample(),
        sourceFilePath: 'lib/routes/layouts_wrap_ex.dart',
        title: 'Wrap',
        description: 'Wrap to the next row/column when run out of room.',
        links: {
          "Youtube video": "https://www.youtube.com/watch?v=z5iw2SeFx2M",
          'Doc': 'https://docs.flutter.io/flutter/widgets/Wrap-class.html',
        },
      ),
      MyRoute(
        child: ExpandedExample(),
        sourceFilePath: 'lib/routes/layouts_expanded_ex.dart',
        title: 'Expanded, SizedBox',
        description: 'Dividing space by "weights" (flex).',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/Expanded-class.html',
          'Youtube video': 'https://www.youtube.com/watch?v=RJEnTRBxaSg&t=1072s',
        },
      ),
      MyRoute(
        child: StackExample(),
        sourceFilePath: 'lib/routes/layouts_stack_ex.dart',
        title: 'Stack',
        description: 'Putting widget on top of another.',
        links: {
          "Youtube video": "https://www.youtube.com/watch?v=RJEnTRBxaSg&t=1072s",
          'Doc': 'https://docs.flutter.io/flutter/widgets/Stack-class.html',
        },
      ),
      // TODO TableExample(),
    ],
  ),
  MyRouteGroup(
    groupName: 'Lists',
    icon: Icon(Icons.format_list_numbered),
    routes: <MyRoute>[
      MyRoute(
        child: ListTileExample(),
        sourceFilePath: 'lib/routes/lists_list_tile_ex.dart',
        title: 'ListTile',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/ListTile-class.html',
        },
      ),
      MyRoute(
        child: ListViewBuilderExample(),
        sourceFilePath: 'lib/routes/lists_listview_builder_ex.dart',
        title: 'ListView.builder',
        description: 'Building list items with a builder.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/ListView-class.html',
        },
      ),
      MyRoute(
        child: GridListExample(),
        sourceFilePath: 'lib/routes/lists_grid_list_ex.dart',
        title: 'GridList',
        links: {
          'Cookbook': 'https://flutter.io/cookbook/lists/grid-lists/',
        },
      ),
      MyRoute(
        child: ExpansionTileExample(),
        sourceFilePath: 'lib/routes/lists_expansion_tile_ex.dart',
        title: 'ExpansionTile',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/ExpansionTile-class.html',
        },
      ),
      MyRoute(
        child: ListSwipeToDismissExample(),
        sourceFilePath: 'lib/routes/lists_swipe_to_dismiss_ex.dart',
        title: 'Swipe to dismiss',
        links: {
          'Cookbook': 'https://flutter.io/cookbook/gestures/dismissible',
        },
      ),
      MyRoute(
        child: ReorderableListExample(),
        sourceFilePath: 'lib/routes/lists_reorderable_ex.dart',
        title: 'Reorderable list',
        links: {'Doc': 'https://docs.flutter.io/flutter/material/ReorderableListView-class.html'},
      ),
      MyRoute(
        child: DataTableExample(),
        sourceFilePath: 'lib/routes/lists_datatable_ex.dart',
        title: 'DataTable',
        description: 'Showing data in a table.',
        links: {'Docs': 'https://docs.flutter.io/flutter/material/PaginatedDataTable-class.html'},
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'Appbar',
    icon: RotatedBox(
      child: Icon(Icons.video_label),
      quarterTurns: 2,
    ),
    routes: <MyRoute>[
      MyRoute(
        child: BasicAppbarExample(),
        sourceFilePath: 'lib/routes/appbar_basic_appbar_ex.dart',
        title: 'Basic AppBar',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/AppBar-class.html',
        },
      ),
      MyRoute(
        child: BottomAppbarExample(),
        sourceFilePath: 'lib/routes/appbar_bottom_appbar_ex.dart',
        title: 'Bottom AppBar',
        links: {'Doc': 'https://docs.flutter.io/flutter/material/BottomNavigationBar-class.html'},
      ),
      MyRoute(
        child: SliverAppBarExample(),
        sourceFilePath: 'lib/routes/appbar_sliver_appbar_ex.dart',
        title: 'Sliver AppBar',
        description: 'Appbar that auto-hides.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/SliverAppBar-class.html',
          'Medium article': 'https://flutterdoc.com/animating-app-bars-in-flutter-cf034cd6c68b',
        },
      ),
      MyRoute(
        child: AppBarSearchExample(),
        sourceFilePath: 'lib/routes/appbar_search_ex.dart',
        title: 'Search',
        links: {'Doc': 'https://docs.flutter.io/flutter/material/SearchDelegate-class.html'},
      ),
      MyRoute(
        child: BackdropExample(),
        sourceFilePath: 'lib/routes/appbar_backdrop_ex.dart',
        title: 'Backdrop',
        description: 'Switching between front and back layer.',
        links: {'Medium article': 'https://medium.com/flutter/decomposing-widgets-backdrop-b5c664fb9cf4'},
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'Navigation',
    icon: Icon(Icons.view_carousel),
    routes: <MyRoute>[
      MyRoute(
        child: TabsExample(),
        sourceFilePath: 'lib/routes/nav_tabs_ex.dart',
        title: 'Tabs',
        links: {'Doc': 'https://docs.flutter.io/flutter/material/TabBar-class.html'},
      ),
      MyRoute(
        child: DialogsExample(),
        sourceFilePath: 'lib/routes/nav_dialogs_ex.dart',
        title: 'Dialogs',
      ),
      MyRoute(
        child: RoutesExample(),
        sourceFilePath: 'lib/routes/nav_routes_ex.dart',
        title: 'Routes',
        description: 'Jumping between pages.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/Navigator-class.html',
          'Youtube video': 'https://youtu.be/b2fgMCeSNpY?list=PLJbE2Yu2zumDqr_-hqpAN0nIr6m14TAsd',
        },
      ),
      MyRoute(
        child: NavDrawerExample(),
        sourceFilePath: 'lib/routes/nav_nav_drawer_header_ex.dart',
        title: 'Navigation Drawer',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/Drawer-class.html',
        },
      ),
      MyRoute(
        child: BottomTabbarExample(),
        sourceFilePath: 'lib/routes/nav_bottom_tabbar_ex.dart',
        title: 'Bottom tab bar',
      ),
      MyRoute(
        child: BottomNavigationBarExample(),
        sourceFilePath: 'lib/routes/nav_bottom_navbar_ex.dart',
        title: 'Bottom navigation bar',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/material/BottomNavigationBar-class.html',
        },
      ),
      MyRoute(
        child: PageSelectorExample(),
        sourceFilePath: 'lib/routes/nav_pageselector_ex.dart',
        title: 'Page selector',
        links: {'Doc': 'https://docs.flutter.io/flutter/material/TabPageSelector-class.html'},
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'Animation',
    icon: Icon(Icons.movie_filter),
    routes: <MyRoute>[
      MyRoute(
        child: OpacityExample(),
        sourceFilePath: 'lib/routes/animation_opacity_ex.dart',
        title: 'Opacity',
        description: 'Making a widget transparent/visible.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/Opacity-class.html',
          'Youtube video':
              'https://www.youtube.com/watch?v=9hltevOHQBw&index=5&list=PLOU2XLYxmsIL0pH0zWe_ZOHgGhZ7UasUE',
        },
      ),
      MyRoute(
        child: HeroExample(),
        sourceFilePath: 'lib/routes/animation_hero_ex.dart',
        title: 'Hero',
        description: 'Hero animation between routes.',
        links: {
          'cookbook': 'https://flutter.io/docs/development/ui/animations/hero-animations',
          'Youtube video': 'https://www.youtube.com/watch?v=Be9UH1kXFDw',
        },
      ),
      MyRoute(
        child: BasicAnimationExample(),
        sourceFilePath: 'lib/routes/animation_basic_ex.dart',
        title: 'Basic animation',
        description: 'Implement animation using low-level Animations, AnimationControllers and Tweens.',
        links: {
          'Tutorial': 'https://flutter.dev/docs/development/ui/animations/tutorial',
          'Youtube video': 'https://www.youtube.com/watch?v=mdhoIQqS2z0',
        },
      ),
      MyRoute(
        child: AnimatedWidgetExample(),
        sourceFilePath: 'lib/routes/animation_animated_widget_ex.dart',
        title: 'AnimatedWidget',
        description: 'Easier animtation without addListener() and setState()',
        links: {
          'Tutorial': 'https://flutter.dev/docs/development/ui/animations/tutorial#simplifying-with-animatedwidget',
          'Youtube video': 'https://www.youtube.com/watch?v=mdhoIQqS2z0',
        },
      ),
      MyRoute(
        child: AnimatedBuilderExample(),
        sourceFilePath: 'lib/routes/animation_animated_builder_ex.dart',
        title: 'AnimatedBuilder',
        description: 'Similar to AnimatedWidget.',
        links: {
          'Tutorial': 'https://flutter.dev/docs/development/ui/animations/tutorial#refactoring-with-animatedbuilder',
          'Widget of the Week (YouTube)': 'https://youtu.be/N-RiyZlv8v8',
        },
      ),
      MyRoute(
        child: AnimatedContainerExample(),
        sourceFilePath: 'lib/routes/animation_animated_container_ex.dart',
        title: 'AnimatedContainer',
        description: 'Implicit animation when container property changes, without controllers.',
        links: {
          'Cookbook': 'https://flutter.dev/docs/cookbook/animation/animated-container',
          'Widget of the Week (YouTube)': 'https://youtu.be/yI-8QHpGIP4',
        },
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'Persistence',
    icon: Icon(Icons.sd_storage),
    routes: <MyRoute>[
      MyRoute(
        child: SharedPreferenceExample(),
        sourceFilePath: 'lib/routes/persistence_preference_ex.dart',
        title: 'Shared preference',
        description: 'Key-value pairs stored locally using shared_preference.',
        links: {
          'Cookbook': 'https://flutter.io/docs/cookbook/persistence/key-value',
        },
      ),
      MyRoute(
        child: FileReadWriteExample(),
        sourceFilePath: 'lib/routes/persistence_file_rw_ex.dart',
        title: 'Local file read/write',
        description: 'Read and write local file using path_provider.',
        links: {
          'Cookbook': 'https://flutter.io/docs/cookbook/persistence/reading-writing-files',
        },
      ),
      MyRoute(
        child: SqliteExample(),
        sourceFilePath: 'lib/routes/persistence_sqlite_ex.dart',
        title: 'SQLite',
        description: 'A CRUD (Create-Read-Update-Delete) mini todo app using sqflite.',
        links: {
          'Pub package': 'https://pub.dev/packages/sqflite',
        },
      ),
      MyRoute(
        child: SembastExample(),
        sourceFilePath: 'lib/routes/persistence_sembast_ex.dart',
        title: 'Sembast',
        description: 'NoSQL db, mini todo CRUD app.',
        links: {
          'Pub package': 'https://pub.dev/packages/sembast',
          'ResoCoder blog': 'https://resocoder.com/2019/04/06/flutter-nosql-database-sembast-tutorial-w-bloc/'
        },
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'State Management',
    icon: Icon(Icons.developer_mode),
    routes: <MyRoute>[
      MyRoute(
        child: StreamBuilderExample(),
        sourceFilePath: 'lib/routes/state_streambuilder_ex.dart',
        title: 'StreamBuilder (timer app)',
        description: 'Update UI according to the latest stream value.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/StreamBuilder-class.html',
          'Youtube': 'https://www.youtube.com/watch?v=MkKEWHfy99Y',
        },
      ),
      MyRoute(
        child: StreamControllerExample(),
        sourceFilePath: 'lib/routes/state_streamcontroller_ex.dart',
        title: 'StreamController',
        description: 'Receive data from sink and output at stream, two StreamControllers can make a "Bloc".',
        links: {
          'Doc': 'https://api.dartlang.org/stable/2.1.1/dart-async/StreamController-class.html',
        },
      ),
      MyRoute(
        child: InheritedWidgetExample(),
        sourceFilePath: 'lib/routes/state_inherited_widget_ex.dart',
        title: 'InheritedWidget',
        description: 'Access state of widgets up the tree.',
        links: {
          'Doc': 'https://docs.flutter.io/flutter/widgets/InheritedWidget-class.html',
          'Youtube': 'https://www.youtube.com/watch?v=4I68ilX0Y24',
        },
      ),
      MyRoute(
        child: ScopedModelExample(),
        sourceFilePath: 'lib/routes/state_scoped_model_ex.dart',
        title: 'ScopedModel',
        description: 'Another (simpler) way to access&mutate state of widgets up the tree.',
        links: {
          "I/O'18 talk": 'https://youtu.be/RS36gBEp8OI?t=680',
          'Youtube': 'https://www.youtube.com/watch?v=-MCeWP3rgI0',
        },
      ),
      MyRoute(
        child: BlocExample(),
        sourceFilePath: 'lib/routes/state_bloc_ex.dart',
        title: 'BLoC pattern',
        description: 'Combining StreamBuilder, StreamController, and InheritedWidget.',
        links: {
          "I/O'18 talk": 'https://youtu.be/RS36gBEp8OI?t=1090',
          'Video by Reso Coder': 'https://youtu.be/oxeYeMHVLII',
        },
      ),
      MyRoute(
        child: BlocLibExample(),
        sourceFilePath: 'lib/routes/state_bloc_lib_ex.dart',
        title: 'Easier BLoC pattern',
        description: 'Simpler BLoC implementation with flutter_bloc package.',
        links: {
          'Video by Reso Coder': 'https://youtu.be/LeLrsnHeCZY',
          'flutter_bloc doc': 'https://felangel.github.io/bloc/#/coreconcepts',
        },
      ),
      MyRoute(
        child: ProviderExample(),
        sourceFilePath: 'lib/routes/state_provider_ex.dart',
        title: 'Provider',
        description: 'Officially recommended state management solution.',
        links: {
          "I/O'19 talk": 'https://www.youtube.com/watch?v=d_m5csmrf7I',
          'pub.dev': 'https://pub.dev/packages/provider',
        },
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'Plugins',
    icon: Icon(Icons.power),
    routes: <MyRoute>[
      MyRoute(
        child: ImagePickerExample(),
        sourceFilePath: 'lib/routes/plugins_image_picker_ex.dart',
        title: 'Image Picker',
        description: 'Pick image from gallery or from camera.',
      ),
      MyRoute(
        child: WebViewExample(),
        sourceFilePath: 'lib/routes/plugins_webview_ex.dart',
        title: 'Web View',
        description: 'Open web page inside Flutter app.',
      ),
      MyRoute(
        child: MarkdownExample(),
        sourceFilePath: 'lib/routes/plugins_markdown_ex.dart',
        title: 'Markdown rendering',
      ),
      MyRoute(
        child: LocalAuthExample(),
        sourceFilePath: 'lib/routes/plugins_local_auth_ex.dart',
        title: 'Local auth',
        description: 'Authenticate with biometrics(fingerprint).',
        links: {},
      ),
    ],
  ),
  MyRouteGroup(
    groupName: 'Firebase',
    icon: Icon(Icons.cloud),
    routes: <MyRoute>[
      MyRoute(
        child: FirebaseLoginExample(),
        sourceFilePath: 'lib/routes/firebase_login_ex.dart',
        title: 'Firebase login',
        description: 'Google/Anonymous sign in.',
        links: {
          'Youtube video': 'https://www.youtube.com/watch?v=JYCNvWKF7vw',
        },
      ),
      MyRoute(
        child: FirebaseVoteExample(),
        sourceFilePath: 'lib/routes/firebase_vote_ex.dart',
        title: 'Firestore voting app',
        description: 'Vote for your favorite programming language!',
        links: {
          'Youtube video': 'https://www.youtube.com/watch?v=DqJ_KjFzL9I',
          'Codelab': 'https://codelabs.developers.google.com/codelabs/flutter-firebase/#0',
        },
      ),
      MyRoute(
        child: FirebaseChatroomExample(),
        sourceFilePath: 'lib/routes/firebase_chatroom_ex.dart',
        title: 'Chat room',
        description: 'Chat room with firebase realtime db.',
        links: {
          'FriendlyChat codelab': 'https://github.com/flutter/friendlychat-steps',
          "Google I/O'17 video": 'https://www.youtube.com/watch?v=w2TcYP8qiRI',
        },
      ),
      MyRoute(
        child: FirebaseMLKitExample(),
        sourceFilePath: 'lib/routes/firebase_mlkit_ex.dart',
        title: 'Firebase ML Kit',
        description: 'Image labelling, text OCR, barcode scan, face detection.',
        links: {
          'Doc': 'https://pub.dartlang.org/packages/firebase_ml_vision',
        },
      ),
    ],
  ),
];

final kAllRoutes = kMyAppRoutesStructure.expand((group) => group.routes);

// This app's root-level routing table.
final Map<String, WidgetBuilder> kAppRoutingTable = {
  Navigator.defaultRouteName: (context) => kHomeRoute,
  kAboutRoute.routeName: (context) => kAboutRoute,
  for (MyRoute route in kAllRoutes) route.routeName: (context) => route,
};
