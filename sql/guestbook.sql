-- guestbook
desc guestbook;

select no, name, password, message, reg_date from guestbook;

insert into guestbook values (null,'김','1234','하하',now());

delete from guestbook where no = 4 and password = '1234';

