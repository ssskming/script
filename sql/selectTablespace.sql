一一查询表空间使用率
select
	t.tablespace_name "表空间名称",
	t.total_space "总空间大小",
	t.total_space - nvi(f.free space,0) "已使用空间大小",
	nvl(f.free_space,0) "剩余空间大小,
	round((f.free_space /t.total_space) * 100) || '%' "剩余"
from   (select 
		round(sum(bytes)/1024/1024/1024) free_space
	from dba_free_space 
	group by tablespace_name) f,
	
	(select 
		round(sum(bytes)/1024/1024/1024) total_space
	from dba_data_files 
	group by tablespace name) t
where	f.tablespace_name(+) = t.tablespace_name
	--t.tablespace_name = ''
	order by round((nvl(f.free_space,o)/ t.total space) * 100);
