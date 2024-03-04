

import '../network/base_api_service.dart';
import '../network/network_api_services.dart';

class AuthRepository {
  BaseApiServices _apiServices = NetworkApiServices();

  // Future<SendOtpResponse> sendOtp(dynamic data) async {
  //   try {
  //     dynamic response = await _apiServices.getPostApiResponse(ApiUrl.sendOtp, data);
  //     return response = SendOtpResponse.fromJson(response);
  //   } catch (e) {
  //     throw e;
  //   }
  // }

}
