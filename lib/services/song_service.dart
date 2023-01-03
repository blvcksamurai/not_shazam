import 'package:dio/dio.dart';
import 'package:not_shazam_lol/services/models/deezer_song_models.dart';

class SongService {
  late Dio _dio;

  SongService() {
    BaseOptions options = BaseOptions(
        receiveTimeout: 100000,
        connectTimeout: 100000,
        baseUrl: 'https://api.deezer.com/track/');

    _dio = Dio(options);
  }

  Future<DeezerSongModel> getTrack(id) async {
    try {
      final response = await _dio.get('$id',
          options: Options(headers: {
            'Content-type': 'application/json;charset=UTF-8',
            'Accept': 'application/json;charset=UTF-8',
          }));
    } on DioError catch (e) {
      if (e.requestOptions != null) {
        throw 'An error has occured';
      } else {
        print(e.error);
        throw e.error;
      }
    }
  }
}

//  name, link, share,picture,pictureSmall,pictureMedium,pictureBig,pictureXl,radio,tracklist,type