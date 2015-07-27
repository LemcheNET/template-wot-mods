Установка
  
  Перетяните либо скопируйте из архива папку "res_mods" в папку где у вас установлены танки, 
  если у вас спросят замену файлов или папок можете согласиться или отказаться разницы нет



Настройка мода.
  
  Для настройки мода вам не нужны знания в программировании, или же танцы с бубном
  Все что вам нужно это капля желания и текстовый редактор Notepad++
  Все настройки мода находятся в файле: res_mods\0.9.9\scripts\client\mods\PMOD.json, 
  либо в файлах внутри папки: res_mods\0.9.9\scripts\client\mods\PMOD\
  Внутри файлов вас ждет подробное описание всех параметров и их стандартные значения


Список макросов для послебоевых сообщений в ангаре
  
  Если нет данных о бое
    
    Map - название карты
    MapImage - название картинки карты
    VehicleName - игровое название техники
    VehicleLevel - уровень техники
    VehicleLocalName - название техники
    VehicleLocalNameShort - короткое название техники
    VehicleImage - картинка техники
    Credits - заработанные кредиты
    XP - заработанный опыт
    TmenXP - заработанный опыт для экипажа
    Achievements - заработанные медали (присутствует в форматере макросов)
    DailyXPFactor - множитель опыта (х2 х3 и тд и тп) (присутствует в форматере макросов)
    CreditsPenalty - списание кредитов (присутствует в форматере макросов)
    XpPenalty - списание опыта (присутствует в форматере макросов)
    CreditsCompensation - компенсация кредитов (присутствует в форматере макросов)
  
  Если есть данные о бое
    
    Map - название карты
    MapImage - название картинки карты
    VehicleName - игровое название техники
    VehicleLevel - уровень техники
    VehicleLocalName - название техники
    VehicleLocalNameShort - короткое название техники
    VehicleImage - картинка техники
    Credits - заработанные кредиты
    XP - заработанный опыт
    TmenXP - заработанный опыт для экипажа
    Achievements - заработанные медали (присутствует в форматере макросов)
    DailyXPFactor - множитель опыта (х2 х3 и тд и тп) (присутствует в форматере макросов)
    CreditsPenalty - списание кредитов (присутствует в форматере макросов)
    XpPenalty - списание опыта (присутствует в форматере макросов)
    CreditsCompensation - компенсация кредитов (присутствует в форматере макросов)
    FreeXP - свободный опыт
    OriginalXP - опыт без учета Х2 и акций    
    OriginalFreeXP - свободный опыт без учета Х2 и акций
    OriginalCredits  - кредиты без учета Х2 и акций
    TmenXP - заработанный опыт для экипажа
    AmmoCost - потрачено серебра на боеприпасы
    RepairCost - потрачено серебра на ремонт
    EquipCost - потрачено серебра на расходники    
    PureCredits - кредиты с учетом затрат на ремонт/расходники/штрафы
    SpottedEnemies - количество обнаруженных противников
    DroppedCapturePoints - очки защиты базы
    DamageAssistedRadio - урон нанесённый с вашей помощью по вашему засвету
    DamageAssistedTrack - урон нанесённый с вашей помощью по сбитых вами гуслях
    DamageAssisted - урон нанесённый с вашей помощью (DamageAssistedRadio + DamageAssistedTrack)
    Frags - количество убитых танков
    CapturePoints - очки захвата базы
    DamageDealt - нанесенный урон
    SniperDamageDealt - нанесенный урон с дистанции больше 300 метров
    TeamDamageDealt - нанесенный урон союзникам
    DamageReceived - полученный урон
    DamageRating - текущее значение вашего рейтинга урона на танке
    DamageBlockedByArmor - количество урона заблокированный бронёй
    PotentialDamageReceived - количество полученого потенциального урон
    Shots - количество выстрелов
    Hits - количество попаданий
    Piercings - количество попаданий с нанесённым уроном
    ExplosionHits - количество попаданий сплешом
    NoDamageHitsReceived - получено попаданий без урона
    ExplosionHitsReceived - количество полученных попаданий сплешом
    HitsReceived - количество полученных попаданий
    LifeTime - количество времени которое игрок оставался в жывых  
    DamageRatio -  коэффициент урона (DamageDealt / DamageReceived)        
    HitsRate - процент попаданий (Hits / Shots * 100)
    EffHitsRate - процент попаданий с нанесённым уроном (Piercings / Hits * 100)
    EffShotsRate - процент выстрелов с нанесённым уроном (Piercings / Shots * 100)
    EFF - Рейтинг эффективности
    WN6 - WN6 рейтинг
    WN7 - WN7 рейтинг
    WN8 - WN8 рейтинг
    XEFF - Рейтинг эффективности (шкала XVM)
    XWN6 - WN6 рейтинг (шкала XVM)
    XWN7 - WN7 рейтинг (шкала XVM)
    XWN8 - WN8 рейтинг (шкала XVM)    



