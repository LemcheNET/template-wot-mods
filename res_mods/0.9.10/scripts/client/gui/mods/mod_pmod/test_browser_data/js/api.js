/*	Пример как оно должно работать
 *  
 *	
 *
 *	Эта функция будет выполнятся после того как игровой вызов отработает
 *	window.onSomeMethodNameExecuted = function (json) {
 *		var data = JSON.parse(json);
 *		console.log('someMethodName');
 *		console.log(data);
 *	};
 *	
 *	Вызов игрового метода с передачей ему нужных параметров
 *	window.gameCall('someMethodName', {
 * 		
 *		someParam: someValue,
 * 		callback: 'onSomeMethodNameExecuted'
 *	});
 *
*/

// Типо реализация вызова питона посредством невидимого айфрейма
window.gameCall = function (method, params) {
	params || (params = {callback: 'void'});
	window[params.callback] || (window[params.callback] = Function.prototype);
	if (navigator.userAgent.indexOf('Awesomium') > -1) {
		var iframe = $('<iframe>');
		var parsed_params = new Array();
		for(var key in params) {
			parsed_params.push(key + '=' + params[key]);
		}
		iframe.attr('src', 'gamecall://' + method + '?' + parsed_params.join('&'))
		iframe.hide().appendTo('body').remove();
	} else {
		window[params.callback](JSON.stringify(params))
	}
}

// Изменить размер окна
window.onWindowResized = function (json) {
	var data = JSON.parse(json);
	console.log('onWindowResized');
	console.log(data);
};
window.gameCall('resizeWidow', {
	width:800,
	height:600,
	callback: 'onWindowResized'
});

// Закрыть окно
window.onWindowClosed = function (json) {
	var data = JSON.parse(json);
	console.log('onWindowClosed');
	console.log(data);
};
window.gameCall('closeWidow', {
	callback: 'onWindowClosed'
});

// Свернуть окно
window.onWindowHided = function (json) {
	var data = JSON.parse(json);
	console.log('onWindowHided');
	console.log(data);
};
window.gameCall('hideWidow', {
	callback: 'onWindowHided'
});

// Развернуть во весь экран окно
window.onWindowMaximized = function (json) {
	var data = JSON.parse(json);
	console.log('onWindowMaximized');
	console.log(data);
};
window.gameCall('maximizeWindow', {
	callback: 'onWindowMaximized'
});

// Послать сообщение в системный канал
window.onSystemMessageshowed = function (json) {
	var data = JSON.parse(json);
	console.log('onSystemMessageshowed');
	console.log(data);
};
window.gameCall('showSystemMessage', {
	message: '<font size="18" color="#FF0000" face="$TiteField">some random text</font>',
	callback: 'onSystemMessageshowed'
});

// Открыть браузер (Windows)
window.onExternalBrowserOpened = function (json) {
	var data = JSON.parse(json);
	console.log('onExternalBrowserOpened');
	console.log(data);
};
window.gameCall('openExternalBrowser', {
	url: 'http://yandex.ru',
	callback: 'onExternalBrowserOpened'
});

// Выполнить произвольный Python код
window.onPythonCodeExeced = function (json) {
	var data = JSON.parse(json);
	console.log('onPythonCodeExeced');
	console.log(data);
};
window.gameCall('execPythonCode', {
	code: 'print "Hello World"; print "test " * 5;',
	callback: 'onPythonCodeExeced'
});

// Показать игровое окно с результатами боя
window.onBattleResultShowed = function (json) {
	var data = JSON.parse(json);
	console.log('onBattleResultShowed');
	console.log(data);
};
window.gameCall('showBattleResult', {
	arenaUniqID: 10028312412,
	callback: 'onBattleResultShowed'
});