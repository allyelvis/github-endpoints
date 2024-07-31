import 'package:dio/dio.dart';

class EBMSApi {
  static final String baseUrl = 'https://ebms.obr.gov.bi:9443/ebms_api';
  final Dio _dio = Dio();

  Future<String> getBearerToken(String username, String password) async {
    final response = await _dio.post('/auth', data: {
      'username': username,
      'password': password,
    });
    return response.data['token'];
  }

  Future<void> postInvoice(String token, Map<String, dynamic> invoice) async {
    await _dio.post(
      '/addInvoice',
      data: invoice,
      options: Options(headers: {'Authorization': 'Bearer '}),
    );
  }

  Future<void> postStockMovement(String token, Map<String, dynamic> stock) async {
    await _dio.post(
      '/addStockmovement',
      data: stock,
      options: Options(headers: {'Authorization': 'Bearer '}),
    );
  }
}
