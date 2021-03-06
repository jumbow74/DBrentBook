--------------------------------------------------------
--  File created - Tuesday-December-15-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AA_COMPANY
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."AA_COMPANY" 
   (	"ID_COMPANY" NUMBER, 
	"NAME" VARCHAR2(100 BYTE), 
	"PHONE" VARCHAR2(11 BYTE), 
	"ADDRESS" VARCHAR2(300 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.AA_COMPANY
SET DEFINE OFF;
Insert into SYSTEM.AA_COMPANY (ID_COMPANY,NAME,PHONE,ADDRESS) values (4441,'ซีเอ็ดยูเคชั่น','053-699469','108 ถนนเชียงใหม่-ลำปาง Mueang Chiang Mai District, Chiang Mai 50300');
Insert into SYSTEM.AA_COMPANY (ID_COMPANY,NAME,PHONE,ADDRESS) values (4442,'เดียร์ เดียร์','053-955168','230 ซอยเพชรเกษม51 แขวนหลักสอง เขตบางแค กทม. 10160');
Insert into SYSTEM.AA_COMPANY (ID_COMPANY,NAME,PHONE,ADDRESS) values (4443,'บริษัท แจ่มใสพับลิซชิ่ง จำกัด','053-955876','285/33 ซอย 31 ถนนจรัญสนิทวงศ์ แขวงบางขุนศรี เขตบางกอกน้อย กทม 10700');
--------------------------------------------------------
--  DDL for Index AA_COMPANY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."AA_COMPANY_PK" ON "SYSTEM"."AA_COMPANY" ("ID_COMPANY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
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
