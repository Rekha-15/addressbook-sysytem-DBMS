#Create a database using 'CREATE'command like:address_book_system.
 CREATE DATABASE address_book_system;
 
 #View a all databases.
	SHOW databases;
    #Use particular database using 'USE' command. 
	USE address_book_system;                                 #Database changed
	#View database.
	SELECT DATABASE();
    
    #Create a table using 'CREATE' command.
	CREATE TABLE address_book
	(
    	id               INT unsigned NOT NULL AUTO_INCREMENT,	#Unique ID for the record.
    	first_name       VARCHAR(50) NOT NULL,			#First Names of Address Book.
    	last_name        VARCHAR(50),				#Last Names of Address Book.
    	address          VARCHAR(150) NOT NULL,			#Address of Address Book.
    	city             VARCHAR(30) NOT NULL,			#City of Address Book.
    	state            VARCHAR(30) NOT NULL,			#State of Address Book.
    	zip              INT(6) NOT NULL,				#Zip of Address Book.
    	phone_number     INT(13) NOT NULL,				#Phone number of Addess Book.
    	email            VARCHAR(50) NOT NULL,			#Email of Address Book.
    	PRIMARY KEY(id)						#Make id primary key.
	);
    #View the table using 'DESCRIBE'command.
	DESCRIBE address_book;