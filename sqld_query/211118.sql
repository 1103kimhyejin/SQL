<ROLLUP vs CUBE vs GROUPING SETS>
: 계층 구조로 집계를 출력
- ROLLUP: 소그룹 간의 소계를 계산함
- CUBE: GROUP BY 항목들간 다차원적인 소계를 계산할 수 있음(모든 그룹케이스를 계산함)
- GROUPING SETS: 특정 항목에 대한 소계를 계산할 수 있음 (GROUP) 


<GROUPING 함수>
: 집계된 행의 NULL을 판단할 때 사용한다. 
실제 조회된 데이터의 NULL과 소계, 합계로 추가된 NULL은 GROUPING 함수만 구별이 가능하다.
결과가 NULL일때 1, NULL이 아닐때 0의 값을 반환한다.


<RANK>
: ORDER BY를 포함한 쿼리문에서 특정 항목(칼럼)에 대한 순위를 구하는 함수이며 
동일한 값에 대해서는 동일한 순위를 부여하게 된다.


<DENSE_RANK>
: RANK 함수와 흡사하나, 동일한 순위를 하나의 건수로 취급하는 것이 다른 점이다.


<ROW_NUMBER>
: RANK나 DENCE_RANK 함수가 동일한 값에 대해서는 동일한 순위를 부여하는데 반해,
동일한 값이라도 고유한 순위를 부여한다.