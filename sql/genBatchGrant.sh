
# 批量生成授权语句

sqlplus username/passwd@ora << EOF >> batchGrant.sql
set head off
spool ./grant.sql
select 'grant ' || privelege || ' on ' || owner || '.' || table_name || 
' to ' || grantee || ';' grant_sql
	from dba_tab_privs
where owner = '';
spool off
exit;
EOF

sqlplus username/passwd@ora << EOF >>batchgrant.log
set head off
@./grant.sql
exit;
EOF 
