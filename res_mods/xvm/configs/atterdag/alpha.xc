/**
 * Options for dynamic transparency. Values ​​from smallest to largest.
 * Настройки динамической прозрачности. Значения от меньшего к большему.
 */
{
  // Dynamic transparency by various statistical parameters.
  // Динамическая прозрачность по различным статистическим показателям.
  "alphaRating": {
    "very_bad":     "100",  // very bad
    "bad":           "90",  // bad
    "poor":          "80",  // poor
    "average":       "70",  // average
    "good":          "65",  // good
    "very_good":     "60",  // very good
	"excellent":     "55",  // excellent
	"unicum":        "50",  // unicum
	"super_unicum":  "40"   // super unicum
  },
  // Dynamic transparency by remaining health points.
  // Динамическая прозрачность по оставшемуся запасу прочности.
  "alphaHP": {
    "very_low":         "100",  // very low       / очень низкий
    "low":              "75",   // low            / низкий
    "average":          "50",   // average        / средний
    "above_average":    "0"     // above-average  / выше среднего
  },
  "alpha": {
    // Dynamic transparency by remaining health.
    // Динамическая прозрачность по оставшемуся здоровью.
    "hp": [
      { "value": 200,  "alpha": ${"alphaHP.very_low"     } },
      { "value": 400,  "alpha": ${"alphaHP.low"          } },
      { "value": 1000, "alpha": ${"alphaHP.average"      } },
      { "value": 9999, "alpha": ${"alphaHP.above_average"} }
    ],
    // Dynamic transparency by percentage of remaining health.
    // Динамическая прозрачность по проценту оставшегося здоровья.
    "hp_ratio": [
      { "value": 10,  "alpha": ${"alphaHP.very_low"     } },
      { "value": 25,  "alpha": ${"alphaHP.low"          } },
      { "value": 50,  "alpha": ${"alphaHP.average"      } },
      { "value": 101, "alpha": ${"alphaHP.above_average"} }
    ],
    // Dynamic transparency for XVM Scale
    // Динамическая прозрачность по шкале XVM
    "x": [
      { "value": 5,    "alpha": ${"alphaRating.very_bad"     } },
      { "value": 30,   "alpha": ${"alphaRating.bad"          } },
      { "value": 50,   "alpha": ${"alphaRating.poor"         } },
      { "value": 75,   "alpha": ${"alphaRating.average"      } },
      { "value": 90,   "alpha": ${"alphaRating.good"         } },
      { "value": 95,   "alpha": ${"alphaRating.excellent"    } },
      { "value": 99,   "alpha": ${"alphaRating.unicum"       } },
      { "value": 9975, "alpha": ${"alphaRating.super_unicum" } }
    ],
    // Dynamic transparency by efficiency
    // Динамическая прозрачность по эффективности
    "eff": [
      { "value": 610,  "alpha": ${"alphaRating.bad" } },
      { "value": 850,  "alpha": ${"alphaRating.poor"      } },
      { "value": 1145, "alpha": ${"alphaRating.average"     } },
      { "value": 1475, "alpha": ${"alphaRating.good"     } },
      { "value": 1775, "alpha": ${"alphaRating.excellent"} },
      { "value": 9999, "alpha": ${"alphaRating.unicum"   } }
    ],
    // Dynamic transparency by WN6 rating
    // Динамическая прозрачность по рейтингу WN6
    "wn6": [
      { "value": 500,  "alpha": ${"alphaRating.very_bad"     } },
      { "value": 700,  "alpha": ${"alphaRating.bad"          } },
      { "value": 900,  "alpha": ${"alphaRating.poor"         } },
      { "value": 1100, "alpha": ${"alphaRating.average"      } },
      { "value": 1350, "alpha": ${"alphaRating.good"         } },
      { "value": 1500, "alpha": ${"alphaRating.very_good"    } },
      { "value": 1700, "alpha": ${"alphaRating.excellent"    } },
      { "value": 2000, "alpha": ${"alphaRating.unicum"       } },
      { "value": 9999, "alpha": ${"alphaRating.super_unicum" } }
    ],
    // Dynamic transparency by WN8 rating
    // Динамическая прозрачность по рейтингу WN8
    "wn8": [
      { "value": 300,  "alpha": ${"alphaRating.very_bad"     } },
      { "value": 600,  "alpha": ${"alphaRating.bad"          } },
      { "value": 900,  "alpha": ${"alphaRating.poor"         } },
      { "value": 1250, "alpha": ${"alphaRating.average"      } },
      { "value": 1600, "alpha": ${"alphaRating.good"         } },
      { "value": 1850, "alpha": ${"alphaRating.very_good"    } },
      { "value": 2350, "alpha": ${"alphaRating.excellent"    } },
      { "value": 2900, "alpha": ${"alphaRating.unicum"       } },
      { "value": 9999, "alpha": ${"alphaRating.super_unicum" } }
    ],
    // Dynamic transparency by TEFF (E) rating
    // Динамическая прозрачность по рейтингу TEFF (E)
    "e": [
      { "value": 2,    "alpha": ${"alphaRating.bad"       } },
      { "value": 4,    "alpha": ${"alphaRating.poor"      } },
      { "value": 5,    "alpha": ${"alphaRating.average"   } },
      { "value": 7,    "alpha": ${"alphaRating.good"      } },
      { "value": 9,    "alpha": ${"alphaRating.excellent" } },
      { "value": 20,   "alpha": ${"alphaRating.unicum"    } }
    ],
    // Dynamic transparency by win percent
    // Динамическая прозрачность по проценту побед
    "rating": [
      { "value": 46,  "alpha": ${"alphaRating.bad"          } },
      { "value": 48,  "alpha": ${"alphaRating.poor"         } },
      { "value": 51,  "alpha": ${"alphaRating.average"      } },
      { "value": 54,  "alpha": ${"alphaRating.good"         } },
      { "value": 60,  "alpha": ${"alphaRating.excellent"    } },
      { "value": 70,  "alpha": ${"alphaRating.unicum"       } },
      { "value": 101, "alpha": ${"alphaRating.super_unicum" } }
    ],
    // Dynamic transparency by kilo-battles
    // Динамическая прозрачность по количеству кило-боев
    "kb": [
      { "value": 2,   "alpha": ${"alphaRating.bad"       } },
      { "value": 5,   "alpha": ${"alphaRating.poor"      } },
      { "value": 9,   "alpha": ${"alphaRating.average"   } },
      { "value": 14,  "alpha": ${"alphaRating.good"      } },
      { "value": 20,  "alpha": ${"alphaRating.very_good" } },
      { "value": 999, "alpha": ${"alphaRating.unicum"    } }
    ],
    // Dynamic transparency by average level of player tanks
    // Динамическая прозрачность по среднему уровню танков игрока
    "avglvl": [
      { "value": 2,   "alpha": ${"alphaRating.bad"       } },
      { "value": 3,   "alpha": ${"alphaRating.poor"      } },
      { "value": 5,   "alpha": ${"alphaRating.average"   } },
      { "value": 7,   "alpha": ${"alphaRating.good"      } },
      { "value": 9,   "alpha": ${"alphaRating.very_good" } },
      { "value": 11,  "alpha": ${"alphaRating.unicum"    } }
    ],
    // Dynamic transparency by battles on current tank
    // Динамическая прозрачность по количеству боев на текущем танке
    "t_battles": [
      { "value": 5,     "color": ${"alphaRating.bad"          } }, //    0 -    5
      { "value": 10,    "color": ${"alphaRating.poor"         } }, //    5 -   10
      { "value": 50,    "color": ${"alphaRating.average"      } }, //   10 -   50
      { "value": 100,   "color": ${"alphaRating.good"         } }, //   50 -  100
      { "value": 500,   "color": ${"alphaRating.very_good"    } }, //  100 -  500
      { "value": 1000,  "color": ${"alphaRating.excellent"    } }, //  500 - 1000
      { "value": 1800,  "color": ${"alphaRating.unicum"       } }, // 1000 - 1800
      { "value": 99999, "color": ${"alphaRating.super_unicum" } }  // 1800 - *
    ],
    // Dynamic transparency by average damage on current tank
    // Динамическая прозрачность по среднему урону за бой на текущем танке
    "tdb": [
      { "value": 1,    "color": ${"alphaRating.bad"       } },
      { "value": 500,  "color": ${"alphaRating.poor"      } },
      { "value": 1000, "color": ${"alphaRating.average"   } },
      { "value": 1500, "color": ${"alphaRating.good"      } },
      { "value": 2000, "color": ${"alphaRating.excellent" } },
      { "value": 2500, "color": ${"alphaRating.unicum"    } }
    ],
    // Dynamic transparency by average damage efficiency on current tank
    // Динамическая прозрачность по эффективности урона за бой на текущем танке
    "tdv": [
      { "value": 0.01, "color": ${"alphaRating.very_bad"     } },
      { "value": 0.6,  "color": ${"alphaRating.bad"          } },
      { "value": 0.8,  "color": ${"alphaRating.poor"         } },
      { "value": 1.0,  "color": ${"alphaRating.average"      } },
      { "value": 1.3,  "color": ${"alphaRating.good"         } },
      { "value": 1.5,  "color": ${"alphaRating.very_good"    } },
      { "value": 2.0,  "color": ${"alphaRating.excellent"    } },
      { "value": 2.5,  "color": ${"alphaRating.unicum"       } },
      { "value": 15,   "color": ${"alphaRating.super_unicum" } }
    ],
    // Dynamic transparency by average frags per battle on current tank
    // Динамическая прозрачность по среднему количеству фрагов за бой на текущем танке
    "tfb": [
      { "value": 0.01, "color": ${"alphaRating.very_bad"     } },
      { "value": 0.6,  "color": ${"alphaRating.bad"          } },
      { "value": 0.8,  "color": ${"alphaRating.poor"         } },
      { "value": 1.0,  "color": ${"alphaRating.average"      } },
      { "value": 1.3,  "color": ${"alphaRating.good"         } },
      { "value": 1.5,  "color": ${"alphaRating.very_good"    } },
      { "value": 2.0,  "color": ${"alphaRating.excellent"    } },
      { "value": 2.5,  "color": ${"alphaRating.unicum"       } },
      { "value": 15,   "color": ${"alphaRating.super_unicum" } }
    ],
    // Dynamic transparency by number of spotted enemies per battle on current tank
    // Динамическая прозрачность по среднему количеству засвеченных врагов за бой на текущем танке
    "tsb": [
      { "value": 0.01, "color": ${"alphaRating.very_bad"     } },
      { "value": 0.6,  "color": ${"alphaRating.bad"          } },
      { "value": 0.8,  "color": ${"alphaRating.poor"         } },
      { "value": 1.0,  "color": ${"alphaRating.average"      } },
      { "value": 1.3,  "color": ${"alphaRating.good"         } },
      { "value": 1.5,  "color": ${"alphaRating.very_good"    } },
      { "value": 2.0,  "color": ${"alphaRating.excellent"    } },
      { "value": 2.5,  "color": ${"alphaRating.unicum"       } },
      { "value": 15,   "color": ${"alphaRating.super_unicum" } }
    ]
  }
}
