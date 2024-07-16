import 'package:dio/dio.dart';
import 'package:renmoney_assessment/src/core/api/api_endpoints.dart';
import 'package:renmoney_assessment/src/features/weather/data/model/weather_response.dart';
import 'package:retrofit/http.dart';

part 'weather_client.g.dart';

@RestApi(baseUrl: ApiEndpoint.baseUri)
abstract class WeatherClient {
  factory WeatherClient(Dio dio,) = _WeatherClient;



  @GET(ApiEndpoint.getWeather)
  Future<WeatherResponse> getWeather(
      @Query('lat') String lat,
      @Query('lon') String lon,
      @Query('appid') String apiKey,
      );
}
