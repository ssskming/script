
create public database link to_old 
	connect to username_old identified by "******"
	using'(description=
	   (failover=on)
		(address=(pro0tocol=tcp)(host=192.168.1.1)(port=1521))
		(address=(pro0tocol=tcp)(host=192.168.1.1)(port=1521))
	(load_balance=yes)
	(connect_data=
	(service_name=instname)
		(failover_mode=(type=session)(mothod=basic)))
)'
