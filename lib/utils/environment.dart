enum Environment {
  STAGING,
  PRODUCTION,
}

const Environment activeProfile = Environment.STAGING;

String getBaseUrl() {
  switch (activeProfile) {
    case Environment.STAGING:
      return "https://dev.reprecinct.com.au/api/v2";

    case Environment.PRODUCTION:
      return "";
  }
}



enum HttpMethod {
  GET,
  POST,
  PUT,
}

