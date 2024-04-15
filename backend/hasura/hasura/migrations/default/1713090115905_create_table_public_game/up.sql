CREATE TABLE "public"."game" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "black_player" uuid NOT NULL, "white_player" uuid NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("id") , FOREIGN KEY ("black_player") REFERENCES "public"."user"("id") ON UPDATE no action ON DELETE no action, FOREIGN KEY ("white_player") REFERENCES "public"."user"("id") ON UPDATE no action ON DELETE no action, UNIQUE ("id"));COMMENT ON TABLE "public"."game" IS E'game table';
CREATE EXTENSION IF NOT EXISTS pgcrypto;