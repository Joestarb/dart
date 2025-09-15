import '../models/Atracctions.dart';

void addToItinerary(List<Itinerary> itinerary, Attraction attraction) {
	for (var item in itinerary) {
		if (!item.attractions.any((a) => a.name == attraction.name)) {
			item.attractions.add(attraction);
		}
	}
}


Future<void> saveItinerary(List<Itinerary> itinerary) async {
	await Future.delayed(Duration(milliseconds: 500));
	if (itinerary.isEmpty) {
		throw Exception('El itinerario está vacío');
	}
	// Simula guardado
	print('Itinerario guardado con ${itinerary.length} atracciones.');
}

