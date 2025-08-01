import 'package:awesome_paces/app/dto/place_dto.dart';

abstract class PlaceRepository {
  Future<List<PlaceDto>> getPlaces();
  Future<PlaceDto> getPlaceById(int id);
  Future<List<PlaceDto>> searchPlacesByQuery(
    String query,
    int limit,
    int offset,
  );
}
