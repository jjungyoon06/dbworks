--ex4 ���̺� ����
CREATE TABLE ex4(
    userId      VARCHAR2(10) PRIMARY KEY,   --�⺻Ű ����
    passwd      VARCHAR2(10) NOT NULL
);

--���̺� �̸� ����
ALTER TABLE ex4 RENAME TO member;

--������ Į�� �߰�
ALTER TABLE member ADD regDate DATE;

--�޿� Į�� �߰�
ALTER TABLE member ADD salary NUMBER;

--������ ����
INSERT INTO member (userId, passwd) VALUES ('sky2022', 'abcd123');
INSERT INTO member (userId, passwd) VALUES ('sky2022', 'abcd1234');
INSERT INTO member (userId, passwd, regDate, salary)
VALUES ('smile2022', 'abcd1234', SYSDATE, 1000000 );

--������ ����(UPDATE ���̺�� SET Į���� = �� WHERE ����)
UPDATE member SET salary = 2000000 WHERE userId = 'smile2022';
UPDATE member SET salary = 2000000 WHERE userId = 'river2022';

--������ ��ȸ
SELECT * FROM member;

--Ư�� ������ ��ȸ(SELECT Į���� FROM ���̺�� WHERE ����)
SELECT regDate FROM member WHERE userId = 'sky2022';

--���̺��� ����
DESC member;
