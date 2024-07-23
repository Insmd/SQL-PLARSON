-- SQL Запрос для получения месяцев и количества дней в месяце для 2024 года
SELECT 
    DATENAME(MONTH, DATEADD(MONTH, number, '2024-01-01')) AS Month, -- Получаем имя месяца
    DAY(EOMONTH(DATEADD(MONTH, number, '2024-01-01'))) AS Days -- Получаем количество дней в месяце
FROM master..spt_values -- Используем системную таблицу для генерации чисел
WHERE type = 'P'
AND number BETWEEN 0 AND 11 -- Ограничиваем диапазон чисел от 0 до 11
ORDER BY number -- Сортируем по номеру месяца