Список макросов для сессионной статистики

  Общая информация
    
    Battles - количество сыгранных боев
    Wins - количество побед
    Losses - количество поражений
    Draws - количество ничьих
    WinRate - винрейт (Wins * 100 / Battles)
    NumWinRate - цифровой показатель винрейта (Wins - Losses - Draws)
    Survived - количество боев в которых игрок остался в живых
    Destroyed - количество боев в которых игрок умер
    LifeTime - количество времени которое игрок оставался в жывых
	BattleTime - количество времени которое длились бои
    SurvivedRate - процент боев в которых игрок остался в живых (Survived * 100 / Battles)
    DestroyedRate - процент боев в которых игрок умер (Destroyed * 100 / Battles)
    AvgLifeTime - среднее количество времени которое игрок оставался в жывых (LifeTime / Battles)
	AvgBattleTime - среднее количество времени ккоторое длились бои (BattleTime / Battles)
    AvgBattleLevel - средний уровень боев
    AvgTierLevel - средний уровень танков
    CapturePoints - очки захвата базы
    DroppedCapturePoints - очки защиты базы
    SpottedEnemies - количество обнаруженных противников
    AvgCapturePoints - среднее количество очков захвата базы (CapturePoints / Battles)
    AvgDroppedCapturePoints - среднее количество очков защиты базы (DroppedCapturePoints / Battles)
    AvgSpottedEnemies - среднее количество обнаруженных противников (SpottedEnemies / Battles)
    PlayerName - имя игрока
    CurrentVersion - текущая версия мода
	WorkTime - количество времени проведённое в танках (от момента запуска)(в минутах)

  Урон
    
    DamageAssistedRadio - урон нанесённый с вашей помощью по вашему засвету
    DamageAssistedTrack - урон нанесённый с вашей помощью по сбитых вами гуслях
    DamageAssisted - урон нанесённый с вашей помощью (DamageAssistedRadio + DamageAssistedTrack)
    DamageBlockedByArmor - количество урона заблокированный бронёй
    DamageDealt - нанесенный урон
    DamageReceived - олученный урон
    DamageRatio -  коэффициент урона (DamageDealt / DamageReceived)
    PotentialDamageReceived - количество полученого потенциального урон
    SniperDamageDealt - нанесенный урон с дистанции больше 300 метров
    TeamDamageDealt - нанесенный урон союзникам
    AvgDamageAssistedRadio - среднее количество урона нанесённого с вашей помощью по вашему засвету (DamageAssistedRadio / Battles)
    AvgDamageAssistedTrack -  среднее количество урона нанесённого с вашей помощью по сбитих вами гуслях (DamageAssistedTrack / Battles)
    AvgDamageAssisted - среднее количество урона нанесённого с вашей помощью (DamageAssisted / Battles)
    AvgDamageBlockedByArmor - среднее количество урона заблокированного бронёй (DamageBlockedByArmor / Battles)
    AvgDamageDealt - среднее количество нанесенного урона (DamageDealt / Battles)
    AvgDamageReceived - среднее количество полученого урона (DamageReceived / Battles)
    AvgPotentialDamageReceived - среднее количество полученного потенциального урона (PotentialDamageReceived / Battles)
    AvgSniperDamageDealt - среднее количество нанесенного урона с дистанции больше 300 метров (SniperDamageDealt / Battles)
    AvgTeamDamageDealt - среднее количество нанесенного урона союзникам (TeamDamageDealt / Battles)

  Стрельба
    
    DamagedEnemies - количество поврежденной техники
    Frags - количество уничтоженной техники
    Shots - количество выстрелов
    Hits - количество попаданий
    ExplosionHits - количество попаданий сплешом
    Piercings - количество попаданий с нанесённым уроном
    HitsReceived - количество полученных попаданий
    ExplosionHitsReceived - количество полученных попаданий сплешом
    NoDamageHitsReceived - получено попаданий без урона
    FragsRatio - коэффициент уничтожения (Frags / Deads)
    HitsRate - процент попаданий (Hits / Shots * 100)
    EffHitsRate - процент попаданий с нанесённым уроном (Piercings / Hits * 100)
    EffShotsRate - процент выстрелов с нанесённым уроном (Piercings / Shots * 100)
    AvgDamagedEnemies - среднее количесвто поврежденной техники (DamagedEnemies / Battles)
    AvgFrags - среднее количество убитых танков (Frags / Battles)
    AvgShots - среднее количество выстрелов (Shots / Battles)
    AvgHits - среднее количество попаданий (Hits / Battles)
    AvgExplosionHits - среднее количесвто попаданий сплешом (ExplosionHits / Battles)
    AvgPiercings - среднее количество попаданий с нанесённым уроном (Piercings / Battles)
    AvgHitsReceived - среднее количесвто полученных попаданий (HitsReceived / Battles)
    AvgExplosionHitsReceived - среднее количесвто  полученных попаданий сплешом (ExplosionHitsReceived / Battles)
    AvgNoDamageHitsReceived - среднее количесвто полученных попаданий без урона (NoDamageHitsReceived / Battles)
  
  Финансы
    
    AccountCredits - изменение количества кредитов (текущее - старт сессии)
    AccountGold - изменение количества золота (текущее - старт сессии)
    Credits - полученно кредитов
    OriginalCredits - полученно кредитов без учета акций и премиум аккаунта
    PureCredits - полученные кредиты с учетом затрат на ремонт/расходники/штрафы
    CreditsPenalty - списано кредитов за урон по союзникам
    AmmoCost - количество потраченого серебра на снаряды
    EquipCost - количество потраченого серебра на расходники
    RepairCost - количество потраченого серебра на ремонт техники
    CreditsOut - суммарно потрачено серебра на ремонт/расходники/снаряды (RepeirCost + EquipCost + AmmoCost)
    AvgCredits - среднее количество полученных кредитов (Credits / Battles)
    AvgOriginalCredits - среднее количество полученных кредитов без учета акций и премиум аккаунта (OriginalCredits / Battles)
    AvgPureCredits - среднее количество полученных кредитов с учетом затрат на ремонт/расходники/штрафы (PureCredits / Battles)
    AvgCreditsPenalty - среднее количество списанных кредитов за урон по союзникам (CreditsPenalty / Battles)
    AvgAmmoCost - среднее количество постраченого серебра на снаряды (AmmoCost / Battles)
    AvgEquipCost - среднее количество потраченого серебра на расходники (EquipCost / Battles)
    AvgRepairCost - среднее количество потраченого серебра на ремонт техники (RepairCost / Battles)
    AvgCreditsOut - среднее количество всего потраченого серебра на ремонт/расходники/снаряды (CreditsOut / Battles)

  Опыт
    
    AccountFreeXP - изменение количества свободного опыта (текущее - старт сесси)
    XP - полученно опыта
    FreeXP - полученно свободного опыта
    OriginalXP - полученно опыта без учета Х2, акций и премиум аккаунта
    OriginalFreeXP - полученно свободного опыта без учета Х2, акций и премиум аккаунта
    XPPenalty - списано опыта за урон по союзникам 
    TmenXP - начисленный экипажу опыт
    AvgXP - среднее количество полученного опыта (XP / Battles)
    AvgFreeXP - среднее количество полученного свободного опыта (FreeXP / Battles)
    AvgOriginalXP - среднее количество полученного опыта без учета Х2, акций и премиум аккаунта (OriginalXP / Battles)
    AvgOriginalFreeXP - среднее количество полученного свободного опыта без учета Х2, акций и премиум аккаунта (OriginalFreeXP / Battles)
    AvgXPPenalty - среднее количество списаного опыта за урон по союзникам  (XPPenalty / Battles)
    AvgTmenXP - среднее количество начисленного экипажу опыта (TmenXP / Battles)

  Рейтинги
    
    EFF - Рейтинг эффективности
    WN6 - WN6 рейтинг
    WN7 - WN7 рейтинг
    WN8 - WN8 рейтинг
    XEFF - Рейтинг эффективности (шкала XVM)
    XWN6 - WN6 рейтинг (шкала XVM)
    XWN7 - WN7 рейтинг (шкала XVM)
    XWN8 - WN8 рейтинг (шкала XVM)

  Влияние сессии на аккаунт
    
    DiffAvgCapturePoints - влияние сессии на среднее количество очков захвата базы за бой (AvgCapturePoints - AvgCapturePoints (за все бои до начала сесси))
    DiffAvgDroppedCapturePoints - влияние сессии на среднее количество очков защиты базы за бой (AvgDroppedCapturePoints - AvgDroppedCapturePoints (за все бои до начала сесси))
    DiffAvgDamageDealt - влияние сессии на среднее количество нанесенного урона за бой (AvgDamageDealt - AvgDamageDealt (за все бои до начала сесси))
    DiffAvgDamageReceived - влияние сессии на среднее количество полученного урона за бой (AvgDamageReceived - AvgDamageReceived (за все бои до начала сесси))
    DiffAvgFragsCount - влияние сессии на среднее количество уничтоженной техники за бой (AvgFragsCount - AvgFragsCount (за все бои до начала сесси))
    DiffAvgSpottedEnemies - влияние сессии на среднее количество обнаруженной техники за бой (AvgSpottedEnemies - AvgSpottedEnemies (за все бои до начала сесси))
    DiffAvgXP - влияние сессии на среднее количество полученного опыта за бой (AvgXP - AvgXP (за все бои до начала сесси))
    DiffWinrate - влияние сессии на процента побед (Winrate - Winrate (за все бои до начала сесси))
	DiffFragsRatio - влияние сессии на количество отношения Убил / Убит
	DiffHitsRate - влияние сессии на процент попаданий
	DiffSurvivedRate - влияние сессии на процент виживаемости.
	
	
  Последний бой
    
    LastBattleCapturePoints - очки захвата базы (последний бой)
    LastBattleDroppedCapturePoints - очки защиты базы (последний бой)
    LastBattleSpottedEnemies - количество обнаруженных противников (последний бой)
    LastBattleDamageAssistedRadio - урон нанесённый с вашей помощью по вашему засвету (последний бой)
    LastBattleDamageAssistedTrack - урон нанесённый с вашей помощью по сбитых вами гуслях (последний бой)
    LastBattleDamageBlockedByArmor - количество урона заблокированный бронёй (последний бой)
    LastBattleDamageDealt - нанесенный урон (последний бой)
    LastBattleDamageRating - текущее значение вашего рейтинга урона (отметки на стволах) (последний бой)
    LastBattleDamageReceived - количество полученого потенциального урон (последний бой)
    LastBattleDamagedEnemys - количество поврежденной техники (последний бой)
    LastBattleHitsReceived - количество полученных попаданий (последний бой)
    LastBattleExplosionHits - количество попаданий сплешом (последний бой)
    LastBattleExplosionHitsReceived - количество полученных попаданий сплешом (последний бой)
    LastBattleFrags - количество уничтоженной техники (последний бой)
    LastBattleHits - количество попаданий (последний бой)
    LastBattleNoDamageHitsReceived - получено попаданий без урона (последний бой)
    LastBattlePiercings - количество попаданий с нанесённым уроном (последний бой)
    LastBattlePotentialDamageReceived - количество полученого потенциального урон (последний бой)
    LastBattleShots - количество выстрелов (последний бой)
    LastBattleSniperDamageDealt - нанесенный урон с дистанции больше 300 метров (последний бой)
    LastBattleTeamDamageDealt - нанесенный урон союзникам (последний бой)
    LastBattleCredits - полученно кредитов (последний бой)
    LastBattleCreditsPenalty - списано кредитов за урон по союзникам (последний бой)
    LastBattlePureCredits - полученные кредиты с учетом затрат на ремонт/расходники/штрафы (последний бой)
    LastBattleOriginalCredits - полученно кредитов без учета акций и премиум аккаунта (последний бой)
    LastBattleAmmoCost - потрачено серебра на снаряды (последний бой)
    LastBattleEquipCost - потрачено серебра на расходники (последний бой)
    LastBattleRepeirCost - потрачено серебра на ремонт техники (последний бой)
    LastBattleCreditsOut - суммарно потрачено серебра на ремонт/расходники/снаряды (последний бой)
    LastBattleXP - полученно опыта (последний бой)
    LastBattleXPPenalty - списано опыта за урон по союзникам (последний бой)
    LastBattleFreeXP - полученно свободного опыта (последний бой)
    LastBattleOriginalFreeXP - полученно свободного опыта без учета Х2, акций и премиум аккаунта (последний бой)
    LastBattleOriginalXP - полученно опыта без учета Х2, акций и премиум аккаунта (последний бой)
    LastBattleTmenXP - начисленный экипажу опыт (последний бой)
    LastBattleEFF - Рейтинг эффективности (последний бой)
    LastBattleWN6 - WN6 рейтинг (последний бой)
    LastBattleWN7 - WN7 рейтинг (последний бой)
    LastBattleWN8 - WN8 рейтинг (последний бой)
    LastBattleXEFF - Рейтинг эффективности (шкала XVM) (последний бой)
    LastBattleXWN6 - WN6 рейтинг (шкала XVM) (последний бой)
    LastBattleXWN7 - WN7 рейтинг (шкала XVM) (последний бой)
    LastBattleXWN8 - WN8 рейтинг (шкала XVM) (последний бой)
    LastBattleCreateTime - время окончания боя (последний бой) 
    LastBattleDuration - продолжытельность боя  (последний бой)
    LastBattleLevel - уровень боя  (последний бой)
    LastBattleLifeTime - время которе игрок оставался жыв в бою (последний бой)
    LastBattleMapImage -  название картинки карты (последний бой)
    LastBattleMapName - название карты (последний бой)
    LastBattleVehicleImage - название картинки техники (последний бой)
    LastBattleVehicleLevel - уровень техники (последний бой)
    LastBattleVehicleLocalName - название техники (последний бой)
    LastBattleVehicleLocalShortName - короткое название техники (последний бой)
    LastBattleVehicleName - игровое название техники (последний бой)

  Для ссылок городите примерно такой велосипед
  
	<a href='event:openIngameBrowser:poliroid.ru/update_test'>Внутре гровой браузер</a> 
	<a href='event:openWindowsBrowser:poliroid.ru/update_test'>Внешний браузер</a>


Список макросов для подстановки в pattern в модуле reducedArmor

    armor - толщина брони/экрана (просчет за-экраной брони низя, вг настучали)
    calcedArmor - приведённая броня
    piercingPower - пробитие текущего снаряда
    calcedPiercingPower - реальное пробитие снаряда (расчет относительно растояния до цели)
    enemyDistance - дистанция до цели
    maxShotDistance - максимальная дистанция полета снаряда
    dynamicColor - динамический цвет (для тех кто будет использовать HTML)
    piercingReserve - резерв пробития (calcedPiercingPower - calcedArmor)
