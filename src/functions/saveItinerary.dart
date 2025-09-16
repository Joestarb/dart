import '../models/Itinerary.dart';
import '../utils/Itineraries_list.dart';

void saveItinerary(Itinerary newItinerary)  {
  itineraries.add(newItinerary);

  // Simula guardado
  print('Itinerario guardado con ${newItinerary.attractions.length } atracciones.  actividades totales ${itineraries.length}');
}