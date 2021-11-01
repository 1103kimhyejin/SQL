<테이블명과 컬럼명>
: 반드시 문자로 시작해야 한다!
A-Z, a-z, 0-9, _, $, # (영어, 숫자, 언더바, 달라, 샾)만 허용함.


<Delete(/Modify) Action: 삭제 시 (과목2-17번)>
CASCADE 참조 무결성 규정이므로 직원 테이블의 '2000','3000'도 같이 삭제된다.

- Delete(/Modify) Action
1) Cascade: Master 삭제 시 Child 같이 삭제
2) Set Null: Master 삭제 시 Child 해당 필드 Null
3) Set Default: Master 삭제 시 Child 해당 필드 Default 값으로 설정
4) Restrict: Child 테이블에 PK 값이 없는 경우만 Master 삭제 허용
5) No Action: 참조 무결성을 위반하는 삭제/수정 액션을 취하지 않음


<테이블 이름 변경 (과목2-18번)>
RENAME OLD_NAME TO NEW_NAME (ANSI 표준 기준, 오라클과 동일!)


<Insert Action: 입력 시 (과목2-19번)>
1) Automatic: Master 테이블에 PK가 없는 경우,   Master PK를 생성 후 Child 입력
2) Set Null: Master 테이블에 PK가 없는 경우,    Child 외부키를 Null 처리
3) Set Default: Master 테이블에 PK가 없는 경우, Child 외부키를 기본값으로 입력
4) Dependent:  Master 테이블에 PK가 없는 경우,  Child 입력 허용X
                                                => Master 테이블에 PK가 존재할 때만 Child 입력 허용
5) No Action: 참조 무결성을 위반하는 입력 액션을 취하지 않음


