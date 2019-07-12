drop table RollBook;
drop sequence Roll_seq;

create table RollBook(
	num number primary key,
	Roll_accountNum number references account(accountNum),
	Roll_courseCode varchar2(10) references course(courseCode),
	attendancedate date,
	attendance varchar2(10)
);

create sequence Roll_seq;

--dummy
insert into RollBook values (Roll_seq.nextval, 4, '1906JAVA', '19-07-07','조퇴');
insert into RollBook values (Roll_seq.nextval, 4, '1906JAVA', '19-07-08','결석');
insert into RollBook values (Roll_seq.nextval, 4, '1906JAVA', '19-07-09', '출석');
insert into RollBook values (Roll_seq.nextval, 4, '1906JAVA', '19-07-10', '결석');
insert into RollBook values (Roll_seq.nextval, 5, '1905WEB', '19-07-07','지각');
insert into RollBook values (Roll_seq.nextval, 5, '1905WEB', '19-07-08','출석');
insert into RollBook values (Roll_seq.nextval, 5, '1905WEB', '19-07-09', '결석');

commit;

select * from RollBook;
