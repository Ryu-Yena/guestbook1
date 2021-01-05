--테이블 삭제
drop table guestbook;

--시퀀스 삭제
drop sequence seq_no;

--테이블 생성
create table guestbook(
    no number,
    name varchar2(80),
    password varchar2(20),
    content varchar2(2000),
    reg_date date,
    primary key(no)
    );
    
--시퀀스 생성
create sequence seq_no
INCREMENT by 1
start with 1;


--리스트
select no,
       name,
       password,
       content,
       reg_date
from guestbook;

