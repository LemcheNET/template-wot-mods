/**
 * Parameters for tank carousel
 * Параметры карусели танков
 */
{
  "def": {
    "textFieldShadow": { "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 2, "distance": 0, "angle": 0 }
  },
  "carousel": {
    // false - Disable customizable carousel.
    // false - Отключить настраиваемую карусель.
    "enabled": true,
    // Scale of carousel cells.
    // Масштаб ячеек карусели.
    "zoom": 1,
    // Number of rows at carousel.
    // Количество рядов карусели.
    "rows": 2,
    // Spacing between carousel cells.
    // Отступ между ячейками карусели.
    "padding": {
      "horizontal": 10,   // по горизонтали
      "vertical": 2       // по вертикали
    },
    // Background transparency (default - 60)
    // Прозрачность подложки (по умолчанию - 60)
    "backgroundAlpha": 60,
    // Scrolling speed (default - 20)
    // Скорость прокрутки (по умолчанию - 20)
    "scrollingSpeed": 20,
    // true - show filters even if all tanks fit on the screen.
    // true - показывать фильтры даже если все танки помещаются на экране.
    "alwaysShowFilters": false,
    // true - hide cell "Buy vehicle".
    // true - скрыть ячейку "Купить машину".
    "hideBuyTank": false,
    // true - hide cell "Buy slot".
    // true - скрыть ячейку "Купить слот".
    "hideBuySlot": false,
    // true - show total slots count in the "Buy vehicle" cell.
    // true - показывать общее количество слотов в ячейке "Купить машину".
    "showTotalSlots": false,
    // true - show used slots count in the "Buy slot" cell.
    // true - показывать количество занятых слотов в ячейке "Купить слот".
    "showUsedSlots": true,
    // Visibility filters.
    // Видимость фильтров.
    "filters": {
      // false - hide filter.
      // false - скрыть фильтр.
      "nation":   { "enabled": true },  // nation             / страна
      "type":     { "enabled": true },  // vehicle class      / тип техники
      "favorite": { "enabled": true },  // favorite tanks     / основные танки
      "gameMode": { "enabled": true },  // fallout mode tanks / танки для "боя до последнего"
      "level":    { "enabled": true },  // vehicle level      / уровень техники
      "prefs":    { "enabled": true },  // other filters      / другие фильтры
      "__stub__": {}
    },
    // Spacing between filters cells.
    // Отступ между ячейками фильтров.
    "filtersPadding": {
      "horizontal": 11,   // по горизонтали
      "vertical": 13      // по вертикали
    },
    // Standard cell elements.
    // Стандартные элементы ячеек.
    "fields": {
      // "visible"  - the visibility of the element / видимость элемента
      // "dx"       - horizontal shift              / смещение по горизонтали
      // "dy"       - vertical shift                / смещение по вертикали
      // "alpha"    - transparency                  / прозрачность
      // "scale"    - scale                         / масштаб
      //
      // Vehicle class icon.
      // Иконка типа техники.
      "tankType": { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle level.
      // Уровень техники
      "level":    { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // todo: english description
      // Иконка не сбитого кратного опыта за первую победу в день.
      "multiXp":  { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // todo: english description
      // Иконка не сбитого опыта за первую победу в день.
      "xp":       { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle name.
      // Название танка.
      "tankName": { "visible": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Status text (Crew incomplete, Repairs required)
      // Статусный текст (Неполный экипаж, Требуется ремонт).
      "statusText": { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Status text for "Buy vehicle" and "Buy slot" slots.
      // Статусный текст для слотов "Купить машину" и "Купить слот".
      "statusTextBuy": { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Clan lock timer
      // Таймер блокировки танка
      "clanLock":   { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Activate / deactivate button.
      // Кнопка активации / деактивации.
      "activateButton": { "dx": 0, "dy": 0, "alpha": 100, "scale": 1 }
    },
    // Extra cell fields (see playersPanel.xc).
    // Дополнительные поля ячеек (см. playersPanel.xc).
    "extraFields": [
        { "x": 140, "y": 15, "w": 50, "h": 40, "align": "right", "format": "{{v.xpToElite?{{v.earnedXP%'d|0}} {{v.xpToEliteLeft<1000?<font color='#88FF88' size='20'><b>|<font color='#CCCCCC' size='12'>}}({{v.xpToEliteLeft%'d}})</font>}}", "shadow": {} },
        { "x": 140, "y": 17, "src": "img://gui/maps/icons/library/XpIcon.png" },

        { "x": 135, "y": 57, "w": 25, "h": 25, "src": "img://gui/maps/icons/library/proficiency/class_icons_{{v.mastery}}.png" },

        { "x": 140, "y": 40, "src": "cfg://sirmax/img/marksOnGun/{{v.marksOnGun|empty}}.png" },
        { "x": 147, "y": "{{v.marksOnGun?38|37}}", "align": "center",
          "format": "<b><font size='9' color='#C8C8B5'>{{v.marksOnGun}}</font></b></font>",
          "shadow": {}
        },
        { "x": 140, "y": "{{v.marksOnGun?38|37}}", "align": "right",
          "format": "<font size='13' color='{{v.c_damageRating}}'>{{v.damageRating%.2f~%}}</font>",
          "shadow": ${ "def.textFieldShadow" }
        },

        { "x": 21, "y": 0,
          "format": "<b><font size='12' color='#C8C8B5'><font face='Arial'>{{v.rlevel}}</font>  {{v.battletiermin}}-{{v.battletiermax}}</font></b>",
          "shadow": ${ "def.textFieldShadow" }
        },

        { "x": 0, "y": 15, "w": 22, "h": 22, "src": "img://gui/maps/icons/library/dossier/wins40x32.png" },
        { "x": 21, "y": 15,
          "format": "<b><font size='12' color='{{v.c_winrate}}'>{{v.winrate%2d~%}}</font></b>",
          "shadow": ${ "def.textFieldShadow" }
        },

        { "x": 0, "y": 33, "w": 22, "h": 22, "src": "img://gui/maps/icons/library/dossier/avgDamage40x32.png" },
        { "x": 21, "y": 35,
          "format": "<b><font size='12' color='{{v.c_wn8effd}}'>{{v.wn8effd%0.2f}}</font></b>",
          "shadow": ${ "def.textFieldShadow" }
        },

        { "x": 0, "y": 51, "w": 22, "h": 22, "src": "img://gui/maps/icons/library/dossier/techRatio40x32.png" },
        { "x": 21, "y": 53,
          "format": "<b><font face='mono' size='12' color='{{v.c_xte}}'>{{v.xte|--}}</font></b>",
          "shadow": ${ "def.textFieldShadow" }
        },

        { "x": 158, "y": 77, "align": "right", "alpha": "{{v.premium?100|0}}",
          "format": "<font size='15' color='#FEA659'>{{v.name}}</font>",
          "shadow": { "color": "0xFC3700", "alpha": 1, "blur": 10, "strength": 2, "distance": 0, "angle": 0 }
        },

        { "x": 158, "y": 77, "align": "right", "alpha": "{{v.premium?0|100}}",
          "format": "<font size='15' color='#C8C8B5'>{{v.name}}</font>",
          "shadow": { "color": "0x73734C", "alpha": 0.8, "blur": 6, "strength": 2, "distance": 0, "angle": 0 }
        },

        { "x": -2, "y": -1, "h": 100, "w": "164", "bgColor": "{{v.selected?#FFA759|#000000}}", "alpha": "{{v.selected?15|0}}" },

        {}
    ],
    // Order of nations.
    // Порядок наций.
    //"nations_order": ["ussr", "germany", "usa", "france", "uk", "china", "japan", "czech"],
    "nations_order": ["germany", "ussr", "usa", "france", "uk", "china", "japan", "czech"],
    // Order of types of vehicles.
    // Порядок классов техники.
    "types_order":   ["lightTank", "mediumTank", "heavyTank", "AT-SPG", "SPG"],
    // Tank sorting criteria, available options: (minus = reverse order)
    // Критерии сортировки танков, доступные значения: (минус = в обратном порядке)
    // "nation", "type", "level", "maxBattleTier", "premium", "winRate", "-level", "-maxBattleTier", "-premium", "-winRate"
    "sorting_criteria": ["nation", "type", "level"],
    // Suppress the tooltips for tanks in carousel
    // Убрать подсказки к танкам в карусели
    "suppressCarouselTooltips": false
  }
}
