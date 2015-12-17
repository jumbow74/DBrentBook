--------------------------------------------------------
--  DDL for Table AA_BOOK
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."AA_BOOK" 
   (	"ISBN" NUMBER, 
	"BOOKNAME" VARCHAR2(100 BYTE), 
	"PRICERENT" NUMBER, 
	"TOTAL" NUMBER, 
	"REMAIN" NUMBER, 
	"ID_TYPE" NUMBER, 
	"ID_COMPANY" NUMBER, 
	"WRITER" VARCHAR2(200 BYTE), 
	"NUM_PAGE" NUMBER, 
	"DETAIL" LONG, 
	"DATE_ADD" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;