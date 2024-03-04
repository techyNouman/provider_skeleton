

abstract class BaseApiServices{

  Future<dynamic> getGetApiResponse(String url);

  Future<dynamic> getGetApiResponseArgs(String url, String skip, String take);

  Future<dynamic> getPostApiResponse(String url, dynamic data);

  Future<dynamic> getPutApiResponse(String url, dynamic data);

  Future<dynamic> getPatchApiResponse(String url, dynamic data);

  Future<dynamic> getPostApiResponseWithoutPayload(String url);

  Future<dynamic> getDeleteApiResponse(String url,  String token);

}