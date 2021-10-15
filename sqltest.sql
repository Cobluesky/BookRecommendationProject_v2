use bookrecommendationdb;
create table bookinfotbl(bookid int, bookname varchar(100), bookauthor varchar(20), booksummary varchar(200), bookprice int);
create table userinfotbl(userid int, userpw int, username varchar(100), useremail varchar(100));
select * from bookinfotbl;
select * from userinfotbl;
alter table userinfotbl add (usertel varchar(20), usergender boolean)