squeleto del código (Tu debes completar los TODO)

import 'dart:async';

/* ================== main ================== */
Future<void> main() async {
  print('Cargando atracciones...');
  try {
    final attractions = await fetchAttractions(); // TODO: implementar fetchAttractions
    print('Listo (${attractions.length} atracciones)\n');

    // TODO: aplicar filtros con Iterable (where/map)
    // Ejemplo: playas gratis

    // TODO: crear itinerario como List<Attraction>
    // TODO: agregar atracciones con addToItinerary y findByName

    // TODO: guardar itinerario usando saveItinerary
    // Manejar con try/catch/finally

    // TODO: escuchar estados con Stream (crowdLevelStream)
    // Consumir con await for o .listen

  } catch (e) {
    print('Error: $e');
  } finally {
    print('\nFin.');
  }
}

/* ================== Modelo ================== */
class Attraction {
  // TODO: definir propiedades (name, type, price, familyFriendly, durationMin)

  // TODO: constructor principal con parámetros nombrados
  // TODO: constructor fromJson (named constructor)

  // TODO: getter derivado (priceLabel: "Gratis" o "$precio MXN")
  // TODO: setter con validación (setPrice)

  @override
  String toString() {
    // TODO: personalizar representación
    return '';
  }
}

/* ============ “Datos” y utilidades ============ */

// TODO: implementar fetchAttractions (Future + delayed con raw JSON simulado)

// TODO: función findByName (buscar por nombre, caseInsensitive opcional)

// TODO: función addToItinerary (agregar evitando duplicados)

// TODO: función saveItinerary (simular guardado, lanzar error si vacío)

/* ============== Stream de estados ============== */

// TODO: crowdLevelStream(List<Attraction>) async*
// - Usar yield para emitir estados dinámicos de aforo/clima
// - Simular retardo con Future.delayed

