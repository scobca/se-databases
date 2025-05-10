CREATE OR REPLACE FUNCTION log_new_meeting()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO MeetingLogs (meeting_id, message)
    VALUES (
        NEW.id,
        'Добавлена новая встреча: человек ID ' || NEW.human_id || ', совет ID ' || NEW.council_id || ', дата ' || TO_CHAR(NEW.meeting_date, 'YYYY-MM-DD')
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
