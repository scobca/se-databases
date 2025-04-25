select
    Н_УЧЕНИКИ.ГРУППА,
    avg(age(current_date, Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ)) as СРЕДНИЙ_ВОЗРАСТ
from
    Н_ЛЮДИ
        inner join
    Н_УЧЕНИКИ on Н_УЧЕНИКИ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
group by
    Н_УЧЕНИКИ.ГРУППА
having
    AVG(age(CURRENT_DATE, Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ)) < (
        select
            AVG(age(CURRENT_DATE, Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ))
        from
            Н_ЛЮДИ
                inner join
            Н_УЧЕНИКИ on Н_УЧЕНИКИ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
        where
            Н_УЧЕНИКИ.ГРУППА = '1101'
    )
order by
    СРЕДНИЙ_ВОЗРАСТ;
