--ex4 테이블 생성
CREATE TABLE ex4(
    userId      VARCHAR2(10) PRIMARY KEY,   --기본키 선언
    passwd      VARCHAR2(10) NOT NULL
);

--테이블 이름 변경
ALTER TABLE ex4 RENAME TO member;

--가입일 칼럼 추가
ALTER TABLE member ADD regDate DATE;

--급여 칼럼 추가
ALTER TABLE member ADD salary NUMBER;

--데이터 삽입
INSERT INTO member (userId, passwd) VALUES ('sky2022', 'abcd123');
INSERT INTO member (userId, passwd) VALUES ('sky2022', 'abcd1234');
INSERT INTO member (userId, passwd, regDate, salary)
VALUES ('smile2022', 'abcd1234', SYSDATE, 1000000 );

--데이터 수정(UPDATE 테이블명 SET 칼럼명 = 값 WHERE 조건)
UPDATE member SET salary = 2000000 WHERE userId = 'smile2022';
UPDATE member SET salary = 2000000 WHERE userId = 'river2022';

--데이터 조회
SELECT * FROM member;

--특정 조건을 조회(SELECT 칼럼명 FROM 테이블명 WHERE 조건)
SELECT regDate FROM member WHERE userId = 'sky2022';

--테이블의 구조
DESC member;
