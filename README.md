### Apache 2.4.57, PHP 8.2.9, MySQL 8.1.0 to d:/server, using mod_fcgid 

### **Download release** and extract to D:\server folder.
### **Run:** 
mysqld --defaults-file=D:/server/bin/mysql/mysql-8.1.0-winx64/my.ini --initialize-insecure
To initialize MySQL

### Copy source code to folder:
 D:/server/www

### Run
apache_mysql_installservice.bat 
initialize  Windows service 

Note: If you copy the release to another folder:  d:\server, please change configuration MySQL, Apache, PHP files.
