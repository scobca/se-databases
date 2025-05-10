CREATE TRIGGER trg_log_meeting_insert
AFTER INSERT ON Meetings
FOR EACH ROW
EXECUTE FUNCTION log_new_meeting();
