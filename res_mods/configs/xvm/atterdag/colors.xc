/**
 * Color settings.
 * Настройки цветов.
 */
{
  // Color values for substitutions.
  // Значения цветов для подстановок.
  "def": {
    "al": "0x96FF00", // ally       / союзник
    "sq": "0xFFB964", // squadman   / взводный
    "tk": "0x00EAFF", // teamKiller / тимкиллер
    "en": "0xF50800", // enemy      / противник
    "pl": "0xFFDD33", // player     / игрок
    // Dynamic color by various statistical parameters.
    // Динамический цвет по различным статистическим показателям.
    "colorRating": {
      "very_bad":     "0xFE0E00",   // very bad   / очень плохо
      "bad":          "0xFE7903",   // bad        / плохо
      "normal":       "0xF8F400",   // normal     / средне
      "good":         "0x60FF00",   // good       / хорошо
      "very_good":    "0x02C9B3",   // very good  / очень хорошо
      "unique":       "0xD042F3"    // unique     / уникально
    },
    // WoTLabs ratings
    "wnColorRating": {
      "very_bad":      "0xBAAAAD",
      "bad":           "0xF11919",
      "below_average": "0xFF8A00",
      "average":       "0xE6DF27",
      "good":          "0x77E812",
      "very_good":     "0x459300",
      "great":         "0x00A0B8",
      "unicum":        "0xC64CFF",
      "super_unicum":  "0x8225AD"
    },
    // WoTLabs ratings
    "wotlabsColorRating": {
      "beginner":      "0xBAAAAD",
      "basic":         "0xF11919",
      "below_average": "0xFF8A00",
      "average":       "0xE6DF27",
      "above_average": "0x77E812",
      "good":          "0x459300",
      "very_good":     "0x2AE4FF",
      "great":         "0x00A0B8",
      "unicum":        "0xC64CFF",
      "super_unicum":  "0x8225AD"
    },
    // Dynamic color by remaining health points.
    // Динамический цвет по оставшемуся запасу прочности.
    "colorHP": {
      "very_low":         "0xFF0000",   // very low       / очень низкий
      "low":              "0xDD4444",   // low            / низкий
      "average":          "0xFE7903",   // average        / средний
      "above_average":    "0xFCFCFC"    // above-average  / выше среднего
    }
  },
  "colors": {
    // System colors.
    // Системные цвета.
    "system": {
      // Format: object_state
      // Object:      ally, squadman, teamKiller, enemy
      // State:       alive, dead, blowedup
      // ----
      // Формат: объект_состояние
      // Объект:      ally - союзник, squadman - взводный, teamKiller - тимкиллер, enemy - противник
      // Состояние:   alive - живой, dead - мертвый, blowedup - взорвана боеукладка
      "ally_alive":          ${"def.al"},
      "ally_dead":           "0x009900",
      "ally_blowedup":       "0x007700",
      "squadman_alive":      ${"def.sq"},
      "squadman_dead":       "0xCA7000",
      "squadman_blowedup":   "0xA45A00",
      "teamKiller_alive":    ${"def.tk"},
      "teamKiller_dead":     "0x097783",
      "teamKiller_blowedup": "0x096A75",
      "enemy_alive":         ${"def.en"},
      "enemy_dead":          "0x840500",
      "enemy_blowedup":      "0x5A0401",
      "ally_base":           ${"def.al"},
      "enemy_base":          ${"def.en"}
    },
    // Dynamic color by damage kind.
    // Динамический цвет по типу урона.
    "dmg_kind": {
      "shot": "0xFFAA55",            // shot / попадание
      "fire": "0xFF6655",            // fire / пожар
      "ramming": "0x998855",         // ramming / таран
      "world_collision": "0x228855", // world collision / столкновение с объектами, падение
      "other": "0xCCCCCC"            // other / другое
    },
    // Dynamic color by vehicle type.
    // Динамический цвет по типу техники.
    "vtype": {
      // Цвет для легких танков.
      "LT":  "0xA2FF9A",
      // Цвет для средних танков.
      "MT":  "0xFFF198",
      // Цвет для тяжелых танков.
      "HT":  "0xFFACAC",
      // Цвет для арты.
      "SPG": "0xEFAEFF",
      // Цвет для ПТ.
      "TD":  "0xA0CFFF",
      // Цвет для премиумной техники.
      "premium": "0xFFCC66",
      // Включить/выключить использование премиумного цвета.
      "usePremiumColor": false
    },
    // Dynamic color by spotted status
    // Динамический цвет по статусу засвета
    "spotted": {
      "neverSeen":      "0x000000",
      "lost":           "0xD9D9D9",
      "revealed":       "0xFFBB00",
      "dead":           "0xFFFFFF",
      "neverSeen_arty": "0x000000",
      "lost_arty":      "0xD9D9D9",
      "revealed_arty":  "0xFFBB00",
      "dead_arty":      "0xFFFFFF"
    },
    // Color settings for damage.
    // Настройки цвета для урона.
    "damage": {
      // Format: src_dst_type.
      // Src:  ally, squadman, enemy, unknown, player.
      // Dst:  ally, squadman, allytk, enemytk, enemy.
      // Type: hit, kill, blowup.
      // ----
      // Формат: источник_получатель_тип.
      // Источник:   ally - союзник, squadman - взводный, enemy - противник, unknown - неизвестный (не виден игроку), player - игрок.
      // Получатель: ally, squadman, enemy, allytk - союзник тимкиллер, enemytk - противник тимкиллер.
      // Тип:        hit - попадание, kill - убийство, blowup - боеукладка.
      "ally_ally_hit":              ${"def.tk"},
      "ally_ally_kill":             ${"def.tk"},
      "ally_ally_blowup":           ${"def.tk"},
      "ally_squadman_hit":          ${"def.tk"},
      "ally_squadman_kill":         ${"def.tk"},
      "ally_squadman_blowup":       ${"def.tk"},
      "ally_enemy_hit":             ${"def.en"},
      "ally_enemy_kill":            ${"def.en"},
      "ally_enemy_blowup":          ${"def.en"},
      "ally_allytk_hit":            ${"def.tk"},
      "ally_allytk_kill":           ${"def.tk"},
      "ally_allytk_blowup":         ${"def.tk"},
      "ally_enemytk_hit":           ${"def.en"},
      "ally_enemytk_kill":          ${"def.en"},
      "ally_enemytk_blowup":        ${"def.en"},
      "enemy_ally_hit":             ${"def.al"},
      "enemy_ally_kill":            ${"def.al"},
      "enemy_ally_blowup":          ${"def.al"},
      "enemy_squadman_hit":         "0xFF00FF",
      "enemy_squadman_kill":        "0xFF00FF",
      "enemy_squadman_blowup":      "0xFF00FF",
      "enemy_enemy_hit":            ${"def.en"},
      "enemy_enemy_kill":           ${"def.en"},
      "enemy_enemy_blowup":         ${"def.en"},
      "enemy_allytk_hit":           ${"def.al"},
      "enemy_allytk_kill":          ${"def.al"},
      "enemy_allytk_blowup":        ${"def.al"},
      "enemy_enemytk_hit":          ${"def.en"},
      "enemy_enemytk_kill":         ${"def.en"},
      "enemy_enemytk_blowup":       ${"def.en"},
      "unknown_ally_hit":           ${"def.al"},
      "unknown_ally_kill":          ${"def.al"},
      "unknown_ally_blowup":        ${"def.al"},
      "unknown_squadman_hit":       "0xFF00FF",
      "unknown_squadman_kill":      "0xFF00FF",
      "unknown_squadman_blowup":    "0xFF00FF",
      "unknown_enemy_hit":          ${"def.en"},
      "unknown_enemy_kill":         ${"def.en"},
      "unknown_enemy_blowup":       ${"def.en"},
      "unknown_allytk_hit":         ${"def.al"},
      "unknown_allytk_kill":        ${"def.al"},
      "unknown_allytk_blowup":      ${"def.al"},
      "unknown_enemytk_hit":        ${"def.en"},
      "unknown_enemytk_kill":       ${"def.en"},
      "unknown_enemytk_blowup":     ${"def.en"},
      "squadman_ally_hit":          ${"def.tk"},
      "squadman_ally_kill":         ${"def.tk"},
      "squadman_ally_blowup":       ${"def.tk"},
      "squadman_squadman_hit":      ${"def.tk"},
      "squadman_squadman_kill":     ${"def.tk"},
      "squadman_squadman_blowup":   ${"def.tk"},
      "squadman_enemy_hit":         "0xFFB964",
      "squadman_enemy_kill":        "0xFFB964",
      "squadman_enemy_blowup":      "0xFFB964",
      "squadman_allytk_hit":        ${"def.tk"},
      "squadman_allytk_kill":       ${"def.tk"},
      "squadman_allytk_blowup":     ${"def.tk"},
      "squadman_enemytk_hit":       ${"def.en"},
      "squadman_enemytk_kill":      ${"def.en"},
      "squadman_enemytk_blowup":    ${"def.en"},
      "player_ally_hit":            ${"def.pl"},
      "player_ally_kill":           ${"def.pl"},
      "player_ally_blowup":         ${"def.pl"},
      "player_squadman_hit":        ${"def.pl"},
      "player_squadman_kill":       ${"def.pl"},
      "player_squadman_blowup":     ${"def.pl"},
      "player_enemy_hit":           ${"def.pl"},
      "player_enemy_kill":          ${"def.pl"},
      "player_enemy_blowup":        ${"def.pl"},
      "player_allytk_hit":          ${"def.pl"},
      "player_allytk_kill":         ${"def.pl"},
      "player_allytk_blowup":       ${"def.pl"},
      "player_enemytk_hit":         ${"def.pl"},
      "player_enemytk_kill":        ${"def.pl"},
      "player_enemytk_blowup":      ${"def.pl"}
    },
    // Values below should be from smaller to larger.
    // Значения ниже должны быть от меньшего к большему.
    // ----
    // Dynamic color by remaining absolute health.
    // Динамический цвет по оставшемуся здоровью.
    "hp": [
      { "value": 201,  "color": ${"def.colorHP.very_low"          } },   // Цвет для значений менее 201
      { "value": 401,  "color": ${"def.colorHP.low"               } },   // Цвет для значений менее 401
      { "value": 1001, "color": ${"def.colorHP.average"           } },   // Цвет для значений менее 1001
      { "value": 9999, "color": ${"def.colorHP.above_average"     } }    // Цвет для остальных значений
    ],
    // Dynamic color by remaining health percent.
    // Динамический цвет по проценту оставшегося здоровья.
    "hp_ratio": [
      { "value": 10,  "color": ${"def.colorHP.very_low"           } },   // Цвет для значений менее 10 проц
      { "value": 25,  "color": ${"def.colorHP.low"                } },   // Цвет для значений менее 25 проц
      { "value": 50,  "color": ${"def.colorHP.average"            } },   // Цвет для значений менее 50 проц
      { "value": 101, "color": ${"def.colorHP.above_average"      } }    // Цвет для остальных значений
    ],
    // Dynamic color for XVM Scale
    // Динамический цвет по шкале XVM
    // http://www.koreanrandom.com/forum/topic/2625-/
    "x": [
      { "value": 16.5, "color": ${"def.colorRating.very_bad" } },   // 00   - 16.5 - very bad   (20% of players)
      { "value": 33.5, "color": ${"def.colorRating.bad"      } },   // 16.5 - 33.5 - bad        (better then 20% of players)
      { "value": 52.5, "color": ${"def.colorRating.normal"   } },   // 33.5 - 52.5 - normal     (better then 60% of players)
      { "value": 75.5, "color": ${"def.colorRating.good"     } },   // 52.5 - 75.5 - good       (better then 90% of players)
      { "value": 92.5, "color": ${"def.colorRating.very_good"} },   // 75.5 - 92.5 - very good  (better then 99% of players)
      { "value": 999,  "color": ${"def.colorRating.unique"   } }    // 92.5 - XX   - unique     (better then 99.9% of players)
    ],
    // Dynamic color by efficiency
    // Динамический цвет по эффективности
    "eff": [
      { "value": 610,  "color": ${"def.colorRating.very_bad" } },  //    0 - 609  - very bad   (20% of players)
      { "value": 865,  "color": ${"def.colorRating.bad"      } },  //  610 - 864  - bad        (better then 20% of players)
      { "value": 1165, "color": ${"def.colorRating.normal"   } },  //  865 - 1164 - normal     (better then 60% of players)
      { "value": 1515, "color": ${"def.colorRating.good"     } },  // 1165 - 1514 - good       (better then 90% of players)
      { "value": 1835, "color": ${"def.colorRating.very_good"} },  // 1515 - 1834 - very good  (better then 99% of players)
      { "value": 9999, "color": ${"def.colorRating.unique"   } }   // 1835 - *    - unique     (better then 99.9% of players)
    ],
    // Dynamic color by WN6 rating
    // Динамический цвет по рейтингу WN6
    "wn6": [
      { "value":  499, "color": ${"def.wnColorRating.very_bad"      } },   //    0 -  499 - very bad
      { "value":  699, "color": ${"def.wnColorRating.bad"           } },   //  500 -  699 - bad
      { "value":  899, "color": ${"def.wnColorRating.below_average" } },   //  700 -  899 - below average
      { "value": 1099, "color": ${"def.wnColorRating.average"       } },   //  900 - 1099 - average
      { "value": 1349, "color": ${"def.wnColorRating.good"          } },   // 1100 - 1349 - good
      { "value": 1549, "color": ${"def.wnColorRating.very_good"     } },   // 1350 - 1549 - very good
      { "value": 1849, "color": ${"def.wnColorRating.great"         } },   // 1550 - 1849 - great
      { "value": 2049, "color": ${"def.wnColorRating.unicum"        } },   // 1850 - 2049 - unicum
      { "value": 9999, "color": ${"def.wnColorRating.super_unicum"  } }    // 2050 - *    - super unicum
    ],
    // Dynamic color by WN8 rating
    "wn8": [
      { "value":  299, "color": ${"def.wotlabsColorRating.beginner"      } },   //    0 -  299 - very bad
      { "value":  449, "color": ${"def.wotlabsColorRating.basic"         } },   //  300 -  449 - bad
      { "value":  649, "color": ${"def.wotlabsColorRating.below_average" } },   //  500 -  649 - below average
      { "value":  899, "color": ${"def.wotlabsColorRating.average"       } },   //  700 -  899 - average
      { "value": 1199, "color": ${"def.wotlabsColorRating.above_average" } },   //  900 - 1199 - above average
      { "value": 1599, "color": ${"def.wotlabsColorRating.good"          } },   // 1200 - 1599 - good
      { "value": 1999, "color": ${"def.wotlabsColorRating.very_good"     } },   // 1600 - 1999 - very good
      { "value": 2449, "color": ${"def.wotlabsColorRating.great"         } },   // 2000 - 2449 - great
      { "value": 2899, "color": ${"def.wotlabsColorRating.unicum"        } },   // 2450 - 2899 - unicum
      { "value": 9999, "color": ${"def.wotlabsColorRating.super_unicum"  } }    // 2900 - *    - super unicum
    ],
    // Dynamic color by WG rating
    // Динамический цвет по рейтингу WG
    // TODO: update values
    "wgr": [
      { "value": 2405,  "color": ${"def.colorRating.very_bad" } },  //    0 - 2404 - very bad   (20% of players)
      { "value": 4250,  "color": ${"def.colorRating.bad"      } },  // 2405 - 4249 - bad        (better then 20% of players)
      { "value": 6350,  "color": ${"def.colorRating.normal"   } },  // 4250 - 6349 - normal     (better then 60% of players)
      { "value": 8550,  "color": ${"def.colorRating.good"     } },  // 6350 - 8549 - good       (better then 90% of players)
      { "value": 9960,  "color": ${"def.colorRating.very_good"} },  // 8550 - 9959 - very good  (better then 99% of players)
      { "value": 99999, "color": ${"def.colorRating.unique"   } }   // 9960 - *    - unique     (better then 99.9% of players)
    ],
    // Dynamic color for win chance
    // Динамический цвет для шанса на победу
    "winChance": [
      { "value": 24.5, "color": ${"def.colorRating.very_bad" } },
      { "value": 39.5, "color": ${"def.colorRating.bad"      } },
      { "value": 59.5, "color": ${"def.colorRating.normal"   } },
      { "value": 74.5, "color": ${"def.colorRating.good"     } },
      { "value": 89.5, "color": ${"def.colorRating.very_good"} },
      { "value": 101,  "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by win percent
    // Динамический цвет по проценту побед
    "winrate": [
      { "value":  46,  "color": ${"def.wotlabsColorRating.beginner"      } },   //  0% - 45% - very bad
      { "value":  47,  "color": ${"def.wotlabsColorRating.basic"         } },   // 45% - 46% - bad
      { "value":  48,  "color": ${"def.wotlabsColorRating.below_average" } },   // 47% - 47% - below average
      { "value":  50,  "color": ${"def.wotlabsColorRating.average"       } },   // 48% - 49% - average
      { "value":  52,  "color": ${"def.wotlabsColorRating.above_average" } },   // 50% - 51% - above average
      { "value":  54,  "color": ${"def.wotlabsColorRating.good"          } },   // 52% - 53% - good
      { "value":  56,  "color": ${"def.wotlabsColorRating.very_good"     } },   // 54% - 55% - very good
      { "value":  60,  "color": ${"def.wotlabsColorRating.great"         } },   // 56% - 59% - great
      { "value":  65,  "color": ${"def.wotlabsColorRating.unicum"        } },   // 60% - 64% - unicum
      { "value": 101,  "color": ${"def.wotlabsColorRating.super_unicum"  } }    // 65& - *    - super unicum
    ],
    // Dynamic color by kilo-battles
    // Динамический цвет по количеству кило-боев
    "kb": [
      { "value": 2,   "color": ${"def.colorRating.very_bad" } },   //  0 - 2
      { "value": 6,   "color": ${"def.colorRating.bad"      } },   //  2 - 6
      { "value": 16,  "color": ${"def.colorRating.normal"   } },   //  6 - 16
      { "value": 30,  "color": ${"def.colorRating.good"     } },   // 16 - 30
      { "value": 43,  "color": ${"def.colorRating.very_good"} },   // 30 - 43
      { "value": 999, "color": ${"def.colorRating.unique"   } }    // 43 - *
    ],
    // Dynamic color by average level of player tanks
    // Динамический цвет по среднему уровню танков игрока
    "avglvl": [
      { "value": 2,  "color": ${"def.colorRating.very_bad" } },
      { "value": 3,  "color": ${"def.colorRating.bad"      } },
      { "value": 5,  "color": ${"def.colorRating.normal"   } },
      { "value": 7,  "color": ${"def.colorRating.good"     } },
      { "value": 9,  "color": ${"def.colorRating.very_good"} },
      { "value": 11, "color": ${"def.colorRating.unique"   } }
    ],
    // Dynamic color by battles on current tank
    // Динамический цвет по количеству боев на текущем танке
    "t_battles": [
      { "value": 100,   "color": ${"def.colorRating.very_bad" } }, //    0 - 99
      { "value": 250,   "color": ${"def.colorRating.bad"      } }, //  100 - 249
      { "value": 500,   "color": ${"def.colorRating.normal"   } }, //  250 - 499
      { "value": 1000,  "color": ${"def.colorRating.good"     } }, //  500 - 999
      { "value": 1800,  "color": ${"def.colorRating.very_good"} }, // 1000 - 1799
      { "value": 99999, "color": ${"def.colorRating.unique"   } }  // 1800 - *
    ],
    // Dynamic color by average damage on current tank
    // Динамический цвет по среднему урону за бой на текущем танке
    "tdb": [
      { "value":  500, "color": ${"def.colorRating.very_bad"      } },
      { "value":  750, "color": ${"def.colorRating.bad"           } },
      { "value": 1000, "color": ${"def.colorRating.normal"       } },
      { "value": 1800, "color": ${"def.colorRating.good"          } },
      { "value": 2500, "color": ${"def.colorRating.very_good"     } },
      { "value": 9999, "color": ${"def.colorRating.unique"        } }
    ],
    // Dynamic color by average damage efficiency on current tank 
    // Динамический цвет по эффективности урона за бой на текущем танке 
    "tdv": [
      { "value": 0.01, "color": ${"def.wnColorRating.very_bad"      } },
      { "value": 0.6,  "color": ${"def.wnColorRating.bad"           } },
      { "value": 0.8,  "color": ${"def.wnColorRating.below_average" } },
      { "value": 1.0,  "color": ${"def.wnColorRating.average"       } },
      { "value": 1.3,  "color": ${"def.wnColorRating.good"          } },
      { "value": 1.5,  "color": ${"def.wnColorRating.very_good"     } },
      { "value": 2.0,  "color": ${"def.wnColorRating.great"         } },
      { "value": 2.5,  "color": ${"def.wnColorRating.unicum"        } },
      { "value": 15,   "color": ${"def.wnColorRating.super_unicum"  } }
    ],
    // Dynamic color by average frags per battle on current tank 
    // Динамический цвет по среднему количеству фрагов за бой на текущем танке 
    "tfb": [
      { "value": 0.01, "color": ${"def.wnColorRating.very_bad"      } },
      { "value": 0.6,  "color": ${"def.wnColorRating.bad"           } },
      { "value": 0.8,  "color": ${"def.wnColorRating.below_average" } },
      { "value": 1.0,  "color": ${"def.wnColorRating.average"       } },
      { "value": 1.3,  "color": ${"def.wnColorRating.good"          } },
      { "value": 1.5,  "color": ${"def.wnColorRating.very_good"     } },
      { "value": 2.0,  "color": ${"def.wnColorRating.great"         } },
      { "value": 2.5,  "color": ${"def.wnColorRating.unicum"        } },
      { "value": 15,   "color": ${"def.wnColorRating.super_unicum"  } }
    ],
    // Dynamic color by average number of spotted enemies per battle on current tank 
    // Динамический цвет по среднему количеству засвеченных врагов за бой на текущем танке 
    "tsb": [
      { "value": 0.01, "color": ${"def.wnColorRating.very_bad"      } },
      { "value": 0.6,  "color": ${"def.wnColorRating.bad"           } },
      { "value": 0.8,  "color": ${"def.wnColorRating.below_average" } },
      { "value": 1.0,  "color": ${"def.wnColorRating.average"       } },
      { "value": 1.3,  "color": ${"def.wnColorRating.good"          } },
      { "value": 1.5,  "color": ${"def.wnColorRating.very_good"     } },
      { "value": 2.0,  "color": ${"def.wnColorRating.great"         } },
      { "value": 2.5,  "color": ${"def.wnColorRating.unicum"        } },
      { "value": 15,   "color": ${"def.wnColorRating.super_unicum"  } }
    ],
    // Dynamic color by WN8 effective damage
    // Динамический цвет по эффективному урону по WN8
    "wn8effd": [
      { "value": 0.01, "color": ${"def.wnColorRating.very_bad"      } },
      { "value": 0.6,  "color": ${"def.wnColorRating.bad"           } },
      { "value": 0.8,  "color": ${"def.wnColorRating.below_average" } },
      { "value": 1.0,  "color": ${"def.wnColorRating.average"       } },
      { "value": 1.3,  "color": ${"def.wnColorRating.good"          } },
      { "value": 1.5,  "color": ${"def.wnColorRating.very_good"     } },
      { "value": 2.0,  "color": ${"def.wnColorRating.great"         } },
      { "value": 2.5,  "color": ${"def.wnColorRating.unicum"        } },
      { "value": 15,   "color": ${"def.wnColorRating.super_unicum"  } }
    ],
    // Dynamic color by damage rating (percents for marks on gun)
    // Динамический цвет по рейтингу урона (процент для отметок на стволе)
    "damageRating": [
      { "value": 20,    "color": ${"def.colorRating.very_bad"      } },  // 20% of players
      { "value": 60,    "color": ${"def.colorRating.bad"     } },  // better then 20% of players
      { "value": 90,    "color": ${"def.colorRating.normal"  } },  // better then 60% of players
      { "value": 99,    "color": ${"def.colorRating.good"     } },  // better then 90% of players
      { "value": 99.9,  "color": ${"def.colorRating.very_good"} },  // better then 99% of players
      { "value": 101,   "color": ${"def.colorRating.unique"   } }   // better then 99.9% of players
    ],
    // Dynamic color by hit ratio (percents of hits)
    // Динамический цвет по проценту попаданий
    "hitsRatio": [
      { "value": 47.5,  "color": ${"def.colorRating.very_bad" } },
      { "value": 60.5,  "color": ${"def.colorRating.bad"      } },
      { "value": 68.5,  "color": ${"def.colorRating.normal"   } },
      { "value": 74.5,  "color": ${"def.colorRating.good"     } },
      { "value": 78.5,  "color": ${"def.colorRating.very_good"} },
      { "value": 101,   "color": ${"def.colorRating.unique"   } }
    ]
  }
}
