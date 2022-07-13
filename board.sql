-- ������ ����
CREATE SEQUENCE mySeq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000
NOCYCLE
NOCACHE;

-- 1���� ������ 1�� �����ϸ� �ּҰ� 1���� �ִ밪 1000���� ������ �ڵ� ���� �� �������� board ���̺��� �����

-- board ���̺� ����
CREATE TABLE board(
    bno NUMBER(4) PRIMARY KEY, --�۹�ȣ
    title VARCHAR2(50) NOT NULL, --������
    content VARCHAR2(2000) NOT NULL, --�۳���
    regDate DATE DEFAULT SYSDATE --�����
    
    );
    
-- �Խñ� �߰�
INSERT INTO board (bno, title, content, regDate)
VALUES (mySeq.NEXTVAL, '����1', '����1 �����Դϴ�', SYSDATE);
INSERT INTO board (bno, title, content, regDate)
VALUES (mySeq.NEXTVAL, '����2', '����2 �����Դϴ�', SYSDATE);

SELECT * FROM board;