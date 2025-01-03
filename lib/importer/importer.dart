import 'package:apidash/consts.dart';
import 'package:apidash_core/apidash_core.dart';
import 'curl/curl.dart';

class Importer {
  Future<HttpRequestModel?> getHttpRequestModel(
    ImportFormat fileType,
    String content,
  ) async {
    return switch (fileType) {
      ImportFormat.curl => CurlFileImport().getHttpRequestModel(content),
      ImportFormat.postman => null
    };
  }
}

final kImporter = Importer();
