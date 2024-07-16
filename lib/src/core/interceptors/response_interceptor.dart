import 'package:dio/dio.dart';
import 'package:logger/logger.dart';


class NetworkInterceptor extends Interceptor {

  final Logger logger;

  NetworkInterceptor({required this.logger});

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    logger.d('Request ==> ${options.uri.toString()} \n Method ==>  ${options.method} \n Payload ==>  ${options.data.toString()} \n Token ==> ${options.headers},');
    if (options.data is FormData) {
      final formData = options.data as FormData;
      logger.d('FormData ====> ${formData.fields}');
      logger.d('FormData ====> ${formData.files}');
    }
    //super.onRequest(options, handler);
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.d('Response ===> ${response.data} ${response.statusCode} \n Request ===> ${response.requestOptions.data}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger.e('Error ===> ${err.response?.data} ${err.response?.statusCode} \n \n Request ===> ${err.response?.requestOptions.data}');
    ///Attempt to refresh
    // if (err.response?.statusCode == 401) {
    //   appRouter.navigatorKey.currentContext?.pushRoute(CustomerLogInRoute());
    // }
    super.onError(err, handler);
  }
}
