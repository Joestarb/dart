import '../models/Itinerary.dart';
import 'saveItinerary.dart';

void addToItinerary(List<Itinerary> itinerary, Itinerary newItinerary) {
  
  if (itinerary.isEmpty) {
    throw Exception('El itinerario está vacío');
  }

  // Validar que no choquen los horarios
  for (final it in itinerary) {
    final empiezaAntesDeQueTermine = newItinerary.startsAt.isBefore(it.endsAt);
    final terminaDespuesDeQueEmpieza = newItinerary.endsAt.isAfter(it.startsAt);
    if (empiezaAntesDeQueTermine && terminaDespuesDeQueEmpieza) {
      print(
        'Error: El itinerario "${newItinerary.name}" choca con "${it.name}".',
      );
      return;
    }
  }
  saveItinerary(newItinerary);
}
