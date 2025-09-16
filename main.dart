import 'dart:async';

import 'src/functions/addToItinerary.dart';
import 'src/functions/fetch_atracctions.dart';
import 'src/functions/find_by_name.dart';
import 'src/models/Itinerary.dart';
import 'src/utils/Atracctions_list.dart';
import 'src/utils/Itineraries_list.dart';
import 'src/utils/crowdLevelStream.dart';

/* ================== main ================== */
Future<void> main() async {
  print('Cargando atracciones...');
  try {
    // TOD0: implementar fetchAttractions
    final attractions = await fetchAttractions();
    print('Listo (${attractions.length} atracciones)\n');

    // TOD0: aplicar filtros con Iterable (where/map)
    // Ejemplo: playas gratis
    findByName('Museo Nacional de Antropología');
    // TOD0: crear itinerario como List<Attraction>

    final nuevoItinerario = Itinerary(
      name: 'Tour Cultural CDMX',
      startsAt: DateTime(2025, 9, 16, 9, 0),
      endsAt: DateTime(2025, 9, 16, 18, 0),
      attractions: [
        atracctionsList[0], // Museo Nacional de Antropología
        atracctionsList[2], // Palacio de Bellas Artes
      ],
    );

    addToItinerary(itineraries, nuevoItinerario);

    // Escuchar estados con Stream (crowdLevelStream)
    print('\nEstados de aforo y clima:');
    await for (final estado in crowdLevelStream(nuevoItinerario.attractions)) {
      print(estado);
    }
  } catch (e) {
    print('Error: $e');
  } finally {
    print('\nFin.');
  }
}
