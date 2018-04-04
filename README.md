# 3R
enterprice reporting

Prerequisite : 

1.Java JDK 1.8

2.Pentaho pdi-ce-8.0.0.0-28

3.mysql 5.7


folder :

**1.export_slik**

Berisikan program untuk export laporan slik dari tabel ke csv

running :
	
	windows :
		
		run_export_slik.bat 			--> menjalankan untuk bulan kemarin
		
		run_export_slik.bat 2017-12-31	--> menjalankan untuk spesifik tanggal 2017-12-31
	
	linux :
		
		./run_export_slik.sh 			--> menjalankan untuk bulan kemarin
		
		./run_export_slik.sh 2017-12-31	--> menjalankan untuk spesifik tanggal 2017-12-31

**2.export_lb**

Berisikan program untuk export laporan bulanan dari tabel ke mdb (ms.access)

running :
	
	windows :
		
		run_export_lb.bat 				--> menjalankan untuk bulan kemarin
		
		run_export_lb.bat 2017-12-31	--> menjalankan untuk spesifik tanggal 2017-12-31
	
	linux :
		
		./run_export_lb.sh 				--> menjalankan untuk bulan kemarin
		
		./run_export_lb.sh 2017-12-31	--> menjalankan untuk spesifik tanggal 2017-12-31

**3.db**

Berisi 1 file dm_reporting.sql, untuk restore database