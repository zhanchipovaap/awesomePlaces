import 'package:awesome_paces/app/dto/place_dto.dart';
import 'package:awesome_paces/app/repositories/place_repository.dart';
import 'package:awesome_paces/core/custom_exception.dart';
import 'package:catcher_2/catcher_2.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PlaceServices {
  final PlaceRepository _placeRepository = Modular.get<PlaceRepository>();

  Future<List<PlaceDto>> getPlaces() async {
    try {
      return await _placeRepository.getPlaces();
    } on DioException catch (e, stackTrace) {
      throw NetworkPlaceException(
        'Ошибка сети при получении мест',
        e,
        stackTrace,
      );
    } catch (e, stackTrace) {
      Catcher2.reportCheckedError(e, stackTrace);
      rethrow;
    }
  }

  Future<PlaceDto> getPlaceById(int id) async {
    try {
      return await _placeRepository.getPlaceById(id);
    } on DioException catch (e, stackTrace) {
      if (e.response?.statusCode == 400) {
        throw InvalidIdException(e, stackTrace);
      } else if (e.response?.statusCode == 404) {
        throw PlaceNotFindException(e, stackTrace);
      } else {
        throw NetworkPlaceException(
          'Ошибка сети при получении места',
          e,
          stackTrace,
        );
      }
    } catch (e, stackTrace) {
      Catcher2.reportCheckedError(e, stackTrace);
      rethrow;
    }
  }

  Future<List<PlaceDto>> searchPlacesByQuery(
    String query,
    int limit,
    int offset,
  ) async {
    try {
      return await _placeRepository.searchPlacesByQuery(query, limit, offset);
    } on DioException catch (e, stackTrace) {
      if (e.response?.statusCode == 400) {
        throw SearchValidationException(e, stackTrace);
      } else {
        throw NetworkPlaceException(
          'Ошибка сети при получении мест',
          e,
          stackTrace,
        );
      }
    } catch (e, stackTrace) {
      Catcher2.reportCheckedError(e, stackTrace);
      rethrow;
    }
  }
}
