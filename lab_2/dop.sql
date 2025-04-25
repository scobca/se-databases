select 
    parent.ИД,
    parent.КОРОТКОЕ_ИМЯ,
    COUNT(child.ИД) as КОЛИЧЕСТВО_ПОДОТДЕЛОВ
from
    "Н_ОТДЕЛЫ" as parent
        left join
    "Н_ОТДЕЛЫ" as child on child.ОТД_ИД = parent.ИД
where 
    parent.КОРОТКОЕ_ИМЯ like any (array['%О%', '%У%', '%В%'])
group by
    parent.ИД, parent.КОРОТКОЕ_ИМЯ;
