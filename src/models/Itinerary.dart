class Itinerary {
  String name;
  DateTime startsAt;
  DateTime endsAt;
  List<Attraction> attractions;

  Itinerary({
    required this.name,
    required this.startsAt,
    required this.endsAt,
    required this.attractions,
  });


  @override  String toString() {
    return '$name: ${attractions.length} atracciones, desde
    ${startsAt.toLocal()} hasta ${endsAt.toLocal()}';

}
}