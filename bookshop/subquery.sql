-- ��������(�μ� ����)
-- WHERE������ ���
-- ���� ��� ������ �̸��� �˻��Ͻÿ�
SELECT bookname, price
FROM book
WHERE price = (SELECT MAX(price)FROM book);

-- ������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
