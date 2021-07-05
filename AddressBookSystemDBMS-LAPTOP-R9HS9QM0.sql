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
    	phone_number     varchar(13) NOT NULL,				#Phone number of Addess Book.
    	email            VARCHAR(50) NOT NULL,			#Email of Address Book.
    	PRIMARY KEY(id)						#Make id primary key.
	);
    #View the table using 'DESCRIBE'command.
	DESCRIBE address_book;
    
    #Insert a data into table using 'INSERT' command.
	INSERT INTO address_book(first_name, last_name, address, city , state , zip , phone_number, email) VALUES
	    ('Rekha','Patil','GKW Layout', 'Bangalore', 'Kar',560058, 8095592954, 'patilrekha.1206@gmail.com'),
		('Rahmi','Patil','RajajiNagar','Bangalore','Kar', 560057,9716277712,'rashmi123@gmail.com'),
    	('Riya','Patil','Peenya','Bngalore', 'Kar', 560059,983734421,'riya15@gmail.com'),
    	('Ramya','Patil','Peenya','Bangalore','kar',560059,8764727523,'ramya12@gmail.com');
        #View a table in a table.
	    SELECT * FROM address_book;
        DROP TABLE address_book;
        
	  #Add a column in a table like:basic_pay;
	 ALTER TABLE employee_payroll ADD basic_pay Double NOT NULL AFTER state;
     
	#Add a column in a table like:deduction
	 ALTER TABLE employee_payroll ADD deduction Double NOT NULL AFTER basic_pay;
     
     #Update one of the data from the table.
     SET SQL_SAFE_UPDATES=0;
     # It is use to update the data from the table using where clause.
     UPDATE address_book set city = 'Mangalore' WHERE first_name = 'Riya';	
     # Retrive the data from the table.
     SELECT * FROM address_book;
     
    # // Delete the entry of the person 
    
        # Deleted the data where name is Ramya 
        DELETE from address_book WHERE first_name = 'Ramya';
        # Retrive the data from the table .
        SELECT * FROM address_book;
        
     