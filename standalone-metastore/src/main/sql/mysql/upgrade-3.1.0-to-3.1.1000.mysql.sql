SELECT 'Upgrading MetaStore schema from 3.1.0 to 3.1.1000' AS MESSAGE;

-- HIVE-20221
ALTER TABLE PARTITION_PARAMS MODIFY PARAM_VALUE MEDIUMTEXT;

-- These lines need to be last.  Insert any changes above.
UPDATE VERSION SET SCHEMA_VERSION='3.1.1000', VERSION_COMMENT='Hive release version 3.1.1000' where VER_ID=1;
SELECT 'Finished upgrading MetaStore schema from 3.1.0 to 3.1.1000' AS MESSAGE;
