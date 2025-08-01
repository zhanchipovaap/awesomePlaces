enum PlaceType {
  other('other', 'Все'), 
  park('park', 'Парк'), 
  monument('monument', 'Монумент'), 
  theatre('theatre', 'Театр'), 
  museum('museum', 'Музей'), 
  temple('temple', 'Храм'), 
  hotel('hotel', 'Отель'), 
  restaurant('restaurant', 'Ресторан'), 
  cafe('cafe', 'Кафе'), 
  shopping('shopping', 'Магазин');

  final String code;
  final String name;

  const PlaceType(this.code, this.name);
}