SELECT w.id
FROM Weather w
WHERE w.temperature > (
    SELECT t.temperature FROM Weather t
    WHERE t.recordDate = DATE_SUB(w.recordDate, INTERVAL 1 DAY) 
);