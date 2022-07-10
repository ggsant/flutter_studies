import '../app_state.dart';

const String splashPath = '/splash';
const String loginPath = '/login';
const String createAccountPath = '/createAccount';
const String listItemsPath = '/listItems';
const String detailsPath = '/details';
const String cartPath = '/cart';
const String checkoutPath = '/checkout';
const String settingsPath = '/settings';

enum Pages { splash, login, createAccount, list, details, cart, checkout, settings }

class PageConfiguration {
  final String key;
  final String path;
  final Pages uiPage;
  PageAction? currentPageAction;

  PageConfiguration({required this.key, required this.path, required this.uiPage, this.currentPageAction});
}

PageConfiguration splashPageConfig = PageConfiguration(key: 'Splash', path: splashPath, uiPage: Pages.splash, currentPageAction: null);
PageConfiguration loginPageConfig = PageConfiguration(key: 'Login', path: loginPath, uiPage: Pages.login, currentPageAction: null);
PageConfiguration createAccountPageConfig = PageConfiguration(key: 'CreateAccount', path: createAccountPath, uiPage: Pages.createAccount, currentPageAction: null);
PageConfiguration listItemsPageConfig = PageConfiguration(key: 'ListItems', path: listItemsPath, uiPage: Pages.list);
PageConfiguration detailsPageConfig = PageConfiguration(key: 'Details', path: detailsPath, uiPage: Pages.details, currentPageAction: null);
PageConfiguration cartPageConfig = PageConfiguration(key: 'Cart', path: cartPath, uiPage: Pages.cart, currentPageAction: null);
PageConfiguration checkoutPageConfig = PageConfiguration(key: 'Checkout', path: checkoutPath, uiPage: Pages.checkout, currentPageAction: null);
PageConfiguration settingsPageConfig = PageConfiguration(key: 'Settings', path: settingsPath, uiPage: Pages.settings, currentPageAction: null);
