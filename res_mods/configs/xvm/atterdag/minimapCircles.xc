/**
 * Minimap circles. Only real map meters. Only for own unit.
 * Круги на миникарте. Дистанция только в реальных метрах карты. Только для своей техники.
 */
{
  // Artillery gun fire range circle
  // Круг дальности стрельбы арты
  // "enabled": false - выключен; "thickness" - толщина; "alpha" - прозрачность; "color" - цвет.
  "rangeCircle": { "enabled": true, "thickness": 1, "alpha": 60, "color": "0xEE4444" },

  "circles": {
        "enabled": true,
        // TODO: better description and translation
        // View distance
        // Дальность обзора
        // Параметры:
        //   "enabled": false - выключен
        //   "distance" - дистанция
        //   "scale" - масштаб круга (множитель расстояния) (параметр не обязательный)
        //   "thickness" - толщина
        //   "alpha" - прозрачность
        //   "color" - цвет
        //   "state" - состояние танка: 1-стоит, 2-двигается (параметр не обязательный)
        // Доступные значения расстояния:
        //   N - число в метрах, рисуется статический круг
        //   "dynamic"   - реальная дальность обзора танка c учётом стоит/движется
        //   "motion"    - реальная дальность обзора танка в движении
        //   "standing"  - реальная дальность обзора танка стоя
        //   "blindarea" - реальная граница слепой зоны танка (50<=X<=445)
        //   "blindarea_motion" - реальная граница слепой зоны танка в движении (50<=X<=445)
        //   "blindarea_standing" - реальная граница слепой зоны танка стоя (50<=X<=445)
        // Источник:
        //   http://www.koreanrandom.com/forum/topic/15467-/page-5#entry187139
        //   http://www.koreanrandom.com/forum/topic/15467-/page-4#entry186794
        "view": [
            // Main circles:
            // Основные круги:
            { "enabled":  true, "distance": "blindarea", "scale": 1, "thickness": 0.75, "alpha": 80, "color": "0x3EB5F1" },
            { "enabled":  true, "distance": 445,         "scale": 1, "thickness":  1.1, "alpha": 45, "color": "0xFFCC66" },
            // Additional circles:
            // Дополнительные круги:
            { "enabled":  true, "distance": 50,          "scale": 1, "thickness": 0.75, "alpha": 45, "color": "0x96FF00" },
            { "enabled": false, "distance": "standing",  "scale": 1, "thickness":  1.0, "alpha": 60, "color": "0xFF0000" },
            { "enabled": false, "distance": "motion",    "scale": 1, "thickness":  1.0, "alpha": 60, "color": "0x0000FF" },
            { "enabled": false, "distance": "dynamic",   "scale": 1, "thickness":  1.0, "alpha": 60, "color": "0x3EB5F1" }
        ],
        // Maximum range of fire for artillery
        // Artillery gun fire range may differ depending on vehicle angle relative to ground
        // and vehicle height positioning relative to target. These factors are not considered.
        // See pics at http://goo.gl/ZqlPa
        // ------------------------------------------------------------------------------------------------
        // Максимальная дальность стрельбы для артиллерии
        // Дальнобойность арты может меняться в зависимости от углов постановки машины на склонах местности
        // и высоте расположения машины относительно цели. На миникарте эти факторы не учитываются.
        // Подробнее по ссылке: http://goo.gl/ZqlPa
        "artillery": { "enabled": true, "alpha": 55, "color": "0xFF6666", "thickness": 0.5 },
        // Maximum range of shooting for machine gun
        // Максимальная дальность полета снаряда для пулеметных танков
        "shell":     { "enabled": true, "alpha": 55, "color": "0xFF6666", "thickness": 0.5 },
        // Special circles dependent on vehicle type.
        // Many configuration lines for the same vehicle make many circles.
        // See other vehicle types at (replace : symbol with -):
        // http://code.google.com/p/wot-xvm/source/browse/trunk/src/xpm/xvmstat/vehinfo_short.py
        // ------------------------------------------------------------------------------------------------
        // Специальные круги, зависящие от модели техники.
        // Несколько строк для одной техники делают несколько кругов.
        // Названия танков для дополнения брать по ссылке (символ : заменяется -):
        // http://code.google.com/p/wot-xvm/source/browse/trunk/src/xpm/xvmstat/vehinfo_short.py
        "special": [
          // Example: Artillery gun fire range circle
          // Пример: Круг дальности стрельбы арты
          // "enabled": false - выключен; "thickness" - толщина; "alpha" - прозрачность; "color" - цвет.
          //{ "ussr-SU-18": { "enabled": true, "thickness": 1, "alpha": 60, "color": "0xEE4444", "distance": 500 } },
          { "ussr-SU-18":                  {"$ref": { "path": "rangeCircle" }, "distance": 500 } },
          { "germany-GW_Mk_VIe":           {"$ref": { "path": "rangeCircle" }, "distance": 850 } },
          { "usa-T57":                     {"$ref": { "path": "rangeCircle" }, "distance": 553 } },
          { "france-RenaultBS":            {"$ref": { "path": "rangeCircle" }, "distance": 483 } },
          { "uk-GB25_Loyd_Carrier":        {"$ref": { "path": "rangeCircle" }, "distance": 509 } },
        // level 3
          { "ussr-SU-26":                  {"$ref": { "path": "rangeCircle" }, "distance": 1218} },
          { "germany-Bison_I":             {"$ref": { "path": "rangeCircle" }, "distance": 602 } },
          { "germany-Wespe":               {"$ref": { "path": "rangeCircle" }, "distance": 989 } },
          { "usa-M7_Priest":               {"$ref": { "path": "rangeCircle" }, "distance": 989 } },
          { "france-Lorraine39_L_AM":      {"$ref": { "path": "rangeCircle" }, "distance": 983 } },
          { "uk-GB27_Sexton":              {"$ref": { "path": "rangeCircle" }, "distance": 1051} },
          { "uk-GB78_Sexton_I":            {"$ref": { "path": "rangeCircle" }, "distance": 1051} },
        // level 4
          { "ussr-SU-5":                   {"$ref": { "path": "rangeCircle" }, "distance": 613 } },
          { "germany-Sturmpanzer_II":      {"$ref": { "path": "rangeCircle" }, "distance": 602 } },
          { "germany-Pz_Sfl_IVb":          {"$ref": { "path": "rangeCircle" }, "distance": 989 } },
          { "usa-M37":                     {"$ref": { "path": "rangeCircle" }, "distance": 989 } },
          { "france-AMX_Ob_Am105":         {"$ref": { "path": "rangeCircle" }, "distance": 1288} },
          { "uk-GB26_Birch_Gun":           {"$ref": { "path": "rangeCircle" }, "distance": 1051} },
        // level 5
          { "ussr-SU122A":                 {"$ref": { "path": "rangeCircle" }, "distance": 1201} },
          { "germany-Grille":              {"$ref": { "path": "rangeCircle" }, "distance": 836 } },
          { "usa-M41":                     {"$ref": { "path": "rangeCircle" }, "distance": 1294} },
          { "france-AMX_105AM":            {"$ref": { "path": "rangeCircle" }, "distance": 1288} },
          { "france-_105_leFH18B2":        {"$ref": { "path": "rangeCircle" }, "distance": 1000} },
          { "uk-GB28_Bishop":              {"$ref": { "path": "rangeCircle" }, "distance": 500 } },
        // level 6
          { "ussr-SU-8":                   {"$ref": { "path": "rangeCircle" }, "distance": 1345} },
          { "germany-Hummel":              {"$ref": { "path": "rangeCircle" }, "distance": 1260} },
          { "usa-M44":                     {"$ref": { "path": "rangeCircle" }, "distance": 1294} },
          { "france-AMX_13F3AM":           {"$ref": { "path": "rangeCircle" }, "distance": 1381} },
          { "uk-GB77_FV304":               {"$ref": { "path": "rangeCircle" }, "distance": 500 } },
        // level 7
          { "ussr-S-51":                   {"$ref": { "path": "rangeCircle" }, "distance": 1264} },
          { "ussr-SU14_1":                 {"$ref": { "path": "rangeCircle" }, "distance": 1264} },
          { "germany-G_Panther":           {"$ref": { "path": "rangeCircle" }, "distance": 1300} },
          { "usa-M12":                     {"$ref": { "path": "rangeCircle" }, "distance": 1413} },
          { "france-Lorraine155_50":       {"$ref": { "path": "rangeCircle" }, "distance": 1350} },
          { "uk-GB29_Crusader_5inch":      {"$ref": { "path": "rangeCircle" }, "distance": 1327} },
        // level 8
          { "ussr-SU-14":                  {"$ref": { "path": "rangeCircle" }, "distance": 1264} },
          { "germany-GW_Tiger_P":          {"$ref": { "path": "rangeCircle" }, "distance": 1333} },
          { "usa-M40M43":                  {"$ref": { "path": "rangeCircle" }, "distance": 1336} },
          { "france-Lorraine155_51":       {"$ref": { "path": "rangeCircle" }, "distance": 1368} },
          { "uk-GB79_FV206":               {"$ref": { "path": "rangeCircle" }, "distance": 1405} },
        // level 9
          { "ussr-Object_212":             {"$ref": { "path": "rangeCircle" }, "distance": 1264} },
          { "germany-G_Tiger":             {"$ref": { "path": "rangeCircle" }, "distance": 1333} },
          { "usa-M53_55":                  {"$ref": { "path": "rangeCircle" }, "distance": 1291} },
          { "france-Bat_Chatillon155_55":  {"$ref": { "path": "rangeCircle" }, "distance": 1413} },
          { "uk-GB30_FV3805":              {"$ref": { "path": "rangeCircle" }, "distance": 1354} },
        // level 10
          { "ussr-Object_261":             {"$ref": { "path": "rangeCircle" }, "distance": 1470} },
          { "germany-G_E":                 {"$ref": { "path": "rangeCircle" }, "distance": 1333} },
          { "usa-T92":                     {"$ref": { "path": "rangeCircle" }, "distance": 1411} },
          { "france-Bat_Chatillon155_58":  {"$ref": { "path": "rangeCircle" }, "distance": 1413} },
          { "uk-GB31_Conqueror_Gun":       {"$ref": { "path": "rangeCircle" }, "distance": 1007} }
		]
    }
}