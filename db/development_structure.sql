CREATE TABLE "attendees" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "email" varchar(255), "phone" varchar(255), "created_at" datetime, "updated_at" datetime, "attended" boolean DEFAULT 'f');
CREATE TABLE "schedule_item_levels" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schedule_item_types" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schedule_items" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "start_at" datetime, "end_at" datetime, "created_at" datetime, "updated_at" datetime, "schedule_item_type_id" integer, "schedule_item_level_id" integer);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20110803042143');

INSERT INTO schema_migrations (version) VALUES ('20110803042436');

INSERT INTO schema_migrations (version) VALUES ('20110803050422');

INSERT INTO schema_migrations (version) VALUES ('20110809044409');

INSERT INTO schema_migrations (version) VALUES ('20110809044443');

INSERT INTO schema_migrations (version) VALUES ('20110809045851');