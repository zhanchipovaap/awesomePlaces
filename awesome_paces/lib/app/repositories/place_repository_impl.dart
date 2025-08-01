import 'package:awesome_paces/app/dto/place_dto.dart';
import 'package:awesome_paces/app/repositories/place_repository.dart';

class PlaceRepositoryImpl extends PlaceRepository {
  @override
  Future<PlaceDto> getPlaceById(int id) {
    // TODO: implement getPlaceById
    throw UnimplementedError();
  }

  @override
  Future<List<PlaceDto>> getPlaces() {
    // TODO: implement getPlaces
    throw UnimplementedError();
  }

  @override
  Future<List<PlaceDto>> searchPlacesByQuery(
      String query, int limit, int offset) {
    // TODO: implement searchPlacesByQuery
    throw UnimplementedError();
  }
}
