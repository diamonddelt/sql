This repository is for demonstrating various SQL Server 2012 solutions/scripts/etc.

It uses the AdventureWorksLT2012_Data.mdf database, which is a freely distributed sample database provided by Microsoft. You can download it here: http://msftdbprodsamples.codeplex.com/releases/view/55330

To install it in SQL Server 2012 (easy modo):
	1. Save the .mdf in a directory of your choice
	2. Open SQL Server 2012 and Attach a New Database
	3. Select the .mdf file, and remove any auto-generated .ldf entry it tries to find (the attach process will generate it's own new log file)
	4. Profit

I am using the "Lite" version, because the full version is over 180MB and that's too big for simple demonstration purposes.

The .gitignore file specifies both the .mdf and .ldf files, which are the corresponding database and log files, that are not committed. However, all scripts applicable to these sample databases will be commited.

v1.0 - The "scripts" folder will contain all the goodies