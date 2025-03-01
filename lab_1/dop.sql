SELECT
	M.id,
	M.human_id,
	M.council_id,
	M.meeting_date,
	EXP(M.human_id) * factorial(M.council_id) AS result	
FROM
	 Meetings M
WHERE
	 meeting_date >= NOW() - INTERVAL '3 hours';
