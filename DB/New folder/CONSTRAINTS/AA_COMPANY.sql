--------------------------------------------------------
--  Constraints for Table AA_COMPANY
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."AA_COMPANY" ADD CONSTRAINT "AA_COMPANY_PK" PRIMARY KEY ("ID_COMPANY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."AA_COMPANY" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."AA_COMPANY" MODIFY ("ID_COMPANY" NOT NULL ENABLE);
