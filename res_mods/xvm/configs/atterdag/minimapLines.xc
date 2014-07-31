/**
 * Minimap lines. Only for owned vehicle.
 * Линии на миникарте. Только для своей техники.
 */
{
  "lines": {
       "enabled": true,
       // "inmeters": true  - make line size to be in real map meters.
       // "inmeters": false - make line size to be in minimap interface clip points. Minimap interface clip side is 210 points.
       // Distance between farthest corners at 1km map is somewhat more than 1400 meters.
       // Sections can contain any number of lines.
       // To set a point try setting line with length of one and large thickness.
       // You can leave one line for simplicity. Remember comma positioning rules.
       //---------------------------------------------------------------------------------------------------
       // "inmeters": true  - дистанция линии в метрах реальной карты.
       // "inmeters": false - дистанция линии в точках миникарты. Сторона миникарты 210 точек.
       // "thickness" - толщина отрезка; "from" - начало отрезка; "to" - конец; "alpha" - прозрачность; "color" - цвет.
       // Дистанция из угла в угол на километровой карте получается немногим более 1400 метров.
       // В секциях располагается произвольное кол-во отрезков.
       // Для постановки точки попробуйте отрезок длиной в единицу и с большой толщиной.
       // Для простоты можете оставить один длинный отрезок, не забыв убрать запятую. В конце секции запятая не ставится.
       //---------------------------------------------------------------------------------------------------
       // Own vehicle direction.
       // Направление корпуса своей техники.
       "vehicle": [
			{
                "alpha": 35,
                "color": 16764006,
                "enabled": true,
                "from": 20,
                "inmeters": false,
                "thickness": 0.4,
                "to": 300
            }
       ],
       // Camera direction.
       // Направление камеры от своей техники.
        "camera": [
			{
                "alpha": 30,
                "color": "0xF50800",
                "enabled": true,
                "from": 50,
                "inmeters": true,
                "thickness": 1.3,
                "to": 80
            }, {
                "alpha": 35,
                "color": "0xF50800",
                "enabled": true,
                "from": 120,
                "inmeters": true,
                "thickness": 1.2,
                "to": 180
            }, {
                "alpha": 40,
                "color": "0xF50800",
                "enabled": true,
                "from": 220,
                "inmeters": true,
                "thickness": 1.1,
                "to": 280
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 320,
                "inmeters": true,
                "thickness": 1,
                "to": 380
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 420,
                "inmeters": true,
                "thickness": 0.9,
                "to": 480
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 520,
                "inmeters": true,
                "thickness": 0.8,
                "to": 580
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 620,
                "inmeters": true,
                "thickness": 0.75,
                "to": 680
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 720,
                "inmeters": true,
                "thickness": 0.75,
                "to": 780
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 820,
                "inmeters": true,
                "thickness": 0.75,
                "to": 880
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 920,
                "inmeters": true,
                "thickness": 0.75,
                "to": 980
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1020,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1080
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1120,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1180
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1220,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1280
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1320,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1380
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1420,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1480
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1520,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1580
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1620,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1680
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1720,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1780
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1820,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1880
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1920,
                "inmeters": true,
                "thickness": 0.75,
                "to": 2000
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 99,
                "inmeters": true,
                "thickness": 2.2,
                "to": 100
            }, {
                "alpha": 40,
                "color": "0xF50800",
                "enabled": true,
                "from": 199,
                "inmeters": true,
                "thickness": 2.1,
                "to": 200
            }, {
                "alpha": 35,
                "color": "0xF50800",
                "enabled": true,
                "from": 299,
                "inmeters": true,
                "thickness": 2,
                "to": 300
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 399,
                "inmeters": true,
                "thickness": 1.9,
                "to": 400
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 499,
                "inmeters": true,
                "thickness": 1.8,
                "to": 500
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 599,
                "inmeters": true,
                "thickness": 1.7,
                "to": 600
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 699,
                "inmeters": true,
                "thickness": 1.6,
                "to": 700
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 799,
                "inmeters": true,
                "thickness": 1.6,
                "to": 800
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 899,
                "inmeters": true,
                "thickness": 1.6,
                "to": 900
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 999,
                "inmeters": true,
                "thickness": 1.6,
                "to": 1000
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1099,
                "inmeters": true,
                "thickness": 1.6,
                "to": 1100
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1199,
                "inmeters": true,
                "thickness": 1.6,
                "to": 1200
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1299,
                "inmeters": true,
                "thickness": 1.6,
                "to": 1300
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1399,
                "inmeters": true,
                "thickness": 1.6,
                "to": 1400
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1499,
                "inmeters": true,
                "thickness": 1.6,
                "to": 1500
            }
       ],
       // Gun traverse angles may differ depending on vehicle angle relative to ground. See pics at http://goo.gl/ZqlPa
       // Углы горизонтальной наводки могут меняться в зависимости от углов постановки машины на склонах местности. Подробнее по ссылке: http://goo.gl/ZqlPa
       //---------------------------------------------------------------------------------------------------
       // Horizontal gun traverse angle lines.
       // Углы горизонтальной наводки.
       "traverseAngle": [
			{
                "alpha": 35,
                "color": "0xFFCC66",
                "enabled": true,
                "from": 20,
                "inmeters": false,
                "thickness": 0.4,
                "to": 300
            }
       ]
    }
}