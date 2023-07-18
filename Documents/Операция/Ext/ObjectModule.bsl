﻿
Процедура ПередЗаписью(Отказ, РежимЗаписи, РежимПроведения)
	
	НаборЗаписей = Движения.Управленческий;
	
	Если Не НаборЗаписей.Модифицированность() И Не ЭтоНовый() Тогда
	    НаборЗаписей.Прочитать();
	КонецЕсли;        
	
	Если НаборЗаписей.Количество() > 0 Тогда
		Для каждого Запись Из НаборЗаписей Цикл
			Запись.Период = Дата;
		КонецЦикла;
		НаборЗаписей.УстановитьАктивность(Не ПометкаУдаления);
	КонецЕсли;
	
	НаборЗаписей.Записывать = Истина;
	
КонецПроцедуры
