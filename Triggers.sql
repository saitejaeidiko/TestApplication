--------------------------------------------------------
--  File created - Friday-February-08-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger CANI_ASSIGNMENT_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."CANI_ASSIGNMENT_TRIG"    before INSERT   ON esbach.CANI_ASSIGNMENT   FOR EACH ROWBEGIN
  
    SELECT CANI_ASSIGNMENT_SEQ.NEXTVAL INTO :NEW.CANC_ASSIGNMENT_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."CANI_ASSIGNMENT_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CANI_SUPPLEMENTARY_DATA_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."CANI_SUPPLEMENTARY_DATA_TRIG"    before INSERT   ON esbach.CANI_SUPPLEMENTARY_DATA   FOR EACH ROWBEGIN
   
   SELECT CANI_SUPP_DATA_SEQ.NEXTVAL INTO :NEW.CANC_SUPPLEMENTARY_DATA_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."CANI_SUPPLEMENTARY_DATA_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CANI_TXN_CANC_RSN_INFO_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."CANI_TXN_CANC_RSN_INFO_TRIG"    before INSERT   ON esbach.CANI_TXN_CANC_RSN_INFO   FOR EACH ROWBEGIN
   
    SELECT CANI_TXN_CANC_RSN_INFO_SEQ.NEXTVAL INTO :NEW.CANC_TXN_CANC_RSN_INFO_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."CANI_TXN_CANC_RSN_INFO_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CANI_TXN_INFO_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."CANI_TXN_INFO_TRIG"    before INSERT   ON esbach.CANI_TXN_INFO   FOR EACH ROWBEGIN
   
    SELECT CANI_TXN_INFO_SEQ.NEXTVAL INTO :NEW.CANC_TXN_INFO_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."CANI_TXN_INFO_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CANI_UND_CANC_RSN_INFO_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."CANI_UND_CANC_RSN_INFO_TRIG"    before INSERT   ON ACHADMIN.CANI_UNDRLYG_CANC_RSN_INFO   FOR EACH ROWBEGIN
    
    SELECT CANI_UND_CANC_RSN_INFO_SEQ.NEXTVAL INTO :NEW.CANC_UNDRLYG_CANC_RSN_INFO_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."CANI_UND_CANC_RSN_INFO_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CANI_UNDERLYING_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."CANI_UNDERLYING_TRIG"    before INSERT   ON ACHADMIN.CANI_UNDERLYING   FOR EACH ROWBEGIN
   
    SELECT CANI_UNDERLYING_SEQ.NEXTVAL INTO :NEW.CANC_UNDRLYG_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."CANI_UNDERLYING_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CANO_REVO_RETO_GRPHDR_INFO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."CANO_REVO_RETO_GRPHDR_INFO_TRG" BEFORE INSERT ON CANO_REVO_RETO_GRPHDR_INFO FOR EACH ROW   <<COLUMN_SEQUENCES>>  BEGIN    IF INSERTING AND :NEW.GRP_HEADER_ID IS NULL THEN      SELECT CANO_REVO_RETO_GRPHDR_INFO_SEQ.NEXTVAL INTO :NEW.GRP_HEADER_ID FROM SYS.DUAL;    END IF;  END COLUMN_SEQUENCES;END;
/
ALTER TRIGGER "ACHADMIN"."CANO_REVO_RETO_GRPHDR_INFO_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CANO_REVO_RETO_TXN_INFO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."CANO_REVO_RETO_TXN_INFO_TRG"    before INSERT   ON ACHADMIN.CANO_REVO_RETO_TXN_INFO   FOR EACH ROWBEGIN  
   SELECT CANO_REVO_RETO_TXN_INFO_SEQ.NEXTVAL INTO :NEW.CAN_REV_RET_TXN_INF_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."CANO_REVO_RETO_TXN_INFO_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DCI_GP_HEADER_INFO_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."DCI_GP_HEADER_INFO_TRIG"    before INSERT   ON ACHADMIN.DCI_GP_HEADER_INFO   FOR EACH ROWBEGIN
  
   
   SELECT DCI_GP_HEADER_INFO_SEQ.NEXTVAL INTO :NEW.DCI_GP_HEADER_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."DCI_GP_HEADER_INFO_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DCI_TXN_INFO_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."DCI_TXN_INFO_TRIG"    before INSERT   ON ACHADMIN.DCI_TXN_INFO   FOR EACH ROWBEGIN
   
    SELECT DCI_TXN_INFO_SEQ.NEXTVAL INTO :NEW.DCI_TXN_INFO_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."DCI_TXN_INFO_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DCO_GROUP_HEADER_INFO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."DCO_GROUP_HEADER_INFO_TRG"    before INSERT   ON ACHADMIN.DCO_GROUP_HEADER_INFO   FOR EACH ROWBEGIN
  
   SELECT DCO_GROUP_HEADER_INFO_SEQ.NEXTVAL INTO :NEW.DCO_GRP_HEADER_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."DCO_GROUP_HEADER_INFO_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DCO_TXN_INFO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."DCO_TXN_INFO_TRG"    before INSERT   ON ACHADMIN.DCO_TXN_INFO   FOR EACH ROWBEGIN
  
   SELECT DCO_TXN_INFO_SEQ.NEXTVAL INTO :NEW.DCO_TXN_INF_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."DCO_TXN_INFO_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DDI_GP_HEADER_INFO_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."DDI_GP_HEADER_INFO_TRIG"    before INSERT   ON ACHADMIN.DDI_GP_HEADER_INFO   FOR EACH ROWBEGIN
    
   SELECT DDI_GP_HEADER_INFO_SEQ.NEXTVAL INTO :NEW.DDI_GP_HEADER_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."DDI_GP_HEADER_INFO_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DDI_TXN_INFO_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."DDI_TXN_INFO_TRIG"    before INSERT   ON ACHADMIN.DDI_TXN_INFO   FOR EACH ROWBEGIN
   
   SELECT DDI_TXN_INFO_SEQ.NEXTVAL INTO :NEW.DDI_TXN_INFO_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."DDI_TXN_INFO_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DDO_GROUP_HEADER_INFO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."DDO_GROUP_HEADER_INFO_TRG"    before INSERT   ON ACHADMIN.DDO_GROUP_HEADER_INFO   FOR EACH ROWBEGIN
  
   
   SELECT DDO_GROUP_HEADER_INFO_SEQ.NEXTVAL INTO :NEW.DDO_GRP_HEADER_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."DDO_GROUP_HEADER_INFO_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DDO_TXN_INFO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."DDO_TXN_INFO_TRG"    before INSERT   ON ACHADMIN.DDO_TXN_INFO   FOR EACH ROWBEGIN
  
   
   SELECT DDO_TXN_INFO_SEQ.NEXTVAL INTO :NEW.DDO_TXN_INF_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."DDO_TXN_INFO_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MANDATE_MGMT_INFO_INWARD_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."MANDATE_MGMT_INFO_INWARD_TRG"    before INSERT   ON ACHADMIN.MANDATE_MGMT_INFO_INWARD   FOR EACH ROWBEGIN
   SELECT MANDATE_MGMT_INFO_INWARD_SEQ.NEXTVAL INTO :NEW.MND_GP_HDR_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."MANDATE_MGMT_INFO_INWARD_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MANDATE_MGMT_INFO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."MANDATE_MGMT_INFO_TRG" BEFORE INSERT ON ACHADMIN.MANDATE_MGMT_INFO FOR EACH ROWBEGIN
  
      SELECT MANDATE_MGMT_INFO_SEQ.NEXTVAL INTO :NEW.MND_GP_HDR_ID FROM SYS.DUAL;
    
