-- guestbook
desc guestbook;

select no, name, password, message, reg_date from guestbook;

insert into guestbook values (null,'κΉ','1234','νν',now());

delete from guestbook where no = 4 and password = '1234';

