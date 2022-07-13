-- 서브쿼리(부속 질의)
-- WHERE절에서 사용
-- 가장 비싼 도서의 이름을 검색하시오
SELECT bookname, price
FROM book
WHERE price = (SELECT MAX(price)FROM book);

-- 도서를 구매한 적이 있는 고객의 이름을 검색하시오
