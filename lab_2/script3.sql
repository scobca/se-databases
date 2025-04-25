SELECT EXISTS (
  SELECT 1
  FROM
         Н_УЧЕНИКИ
  INNER JOIN
         Н_ПЛАНЫ
  ON
         Н_УЧЕНИКИ.ПЛАН_ИД = Н_ПЛАНЫ.ИД
  INNER JOIN
         Н_ЛЮДИ
  ON
        Н_УЧЕНИКИ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
  WHERE 
        Н_ПЛАНЫ.ФО_ИД = 2
  AND
        AGE(CURRENT_DATE, Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ) <  INTERVAL '20 year' 
);
