--------------------------------------------------------
--  Constraints for Table AA_BOOK
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."AA_BOOK" ADD CONSTRAINT "AA_BOOK_PK" PRIMARY KEY ("ISBN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."AA_BOOK" MODIFY ("ISBN" NOT NULL ENABLE);
