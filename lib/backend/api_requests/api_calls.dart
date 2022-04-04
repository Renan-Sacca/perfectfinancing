import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class TesteCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'teste',
      apiUrl: 'https://b563-186-224-2-188.ngrok.io/pontoturistico/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class NubankCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'nubank',
      apiUrl: 'https://904a-200-10-239-4.ngrok.io/nubank',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class NubankdCall {
  static Future<ApiCallResponse> call({
    int id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'nubankd',
      apiUrl: 'https://904a-200-10-239-4.ngrok.io/nubank/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}
