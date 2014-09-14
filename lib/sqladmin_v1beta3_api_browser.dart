library sqladmin_v1beta3_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_sqladmin_v1beta3_api/src/browser_client.dart';
import "package:google_sqladmin_v1beta3_api/sqladmin_v1beta3_api_client.dart";

/** API for Cloud SQL database instance management. */
@deprecated
class Sqladmin extends Client with BrowserClient {

  /** OAuth Scope2: View and manage your data across Google Cloud Platform services */
  static const String CLOUD_PLATFORM_SCOPE = "https://www.googleapis.com/auth/cloud-platform";

  /** OAuth Scope2: Manage your Google SQL Service instances */
  static const String SQLSERVICE_ADMIN_SCOPE = "https://www.googleapis.com/auth/sqlservice.admin";

  final oauth.OAuth2 auth;

  Sqladmin([oauth.OAuth2 this.auth]);
}
