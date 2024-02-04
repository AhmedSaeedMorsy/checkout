import 'package:dio/dio.dart';

class DioServices {
  final Dio dio = Dio();

  Future<Response> post(
      {required String path,
      required data,
      required String token,
      required String? contentType}) async {
    Response response = await dio.post(
      path,
      options: Options(
        contentType: contentType,
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );
    return response;
  }
}
