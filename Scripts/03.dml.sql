-- PRODUCT
INSERT INTO PRODUCT(NAME, KIND, PRICE, SALEPRICE, MARGIN, CONTENT, IMAGE) VALUES('크로그다일부츠', '2', 40000, 50000, 10000, '오지니랄 크로그다일부츠 입니다.', 'w2.jpg');
INSERT INTO PRODUCT(NAME, KIND, PRICE, SALEPRICE, MARGIN, CONTENT, IMAGE, BEST_YN) VALUES('롱부츠', '2', 40000, 50000, 10000,'따뜻한 롱부츠 입니다.', 'w-28.jpg', 'N');
INSERT INTO PRODUCT(NAME, KIND, PRICE, SALEPRICE, MARGIN, CONTENT, IMAGE, BEST_YN) VALUES('힐', '1', 10000, 12000, 2000, '여성용전용 힐', 'w-26.jpg', 'N');
INSERT INTO PRODUCT(NAME, KIND, PRICE, SALEPRICE, MARGIN, CONTENT, IMAGE, BEST_YN) VALUES('슬리퍼', '4', 5000, 5500, 500, '편안한 슬리퍼입니다.', 'w-25.jpg', 'Y');
INSERT INTO PRODUCT(NAME, KIND, PRICE, SALEPRICE, MARGIN, CONTENT, IMAGE, BEST_YN) VALUES('회색힐', '1', 10000, 12000, 2000, '여성용전용 힐', 'w9.jpg', 'N');
INSERT INTO PRODUCT(NAME, KIND, PRICE, SALEPRICE, MARGIN, CONTENT, IMAGE) VALUES('여성부츠', '2', 12000, 18000, 6000, '여성용 부츠', 'w4.jpg');
INSERT INTO PRODUCT(NAME, KIND, PRICE, SALEPRICE, MARGIN, CONTENT, IMAGE, BEST_YN) VALUES('핑크샌달', '3', 5000, 5500, 500, '사계절용 샌달입니다.', 'w-10.jpg', 'Y');
INSERT INTO PRODUCT(NAME, KIND, PRICE, SALEPRICE, MARGIN, CONTENT, IMAGE, BEST_YN) VALUES('슬리퍼', '3', 5000, 5500, 500, '편안한 슬리퍼입니다.', 'w11.jpg', 'Y');
INSERT INTO PRODUCT(NAME, KIND, PRICE, SALEPRICE, MARGIN, CONTENT, IMAGE) VALUES('스니커즈', '4', 15000, 20000, 5000, '활동성이 좋은 스니커즈입니다.', 'w1.jpg');
INSERT INTO PRODUCT(NAME, KIND, PRICE, SALEPRICE, MARGIN, CONTENT, IMAGE, BEST_YN) VALUES('샌달', '3', 5000, 5500, 500, '사계절용 샌달입니다.', 'w-09.jpg','N');
INSERT INTO PRODUCT(NAME, KIND, PRICE, SALEPRICE, MARGIN, CONTENT, IMAGE, BEST_YN) VALUES('스니커즈', '5', 15000, 20000, 5000, '활동성이 좋은 스니커즈입니다.', 'w-05.jpg','N');

-- MEMBER
INSERT INTO MEMBER(ID, PWD, NAME, ZIP_NUM, ADDRESS, PHONE, EMAIL) VALUES
('one', '1111', '김나리', '133-110', '서울시성동구성수동1가 1번지21호', '017-777-7777', 'KNARI@TEST.CO.KR');
INSERT INTO MEMBER(ID, PWD, NAME, ZIP_NUM, ADDRESS, PHONE, EMAIL) VALUES
('two', '2222', '이백합', '130-120', '서울시송파구잠실2동 리센츠 아파트 201동 505호', '011-123-4567', 'LBH@TEST.CO.KR');

-- CART
INSERT INTO CART(MEMBERID, PNO, QUANTITY) VALUES('one', 1, 1);


-- ORDER
INSERT INTO ORDERS(ID) VALUES('one');
INSERT INTO ORDERS(ID) VALUES('one');
INSERT INTO ORDERS(ID) VALUES('two');

-- ORDER_DETAIL
INSERT INTO ORDER_DETAIL(ONO, PNO, QUANTITY) VALUES(1, 1, 1);
INSERT INTO ORDER_DETAIL(ONO, PNO, QUANTITY) VALUES(1, 2, 5);
INSERT INTO ORDER_DETAIL(ONO, PNO, QUANTITY) VALUES(2, 4, 3);
INSERT INTO ORDER_DETAIL(ONO, PNO, QUANTITY) VALUES(3, 3, 1);
INSERT INTO ORDER_DETAIL(ONO, PNO, QUANTITY) VALUES(3, 2, 1);
INSERT INTO ORDER_DETAIL(ONO, PNO, QUANTITY) VALUES(3, 6, 2);
INSERT INTO ORDER_DETAIL(ONO, PNO, QUANTITY) VALUES(3, 1, 2);

--QNA
INSERT INTO QNA (SUBJECT, CONTENT, ID) VALUES('테스트', '질문내용1', 'one');
UPDATE QNA SET REP='답변내용', REP_YN='2';

INSERT INTO QNA (SUBJECT, CONTENT, ID)VALUES('테스트2', '질문내용2', 'one');

-- WORKER
INSERT INTO WORKER VALUES('ADMIN', 'ADMIN', '홍관리', '010-777-7777');
INSERT INTO WORKER VALUES('PINKSUNG', 'PINKSUNG', '명강사', '010-999-9696');