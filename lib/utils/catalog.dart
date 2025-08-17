import '../models/enums.dart';
import '../models/work_type.dart';

class Catalog {
  static const types = <WorkType>[
    // Бетон
    WorkType(id: 'beton_slab', name: 'Бетон — плита/перекрытие (м³)', unit: Unit.m3,
      fields: [Field.length, Field.width, Field.thickness, Field.count]),
    WorkType(id: 'beton_strip', name: 'Бетон — лента фундамента (м³)', unit: Unit.m3,
      fields: [Field.length, Field.width, Field.height, Field.count]),
    WorkType(id: 'beton_beam', name: 'Бетон — балка (м³)', unit: Unit.m3,
      fields: [Field.length, Field.width, Field.height, Field.count]),
    WorkType(id: 'beton_col_rect', name: 'Бетон — колонна прямоуг. (м³)', unit: Unit.m3,
      fields: [Field.width, Field.thickness, Field.height, Field.count]),
    WorkType(id: 'beton_col_cyl', name: 'Бетон — колонна цилиндр. (м³)', unit: Unit.m3,
      fields: [Field.diameter, Field.height, Field.count]),

    // Земляные
    WorkType(id: 'earth_trench', name: 'Земляные — траншея (м³)', unit: Unit.m3,
      fields: [Field.length, Field.width, Field.height, Field.count]),
    WorkType(id: 'earth_backfill', name: 'Земляные — обратная засыпка (м³)', unit: Unit.m3,
      fields: [Field.length, Field.width, Field.height, Field.count]),

    // Кладка / отделка
    WorkType(id: 'masonry', name: 'Кладка (м³)', unit: Unit.m3,
      fields: [Field.length, Field.height, Field.thickness, Field.count]),

    WorkType(id: 'plaster_wall', name: 'Штукатурка стен (м²)', unit: Unit.m2,
      fields: [Field.length, Field.height, Field.openings, Field.count]),
    WorkType(id: 'putty_wall', name: 'Шпаклёвка стен (м²)', unit: Unit.m2,
      fields: [Field.length, Field.height, Field.openings, Field.count]),
    WorkType(id: 'paint_apply', name: 'Окраска стен (м²)', unit: Unit.m2,
      fields: [Field.length, Field.height, Field.openings, Field.count]),

    WorkType(id: 'screed', name: 'Стяжка пола (м²)', unit: Unit.m2,
      fields: [Field.length, Field.width, Field.count]),
    WorkType(id: 'hydro', name: 'Гидроизоляция (м²)', unit: Unit.m2,
      fields: [Field.length, Field.width, Field.count]),

    WorkType(id: 'gkl_wall', name: 'Монтаж ГКЛ стен (м²)', unit: Unit.m2,
      fields: [Field.length, Field.height, Field.count]),
    WorkType(id: 'tile_floor', name: 'Плитка — пол (м²)', unit: Unit.m2,
      fields: [Field.length, Field.width, Field.count]),
    WorkType(id: 'tile_wall', name: 'Плитка — стены (м²)', unit: Unit.m2,
      fields: [Field.length, Field.height, Field.openings, Field.count]),

    WorkType(id: 'roof_sheet', name: 'Кровля профлист (м²)', unit: Unit.m2,
      fields: [Field.length, Field.width, Field.count]),

    // Монтаж
    WorkType(id: 'door_install', name: 'Монтаж двери (шт)', unit: Unit.pcs,
      fields: [Field.count]),
    WorkType(id: 'window_install', name: 'Монтаж окна (шт)', unit: Unit.pcs,
      fields: [Field.count]),

    // Демонтаж (новые)
    WorkType(id: 'dem_concrete', name: 'Демонтаж бетона (м³)', unit: Unit.m3,
      fields: [Field.length, Field.width, Field.height, Field.count]),
    WorkType(id: 'dem_wall', name: 'Демонтаж стен/перегородок (м²)', unit: Unit.m2,
      fields: [Field.length, Field.height, Field.openings, Field.count]),
    WorkType(id: 'paint_remove', name: 'Демонтаж (снятие) краски (м²)', unit: Unit.m2,
      fields: [Field.length, Field.height, Field.openings, Field.count]),
    WorkType(id: 'door_dismantle', name: 'Демонтаж двери (шт)', unit: Unit.pcs,
      fields: [Field.count]),
    WorkType(id: 'window_dismantle', name: 'Демонтаж окна (шт)', unit: Unit.pcs,
      fields: [Field.count]),

    // Прочее
    WorkType(id: 'interior_misc', name: 'Внутренние работы (м²)', unit: Unit.m2,
      fields: [Field.length, Field.width, Field.count]),

    // Ручная позиция

    // --- Новые виды работ (вторая партия) ---
    WorkType(id: 'plumbing_install', name: 'Монтаж сантехники (шт)', unit: Unit.pcs,
      fields: [Field.count]),
    WorkType(id: 'plumbing_dismantle', name: 'Демонтаж сантехники (шт)', unit: Unit.pcs,
      fields: [Field.count]),
    WorkType(id: 'electric_install', name: 'Монтаж электрики (точка)', unit: Unit.pcs,
      fields: [Field.count]),
    WorkType(id: 'electric_dismantle', name: 'Демонтаж электрики (точка)', unit: Unit.pcs,
      fields: [Field.count]),
    WorkType(id: 'gkl_install', name: 'Монтаж ГКЛ (м²)', unit: Unit.m2,
      fields: [Field.length, Field.height, Field.openings, Field.count]),
    WorkType(id: 'gkl_dismantle', name: 'Демонтаж ГКЛ (м²)', unit: Unit.m2,
      fields: [Field.length, Field.height, Field.openings, Field.count]),
    WorkType(id: 'screed_floor', name: 'Стяжка пола (м²)', unit: Unit.m2,
      fields: [Field.length, Field.width, Field.count]),
    WorkType(id: 'floor_laminate', name: 'Покрытие пола ламинат (м²)', unit: Unit.m2,
      fields: [Field.length, Field.width, Field.count]),
    WorkType(id: 'floor_linoleum', name: 'Покрытие пола линолеум (м²)', unit: Unit.m2,
      fields: [Field.length, Field.width, Field.count]),

    // --- Новые: сантехника/электрика, ГКЛ, покрытия пола ---
    WorkType(id: 'plumb_install', name: 'Сантехника — монтаж (шт)', unit: Unit.pcs,
      fields: [Field.count]),
    WorkType(id: 'plumb_dismantle', name: 'Сантехника — демонтаж (шт)', unit: Unit.pcs,
      fields: [Field.count]),
    WorkType(id: 'elec_install', name: 'Электрика — монтаж (шт)', unit: Unit.pcs,
      fields: [Field.count]),
    WorkType(id: 'elec_dismantle', name: 'Электрика — демонтаж (шт)', unit: Unit.pcs,
      fields: [Field.count]),

    WorkType(id: 'gkl_ceiling', name: 'ГКЛ — потолок (м²)', unit: Unit.m2,
      fields: [Field.length, Field.width, Field.count]),
    WorkType(id: 'gkl_partition', name: 'ГКЛ — перегородки (м²)', unit: Unit.m2,
      fields: [Field.length, Field.height, Field.count]),

    WorkType(id: 'floor_laminate', name: 'Покрытие пола — ламинат (м²)', unit: Unit.m2,
      fields: [Field.length, Field.width, Field.count]),
    WorkType(id: 'floor_linoleum', name: 'Покрытие пола — линолеум (м²)', unit: Unit.m2,
      fields: [Field.length, Field.width, Field.count]),

    // --- Новые расширенные категории ---
    WorkType(id: 'plumb_point_install', name: 'Сантехническая точка — монтаж (шт)', unit: Unit.pcs,
      fields: [Field.count]),
    WorkType(id: 'plumb_point_dismantle', name: 'Сантехническая точка — демонтаж (шт)', unit: Unit.pcs,
      fields: [Field.count]),
    WorkType(id: 'pipe_laying', name: 'Прокладка труб (п.м.)', unit: Unit.m,
      fields: [Field.length, Field.count]),

    WorkType(id: 'elec_point_install', name: 'Электроточка — монтаж (шт)', unit: Unit.pcs,
      fields: [Field.count]),
    WorkType(id: 'elec_point_dismantle', name: 'Электроточка — демонтаж (шт)', unit: Unit.pcs,
      fields: [Field.count]),
    WorkType(id: 'cable_laying', name: 'Прокладка кабеля (п.м.)', unit: Unit.m,
      fields: [Field.length, Field.count]),

    WorkType(id: 'floor_selflevel', name: 'Наливной пол (м²)', unit: Unit.m2,
      fields: [Field.length, Field.width, Field.count]),
    WorkType(id: 'floor_carpet', name: 'Ковролин (м²)', unit: Unit.m2,
      fields: [Field.length, Field.width, Field.count]),
    WorkType(id: 'floor_pvc', name: 'ПВХ-плитка / кварцвинил (м²)', unit: Unit.m2,
      fields: [Field.length, Field.width, Field.count]),

    WorkType(id: 'ceiling_armstrong', name: 'Потолок Армстронг (м²)', unit: Unit.m2,
      fields: [Field.length, Field.width, Field.count]),
    WorkType(id: 'custom', name: 'Произвольная позиция', unit: Unit.m2,
      fields: [Field.manualQty, Field.manualUnit, Field.count]),
  ];
}
