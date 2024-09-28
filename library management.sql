create database books;
use books;
create table book (bookid varchar(250) primary key,title char(50),publisher char(50),author char(50));
insert into book values (235,'hearts','vijaya','gergeo'),(236,'sun','thumbsups','sam'),(237,'whisper','agrawal','leo'),(238,'redo of healer','wit','toria'),(239,'dragon ball','toei','akira toriyama');
select *
from book;
set sql_safe_updates = 0;
update book set bookavaliable = 2 where bookid = 235;
update book set bookavaliable = 6 where bookid = 236;
update book set bookavaliable = 1 where bookid = 237;
update book set bookavaliable = 0 where bookid = 238;
update book set bookavaliable = 3 where bookid = 239;
set sql_safe_updates = 1;
alter table book add column bookavaliable int;
create table members(memberid int primary key,membername char(50),emailid varchar(250));
insert into members (memberid,membername,emailid) values (256657,'rahul','rahul234@gmail.com'),(254466,'ram','ram456@gmail.com'),(245965,'suresh','suresh5663@gmail.com');
select *
from members;
alter table members modify phone varchar(250);
set sql_safe_updates = 0;
update members set phone = '9648751235' where memberid = 245965;
update members set phone = '7895642169' where memberid = 254466;
update members set phone = '9895475624' where memberid = 256657;
set sql_safe_updates = 1;
create table returnbook(broughtdate date,returndate date,booksubmit varchar(250));
INSERT INTO returnbook (broughtdate, returndate, booksubmit)
VALUES 
('2024-05-15', '2024-06-20', 'submitted'),
('2024-07-20', NULL, 'not submitted'),
('2024-08-25', '2024-09-26', 'submitted');
select *
from returnbook;
show triggers like 'returnbook';
alter table returnbook add column memberid int ;
alter table returnbook drop memberid;
truncate table returnbook;



