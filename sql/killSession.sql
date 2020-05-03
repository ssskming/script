
-- alter system kill session '***,***'

select  gse.inst_id,
	gse.sid,
	gse.SERIAL#,
	obj.owner,
	obj.object_name,
	gsql.sql_test,
	'alter system kill session' || '''' || gse.SID || ',' || gse.SERIAL# || '''' ||';',
	gse.*
from    dba_objects obj,
	gv$locked_object lobj,
	gv$sessin gse,
	gv$sql gsql
where   obj.object_id = lobj.object_id
and 	lobj.inst_id = gse.inst_id
and 	lobj.session_id = gse.SID
and 	gse.sql_id = gsql.sql_id
and 	gse.inst_id = gsql.inst_id
and 	obj.object_name = '';
	 