END;
/
ALTER TRIGGER "ACHADMIN"."MANDATE_MGMT_INFO_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PRI_GP_HEADER_INFO_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."PRI_GP_HEADER_INFO_TRIG" BEFORE INSERT ON ACHADMIN.PRI_GP_HEADER_INFO FOR EACH ROWBEGIN
   
      SELECT PRI_GP_HEADER_INFO_SEQ.NEXTVAL INTO :NEW.PR_GP_HEADER_ID FROM SYS.DUAL;
    
END;
/
ALTER TRIGGER "ACHADMIN"."PRI_GP_HEADER_INFO_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PRI_TXN_INFO_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."PRI_TXN_INFO_TRIG" BEFORE INSERT ON ACHADMIN.PRI_TXN_INFO FOR EACH ROWBEGIN
   
      SELECT PRI_TXN_INFO_SEQ.NEXTVAL INTO :NEW.PR_TXN_INFO_ID FROM SYS.DUAL;
    
END;
/
ALTER TRIGGER "ACHADMIN"."PRI_TXN_INFO_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REVI_GRP_HEADER_INFO_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."REVI_GRP_HEADER_INFO_TRIG"    before INSERT   ON ACHADMIN.REVI_GRP_HEADER_INFO   FOR EACH ROWBEGIN
    
   
    SELECT REVI_GRP_HEADER_INFO_SEQ.NEXTVAL INTO :NEW.REV_GRP_HEADER_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."REVI_GRP_HEADER_INFO_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REVI_TXN_INFO_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."REVI_TXN_INFO_TRIG"    before INSERT   ON ACHADMIN.REVI_TXN_INFO   FOR EACH ROWBEGIN
    
    SELECT REVI_TXN_INFO_SEQ.NEXTVAL INTO :NEW.REV_TXN_INF_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."REVI_TXN_INFO_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger WPS_ADD_OPS_INFO_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."WPS_ADD_OPS_INFO_TRIG"    before INSERT   ON ACHADMIN.WPS_ADD_OPS_INFO   FOR EACH ROWBEGIN
   SELECT WPS_ADD_OPS_SEQ.NEXTVAL INTO :NEW.WPS_ADD_OPS_INFO_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."WPS_ADD_OPS_INFO_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger WPS_SIF_HEADER_INFO_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."WPS_SIF_HEADER_INFO_TRIG" 
   before INSERT
   ON ACHADMIN.WPS_SIF_HEADER_INFO
   FOR EACH ROW
BEGIN
   SELECT WPS_SIF_HEADER_INFO_SEQ.NEXTVAL INTO :NEW.WPS_SIF_HEADER_INFO_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."WPS_SIF_HEADER_INFO_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger WPS_SIF_RECORD_INFO_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ACHADMIN"."WPS_SIF_RECORD_INFO_TRIG" 
   before INSERT
   ON ACHADMIN.WPS_SIF_RECORD_INFO
   FOR EACH ROW
BEGIN
   SELECT WPS_SIF_RECORD_INFO_SEQ.NEXTVAL INTO :NEW.WPS_SIF_RECORD_INFO_ID FROM SYS.DUAL;
END;
/
ALTER TRIGGER "ACHADMIN"."WPS_SIF_RECORD_INFO_TRIG" ENABLE;