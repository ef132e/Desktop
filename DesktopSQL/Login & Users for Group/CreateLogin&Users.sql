CREATE LOGIN connects WITH PASSWORD = '1234';
GRANT ALTER ANY LOGIN TO connects;
CREATE USER ConnectManager FOR LOGIN connects;
GRANT ALTER ANY USER TO ConnectManager;
/* Dung login connects de tao hai login nay*/
CREATE LOGIN groups WITH PASSWORD = '02468';
CREATE USER GroupManager FOR LOGIN groups;
CREATE LOGIN users WITH PASSWORD = '1357';
CREATE USER UserManager FOR LOGIN users;