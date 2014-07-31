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
	  "very_bad":     "0x990000",   // very bad
      "bad":          "0xFE0E00",   // bad
	  "poor":         "0xFE7903",   // poor
      "average":      "0xF8F400",   // average
      "good":         "0x60FF00",   // good
      "very_good":    "0x00CC00",   // very good
      "excellent":    "0x02C9B3",   // excellent
      "unicum":       "0xD042F3",   // unicum
	  "super_unicum": "0x9900FF"    // super unicum
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
      "enemy_blowedup":      "0x5A0401"
    },
    // Dynamic color by damage kind.
    // Динамический цвет по типу урона.
    "dmg_kind": {
      "attack": "0xFFAA55",          // attack / атака
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
      { "value": 0,   "color": ${"def.colorRating.very_bad"       } },   //  0 -  4 - very bad
      { "value": 5,   "color": ${"def.colorRating.bad"            } },   //  5 - 30 - bad             (better than 5% of players)
      { "value": 30,  "color": ${"def.colorRating.poor"           } },   // 30 - 50 - poor            (better than 30% of players)
      { "value": 50,  "color": ${"def.colorRating.average"        } },   // 51 - 75 - average         (better then 50% of players)
      { "value": 75,  "color": ${"def.colorRating.good"           } },   // 75 - 90 - good            (better then 75% of players)
      { "value": 90,  "color": ${"def.colorRating.very_good"      } },   // 91 - 95 - very_good       (better then 90% of players)
      { "value": 95,  "color": ${"def.colorRating.excellent"      } },   // 96 - 99 - excellent       (better then 95% of players)
      { "value": 99,  "color": ${"def.colorRating.unicum"         } },   // 99 - 99.75 - unicum       (better then 99% of players)
      { "value": 999, "color": ${"def.colorRating.super_unicum"   } }    // 99.75 - XX - super unicum (better then 99.75% of players)
    ],
    // Dynamic color by efficiency
    // Динамический цвет по эффективности
    "eff": [
      { "value": 610,  "color": ${"def.colorRating.bad"           } },   //    0 - 609  - very average
      { "value": 850,  "color": ${"def.colorRating.poor"          } },   //  610 - 849  - average
      { "value": 1145, "color": ${"def.colorRating.average"       } },   //  875 - 1144 - good
      { "value": 1475, "color": ${"def.colorRating.good"          } },   // 1145 - 1474 - very_good
      { "value": 1775, "color": ${"def.colorRating.excellent"     } },   // 1475 - 1774 - very very_good
      { "value": 9999, "color": ${"def.colorRating.unicum"        } }    // 1775 - *    - unicum
    ],
    // Dynamic color by WN6 rating
    // Динамический цвет по рейтингу WN6
    "wn6": [
      { "value": 500,  "color": ${"def.colorRating.very_bad"      } },   //    0 - 500  - very bad
      { "value": 700,  "color": ${"def.colorRating.bad"           } },   //  501 - 700  - bad
      { "value": 900,  "color": ${"def.colorRating.poor"          } },   //  701 - 900  - poor
      { "value": 1100, "color": ${"def.colorRating.average"       } },   //  901 - 1100 - average
      { "value": 1350, "color": ${"def.colorRating.good"          } },   // 1101 - 1350 - good
      { "value": 1550, "color": ${"def.colorRating.very_good"     } },   // 1351 - 1500 - very good
      { "value": 1850, "color": ${"def.colorRating.excellent"     } },   // 1501 - 1700 - excellent
      { "value": 2050, "color": ${"def.colorRating.unicum"        } },   // 1701 - 2000 - unicum
      { "value": 9999, "color": ${"def.colorRating.super_unicum"  } }    // 2001 - *    - super unicum
    ],
    // Dynamic color by WN8 rating
    "wn8": [
      { "value": 300,  "color": ${"def.colorRating.very_bad"      } },   //    0 - 299  - very bad
      { "value": 600,  "color": ${"def.colorRating.bad"           } },   //  300 - 599  - bad
      { "value": 900,  "color": ${"def.colorRating.poor"          } },   //  600 - 889  - poor
      { "value": 1250, "color": ${"def.colorRating.average"       } },   //  900 - 1249 - average
      { "value": 1600, "color": ${"def.colorRating.good"          } },   // 1250 - 1599 - good
      { "value": 1900, "color": ${"def.colorRating.very_good"     } },   // 1600 - 1899 - very good
      { "value": 2350, "color": ${"def.colorRating.excellent"     } },   // 1900 - 2349 - excellent
      { "value": 2900, "color": ${"def.colorRating.unicum"        } },   // 1350 - 1899 - unicum
      { "value": 9999, "color": ${"def.colorRating.super_unicum"  } }    // 2900 - *    - super unicum
    ],
    // Dynamic color by TEFF (E) rating
    // Динамический цвет по рейтингу TEFF (E)
    "e": [
      { "value": 3,    "color": ${"def.colorRating.bad"           } },
      { "value": 6,    "color": ${"def.colorRating.poor"          } },
      { "value": 7,    "color": ${"def.colorRating.average"       } },
      { "value": 8,    "color": ${"def.colorRating.good"          } },
      { "value": 9,    "color": ${"def.colorRating.excellent"     } },
      { "value": 20,   "color": ${"def.colorRating.unicum"        } }
    ],
    // Dynamic color by win percent
    // Динамический цвет по проценту побед
    "rating": [
      { "value": 45,  "color": ${"def.colorRating.very_bad"       } },   //  0 - 45  - very bad
	  { "value": 47,  "color": ${"def.colorRating.bad"            } },   // 45 - 47  - bad
      { "value": 49,  "color": ${"def.colorRating.poor"           } },   // 47 - 49  - poor
      { "value": 52,  "color": ${"def.colorRating.average"        } },   // 49 - 52  - average
      { "value": 54,  "color": ${"def.colorRating.good"           } },   // 52 - 54  - good
	  { "value": 56,  "color": ${"def.colorRating.very_good"      } },   // 54 - 56  - very good
      { "value": 60,  "color": ${"def.colorRating.excellent"      } },   // 56 - 60  - excellent
	  { "value": 65,  "color": ${"def.colorRating.unicum"         } },   // 60 - 65  - unicum
      { "value": 101, "color": ${"def.colorRating.super_unicum"   } }    // 65 - xxx - super unicum
    ],
    // Dynamic color by kilo-battles
    // Динамический цвет по количеству кило-боев
    "kb": [
      { "value": 1,   "color": ${"def.colorRating.very_bad"       } },   //  0 -  1
      { "value": 2,   "color": ${"def.colorRating.bad"            } },   //  1 -  2
      { "value": 5,   "color": ${"def.colorRating.average"        } },   //  2 -  5
      { "value": 10,   "color": ${"def.colorRating.good"          } },   //  6 - 10
      { "value": 15,  "color": ${"def.colorRating.very_good"      } },   // 10 - 15
      { "value": 20,  "color": ${"def.colorRating.excellent"      } },   // 15 - 20
      { "value": 30,  "color": ${"def.colorRating.unicum"         } },   // 20 - 30
      { "value": 100, "color": ${"def.colorRating.super_unicum"   } }    // 30 - *
    ],
    // Dynamic color by average level of player tanks
    // Динамический цвет по среднему уровню танков игрока
    "avglvl": [
      { "value": 2,  "color": ${"def.colorRating.bad"             } },
      { "value": 3,  "color": ${"def.colorRating.poor"            } },
      { "value": 5,  "color": ${"def.colorRating.average"         } },
      { "value": 7,  "color": ${"def.colorRating.good"            } },
      { "value": 9,  "color": ${"def.colorRating.excellent"       } },
      { "value": 11, "color": ${"def.colorRating.unicum"          } }
    ],
    // Dynamic color by battles on current tank
    // Динамический цвет по количеству боев на текущем танке
    "t_battles": [
      { "value": 5,     "color": ${"def.colorRating.bad"          } },   //    0 -    5
      { "value": 10,    "color": ${"def.colorRating.poor"         } },   //    5 -   10
      { "value": 50,    "color": ${"def.colorRating.average"      } },   //   10 -   50
      { "value": 100,   "color": ${"def.colorRating.good"         } },   //   50 -  100
      { "value": 500,   "color": ${"def.colorRating.very_good"    } },   //  100 -  500
      { "value": 1000,  "color": ${"def.colorRating.excellent"    } },   //  500 - 1000
      { "value": 1800,  "color": ${"def.colorRating.unicum"       } },   // 1000 - 1800
      { "value": 99999, "color": ${"def.colorRating.super_unicum" } }    // 1800 - *
    ],
    // Dynamic color by average damage on current tank
    // Динамический цвет по среднему урону за бой на текущем танке
    "tdb": [
      { "value": 1,    "color": ${"def.colorRating.bad"           } },
      { "value": 500,  "color": ${"def.colorRating.poor"          } },
      { "value": 1000, "color": ${"def.colorRating.average"       } },
      { "value": 1500, "color": ${"def.colorRating.good"          } },
      { "value": 2000, "color": ${"def.colorRating.excellent"     } },
      { "value": 2500, "color": ${"def.colorRating.unicum"        } }
    ],
    // Dynamic color by average damage efficiency on current tank 
    // Динамический цвет по эффективности урона за бой на текущем танке 
    "tdv": [
      { "value": 0.01, "color": ${"def.colorRating.very_bad"      } },
      { "value": 0.6,  "color": ${"def.colorRating.bad"           } },
      { "value": 0.8,  "color": ${"def.colorRating.poor"          } },
      { "value": 1.0,  "color": ${"def.colorRating.average"       } },
      { "value": 1.3,  "color": ${"def.colorRating.good"          } },
      { "value": 1.5,  "color": ${"def.colorRating.very_good"     } },
      { "value": 2.0,  "color": ${"def.colorRating.excellent"     } },
      { "value": 2.5,  "color": ${"def.colorRating.unicum"        } },
      { "value": 15,   "color": ${"def.colorRating.super_unicum"  } }
    ],
    // Dynamic color by average frags per battle on current tank 
    // Динамический цвет по среднему количеству фрагов за бой на текущем танке 
    "tfb": [
      { "value": 0.01, "color": ${"def.colorRating.very_bad"      } },
      { "value": 0.6,  "color": ${"def.colorRating.bad"           } },
      { "value": 0.8,  "color": ${"def.colorRating.poor"          } },
      { "value": 1.0,  "color": ${"def.colorRating.average"       } },
      { "value": 1.3,  "color": ${"def.colorRating.good"          } },
      { "value": 1.5,  "color": ${"def.colorRating.very_good"     } },
      { "value": 2.0,  "color": ${"def.colorRating.excellent"     } },
      { "value": 2.5,  "color": ${"def.colorRating.unicum"        } },
      { "value": 3,    "color": ${"def.colorRating.super_unicum"  } }
    ],
    // Dynamic color by average number of spotted enemies per battle on current tank 
    // Динамический цвет по среднему количеству засвеченных врагов за бой на текущем танке 
    "tsb": [
      { "value": 0.01, "color": ${"def.colorRating.very_bad"      } },
      { "value": 0.6,  "color": ${"def.colorRating.bad"           } },
      { "value": 0.8,  "color": ${"def.colorRating.poor"          } },
      { "value": 1.0,  "color": ${"def.colorRating.average"       } },
      { "value": 1.3,  "color": ${"def.colorRating.good"          } },
      { "value": 1.5,  "color": ${"def.colorRating.very_good"     } },
      { "value": 2.0,  "color": ${"def.colorRating.excellent"     } },
      { "value": 2.5,  "color": ${"def.colorRating.unicum"        } },
      { "value": 15,   "color": ${"def.colorRating.super_unicum"  } }
    ]
  }
}
