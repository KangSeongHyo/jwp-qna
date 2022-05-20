INSERT INTO USER (ID,  USER_ID, PASSWORD, EMAIL, NAME, CREATED_AT, UPDATED_AT) VALUES (1,  'javajigi', 'password', 'javajigi@slipp.net', 'name',  SYSDATE(), SYSDATE());
INSERT INTO USER (ID,  USER_ID, PASSWORD, EMAIL, NAME, CREATED_AT, UPDATED_AT) VALUES (2,  'sanjigi', 'password', 'sanjigi@slipp.net', 'name',  SYSDATE(), SYSDATE());
INSERT INTO USER (ID,  USER_ID, PASSWORD, EMAIL, NAME, CREATED_AT, UPDATED_AT) VALUES (3,  'ul8415', '1234', 'step@next.com', '홍길동',  SYSDATE(), SYSDATE());
INSERT INTO USER (ID,  USER_ID, PASSWORD, EMAIL, NAME, CREATED_AT, UPDATED_AT) VALUES (4,  'abc123', '4321', 'teps@next.com', '김철수',  SYSDATE(), SYSDATE());
INSERT INTO USER (ID,  USER_ID, PASSWORD, EMAIL, NAME, CREATED_AT, UPDATED_AT) VALUES (5,  'vdd123', '0900$@', 'mm11@next.com', '이민정',  SYSDATE(), SYSDATE());

INSERT INTO QUESTION (ID, WRITER_ID,TITLE,CONTENTS, DELETED,CREATED_AT, UPDATED_AT ) VALUES (1, 1, 'title1', 'contents1', false, SYSDATE(), SYSDATE());
INSERT INTO QUESTION (ID, WRITER_ID,TITLE,CONTENTS, DELETED,CREATED_AT, UPDATED_AT ) VALUES (2, 2, 'title2', 'contents2', false, SYSDATE(), SYSDATE());
INSERT INTO QUESTION (ID, WRITER_ID,TITLE,CONTENTS, DELETED,CREATED_AT, UPDATED_AT ) VALUES (3, 1, '오늘 날씨 어떤가요?', '패딩 입어도 될까요?', false, SYSDATE(), SYSDATE());
INSERT INTO QUESTION (ID, WRITER_ID,TITLE,CONTENTS, DELETED,CREATED_AT, UPDATED_AT ) VALUES (4, 3, '작성자만 답변단 게시물', '내용', false, SYSDATE(), SYSDATE());
INSERT INTO QUESTION (ID, WRITER_ID,TITLE,CONTENTS, DELETED,CREATED_AT, UPDATED_AT ) VALUES (5, 5, '답변 없는 게시물', '답변 X', false, SYSDATE(), SYSDATE());
INSERT INTO QUESTION (ID, WRITER_ID,TITLE,CONTENTS, DELETED,CREATED_AT, UPDATED_AT ) VALUES (6, 1, '삭제한 답변이 있는 게시물', '내용', false, SYSDATE(), SYSDATE());


INSERT INTO ANSWER (ID, QUESTION_ID, CONTENTS, WRITER_ID, DELETED, CREATED_AT, UPDATED_AT) VALUES (1, 1, 'Answers Contents1', 1, false, SYSDATE(), SYSDATE());
INSERT INTO ANSWER (ID, QUESTION_ID, CONTENTS, WRITER_ID, DELETED, CREATED_AT, UPDATED_AT) VALUES (2, 1, 'Answers Contents2', 2, false, SYSDATE(), SYSDATE());
INSERT INTO ANSWER (ID, QUESTION_ID, CONTENTS, WRITER_ID, DELETED, CREATED_AT, UPDATED_AT) VALUES (3, 3, '더워서 패딩은 아닌 것 같아요', 3, false, SYSDATE(), SYSDATE());
INSERT INTO ANSWER (ID, QUESTION_ID, CONTENTS, WRITER_ID, DELETED, CREATED_AT, UPDATED_AT) VALUES (4, 3, '추워서 패딩 괜찮을듯 합니다', 3, true, SYSDATE(), SYSDATE());
INSERT INTO ANSWER (ID, QUESTION_ID, CONTENTS, WRITER_ID, DELETED, CREATED_AT, UPDATED_AT) VALUES (5, 4, '작성자 자답1', 3, false, SYSDATE(), SYSDATE());
INSERT INTO ANSWER (ID, QUESTION_ID, CONTENTS, WRITER_ID, DELETED, CREATED_AT, UPDATED_AT) VALUES (6, 4, '작성자 자답2', 3, false, SYSDATE(), SYSDATE());
INSERT INTO ANSWER (ID, QUESTION_ID, CONTENTS, WRITER_ID, DELETED, CREATED_AT, UPDATED_AT) VALUES (7, 6, '정상 답변', 1, false, SYSDATE(), SYSDATE());
INSERT INTO ANSWER (ID, QUESTION_ID, CONTENTS, WRITER_ID, DELETED, CREATED_AT, UPDATED_AT) VALUES (8, 6, '삭제된 답변', 1, true, SYSDATE(), SYSDATE());

INSERT INTO DELETE_HISTORY (ID, CONTENT_ID, CONTENT_TYPE, DELETED_BY_ID,CREATE_DATE) VALUES (1, 2, 'ANSWER',   3, SYSDATE());
