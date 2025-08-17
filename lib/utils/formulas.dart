import 'dart:math' as m;
import '../models/boq_item.dart';
import '../models/enums.dart';

class Formulas {
  static String unitLabel(Unit u, String manual) {
    switch (u) {
      case Unit.m3: return 'м³';
      case Unit.m2: return 'м²';
      case Unit.m: return 'м';
      case Unit.pcs: return 'шт';
    }
  }

  static double qty(BoqItem it) {
    switch (it.workTypeId) {
      // Бетон
      case 'beton_slab':
        return _nn(it.length * it.width * it.thickness) * it.count;
      case 'beton_strip':
        return _nn(it.length * it.width * it.height) * it.count;
      case 'beton_beam':
        return _nn(it.length * it.width * it.height) * it.count;
      case 'beton_col_rect':
        return _nn(it.width * it.thickness * it.height) * it.count;
      case 'beton_col_cyl':
        final r = it.diameter / 2.0;
        return _nn(m.pi * r * r * it.height) * it.count;

      // Земляные
      case 'earth_trench':
      case 'earth_backfill':
        return _nn(it.length * it.width * it.height) * it.count;

      // Кладка / отделка
      case 'masonry':
        return _nn(it.length * it.height * it.thickness) * it.count;
      case 'plaster_wall':
      case 'putty_wall':
      case 'paint_apply':
      case 'tile_wall':
      case 'gkl_wall':
        return _nn((it.length * it.height - it.openings)) * it.count;

      case 'screed':
      case 'hydro':
      case 'tile_floor':
      case 'roof_sheet':
      case 'interior_misc':
        return _nn(it.length * it.width) * it.count;

      // Монтаж/демонтаж элементов штуками
      case 'door_install':
      case 'window_install':
      case 'door_dismantle':
      case 'window_dismantle':
        return _nn(it.count.toDouble());

      // Демонтаж
      case 'dem_concrete':
        return _nn(it.length * it.width * it.height) * it.count;
      case 'dem_wall':
      case 'paint_remove':
        return _nn((it.length * it.height - it.openings)) * it.count;

      // Ручная позиция
      case 'custom':
        return _nn(it.manualQty) * it.count;


      case 'plumbing_install':
      case 'plumbing_dismantle':
      case 'electric_install':
      case 'electric_dismantle':
        return _nn(it.count.toDouble());

      case 'gkl_install':
      case 'gkl_dismantle':
        return _nn((it.length * it.height - it.openings)) * it.count;

      case 'screed_floor':
      case 'floor_laminate':
      case 'floor_linoleum':
        return _nn(it.length * it.width) * it.count;


      case 'plumb_install':
      case 'plumb_dismantle':
      case 'elec_install':
      case 'elec_dismantle':
        return _nn(it.count.toDouble());

      case 'gkl_ceiling':
      case 'floor_laminate':
      case 'floor_linoleum':
        return _nn(it.length * it.width) * it.count;

      case 'gkl_partition':
        return _nn(it.length * it.height) * it.count;


      case 'plumb_point_install':
      case 'plumb_point_dismantle':
      case 'elec_point_install':
      case 'elec_point_dismantle':
        return _nn(it.count.toDouble());

      case 'pipe_laying':
      case 'cable_laying':
        return _nn(it.length) * it.count;

      case 'floor_selflevel':
      case 'floor_carpet':
      case 'floor_pvc':
      case 'ceiling_armstrong':
        return _nn(it.length * it.width) * it.count;

      default:
        return 0;
    }
  }

  static double lineTotal(BoqItem it) {
    return qty(it) * (it.unitPrice);
  }

  static double _nn(double v) => v.isNaN ? 0 : (v < 0 ? 0 : v);
}
