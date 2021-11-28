
CREATE OR REPLACE FUNCTION totalRecords ()
RETURNS integer AS $total$
declare
	total integer;
BEGIN
   SELECT count(*) into total FROM  pytest.emps;
   RETURN total;
END;
$total$ LANGUAGE plpgsql;


select totalRecords();