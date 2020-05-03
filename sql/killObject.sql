
-- kill locked object
-- 查找被锁对象
select 	DISTINCT
	gvs.inst_id,
	gvs.sid,
	gvs.SERIAL#,
	gvs.username,
	gvs.sql_id,
	gsql.SQL_TEXT,
	obj.owner,
	obj.object_name
from 	gv$session gvs,gv$lock gvl,gv@sql gsql,dba_objects obj,gv$locked_object gvo
where 	gvl.inst_id = gvs.inst_id(+)
and	gvl.sid = gvs.sid(+)
and 	gvs.inst_id = gsql.inst_id(+)
and 	gvs.sql_id = gsql.sql_id(+)
and 	gvo.object_id = obj.object_id(+)
and 	gvs.inst_id = gvo.inst_id(+)
and 	gvs.username = ''
and 	gvs.sql_id is not null
and 	gvs.inst_id = ''
and 	gvs.sid = ''
and 	gsql.sql_id = ''
and 	obj.owner = ''
and 	obj.object_name ='';


