<SQL 명령어의 종류 / 명령어>
DML(데이터 조작어) : select, insert, update, delete
	- 비절차적 DML : 사용자가 무슨(what) 데이터를 원하는지만 명세
	- 절차적 DML : what + 어떻게(how) 데이터를 접근해야 하는지 명세 

DDL(데이터 정의어) : create, alter, drop, rename => 구조 정의!
DCL(데이터 제어어) : grant, revoke
TCL(트랜잭션 제어어) : commit, rollback


<PK 제약조건 (과목2-6번)>
create table product \
(prod_id varchar2(10) not null
,prod_nm varchar2(100) not null
,reg_dt date not null
,regr_no number(10)
,constraint product_pk primary key (prod_id));

<NULL (과목2-8번)>
: 아직 정의되지 않은 미지의 값, 모르는 값
: 현재 데이터를 입력하지 못하는 경우
: 값의 부재
: null과의 모든 비교는 (is null 제외)는 알 수 없음(unknown)을 반환!

=> 공백문자나 숫자 0 의미하지 않는다.

<순수 관계 연산자 (과목2-65번)>
select, project, join, divide

<데이터 모델링 시 유의점 (과목1-3번)>
중복
비유연성 => 데이터의 정의를 데이터의 사용 프로세스와 분리해야 한다. 
비일관성 => 사용자가 처리하는 프로세스 혹은 관련 프로그램과 테이블 연계성을 높이는 것은
			데이터 모델이 업무 변경에 대해 취약하게 되는 단점에 해당한다.
