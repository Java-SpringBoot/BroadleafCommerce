--
-- The Archetype is configured with "hibernate.hbm2ddl.auto" value="create-drop" in "persistence.xml".
--
-- This will cause hibernate to populate the database when the application is started by processing the files that
-- were configured in the hibernate.hbm2ddl.import_files property.
--
-- This file is responsible for loading the BLC out-of-box ROLES and PERMISSIONS.
--

--
-- Create BLC PERMISSIONS (These permissions are required for the admin)
--
INSERT INTO BLC_ADMIN_PERMISSION (ADMIN_PERMISSION_ID, DESCRIPTION, NAME, PERMISSION_TYPE) VALUES (-18900,'Create Custom Field','PERMISSION_CREATE_CUSTOM_FIELD','CREATE');
INSERT INTO BLC_ADMIN_PERMISSION (ADMIN_PERMISSION_ID, DESCRIPTION, NAME, PERMISSION_TYPE) VALUES (-18901,'Update Custom Field','PERMISSION_UPDATE_CUSTOM_FIELD','UPDATE');
INSERT INTO BLC_ADMIN_PERMISSION (ADMIN_PERMISSION_ID, DESCRIPTION, NAME, PERMISSION_TYPE) VALUES (-18902,'Delete Custom Field','PERMISSION_DELETE_CUSTOM_FIELD','DELETE');
INSERT INTO BLC_ADMIN_PERMISSION (ADMIN_PERMISSION_ID, DESCRIPTION, NAME, PERMISSION_TYPE) VALUES (-18903,'Read Custom Field','PERMISSION_READ_CUSTOM_FIELD','READ');
INSERT INTO BLC_ADMIN_PERMISSION (ADMIN_PERMISSION_ID, DESCRIPTION, NAME, PERMISSION_TYPE) VALUES (-18904,'All Custom Field','PERMISSION_ALL_CUSTOM_FIELD','ALL');

--
-- Create BLC ENTITY PERMISSIONS (These are specific permissions for CRUD operations on each entity being
--  managed by the BLC Admin).   Maps permissions above to allowed entity operations.
--
INSERT INTO BLC_ADMIN_PERMISSION_ENTITY (ADMIN_PERMISSION_ENTITY_ID, CEILING_ENTITY, ADMIN_PERMISSION_ID) VALUES (-18900,'com.broadleafcommerce.customfield.domain.CustomField',-18900);
INSERT INTO BLC_ADMIN_PERMISSION_ENTITY (ADMIN_PERMISSION_ENTITY_ID, CEILING_ENTITY, ADMIN_PERMISSION_ID) VALUES (-18901,'com.broadleafcommerce.customfield.domain.CustomField',-18901);
INSERT INTO BLC_ADMIN_PERMISSION_ENTITY (ADMIN_PERMISSION_ENTITY_ID, CEILING_ENTITY, ADMIN_PERMISSION_ID) VALUES (-18902,'com.broadleafcommerce.customfield.domain.CustomField',-18902);
INSERT INTO BLC_ADMIN_PERMISSION_ENTITY (ADMIN_PERMISSION_ENTITY_ID, CEILING_ENTITY, ADMIN_PERMISSION_ID) VALUES (-18903,'com.broadleafcommerce.customfield.domain.CustomField',-18903);
INSERT INTO BLC_ADMIN_PERMISSION_ENTITY (ADMIN_PERMISSION_ENTITY_ID, CEILING_ENTITY, ADMIN_PERMISSION_ID) VALUES (-18904,'com.broadleafcommerce.customfield.domain.CustomField',-18904);
--
--
-- Mapping from Roles to permissions
--
INSERT INTO BLC_ADMIN_ROLE_PERMISSION_XREF (ADMIN_ROLE_ID, ADMIN_PERMISSION_ID) VALUES (-1,-18904);

--
-- Create BLC MODULES (These modules are required for the admin left navigation)
--
INSERT INTO BLC_ADMIN_MODULE (ADMIN_MODULE_ID, NAME, MODULE_KEY, ICON, DISPLAY_ORDER) VALUES (-18900,'Custom Field','BLCCustomField','icon-user',450);

--
-- Create BLC SECTIONS (These modules are required for the admin left navigation)
--
INSERT INTO BLC_ADMIN_SECTION (ADMIN_SECTION_ID, ADMIN_MODULE_ID, NAME, SECTION_KEY, URL, USE_DEFAULT_HANDLER, CEILING_ENTITY) VALUES (-18900,-18900,'Custom Field Management','CustomFieldManagement','/custom-field-management',FALSE,'com.broadleafcommerce.customfield.domain.CustomField');

--
--
-- Mapping from Sections to Permissions
--

--Custom Field Management
INSERT INTO BLC_ADMIN_SEC_PERM_XREF (ADMIN_SECTION_ID, ADMIN_PERMISSION_ID) VALUES (-18900,-18900);
INSERT INTO BLC_ADMIN_SEC_PERM_XREF (ADMIN_SECTION_ID, ADMIN_PERMISSION_ID) VALUES (-18900,-18901);
INSERT INTO BLC_ADMIN_SEC_PERM_XREF (ADMIN_SECTION_ID, ADMIN_PERMISSION_ID) VALUES (-18900,-18902);
INSERT INTO BLC_ADMIN_SEC_PERM_XREF (ADMIN_SECTION_ID, ADMIN_PERMISSION_ID) VALUES (-18900,-18903);

