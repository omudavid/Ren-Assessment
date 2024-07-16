
class ApiEndpoint {
  const ApiEndpoint._();

  static const String scheme = 'https';
  static const String host = 'api.openweathermap.org';
  static const int receiveTimeout = 50000;
  static const int sendTimeout = 50000;

  static const baseUri = '$scheme://$host/';

  static const getWeather = 'data/2.5/weather';
}