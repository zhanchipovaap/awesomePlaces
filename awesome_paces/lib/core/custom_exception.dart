class CustomException implements Exception {
  final String message;
  final dynamic error;
  final StackTrace? stackTrace;
  final int? statusCode;

  CustomException(this.message, [this.statusCode, this.error, this.stackTrace]);

  @override
  String toString() =>
      'PlaceServiceException: $message${error != null ? '\nError: $error' : ''}';
}

class InvalidIdException extends CustomException {
  InvalidIdException([dynamic error, StackTrace? stackTrace])
      : super('Неверный ID', 400, error, stackTrace);
}

class PlaceNotFindException extends CustomException {
  PlaceNotFindException([dynamic error, StackTrace? stackTrace])
      : super('Место не найдено', 404, error, stackTrace);
}

class SearchValidationException extends CustomException {
  SearchValidationException([dynamic error, StackTrace? stackTrace])
      : super('Ошибка валидации параметров запроса', 400, error, stackTrace);
}

class NetworkPlaceException extends CustomException {
  NetworkPlaceException(String message, [dynamic error, StackTrace? stackTrace])
      : super(message, error, stackTrace);
}

class RepositoryPlaceException extends CustomException {
  RepositoryPlaceException(String message,
      [dynamic error, StackTrace? stackTrace])
      : super(message, error, stackTrace);
}
