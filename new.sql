CREATE TABLE "Job_Seeker" (
  "user_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "email_address" VARCHAR(50),
  "city_address" VARCHAR(50),
  PRIMARY KEY ("user_id")
);

CREATE TABLE "Employer" (
  "company_id" SERIAL,
  "company_name" VARCHAR(50),
  "industry" VARCHAR(50),
  PRIMARY KEY ("company_id")
);

CREATE TABLE "Open_Position" (
  "job_id" SERIAL,
  "position_title" VARCHAR(50),
  "division" VARCHAR(50),
  "company_id" SERIAL,
  PRIMARY KEY ("job_id"),
  CONSTRAINT "FK_Open Position.job_id"
    FOREIGN KEY ("job_id")
      REFERENCES "Employer"("company_id")
);

CREATE INDEX "FK(company_id)" ON  "Open Position" ("company_id");

CREATE TABLE "Application" (
  "application_id" SERIAL,
  "job_id" SERIAL,
  "user_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "email_address" VARCHAR(50),
  PRIMARY KEY ("application_id")
);

CREATE INDEX "FK(job_id)" ON  "Application" ("job_id");

CREATE INDEX "FK(user_id)" ON  "Application" ("user_id");

CREATE INDEX "FK(first_name)" ON  "Application" ("first_name");

CREATE INDEX "FK(last_name)" ON  "Application" ("last_name");

CREATE INDEX "FK(email_address)" ON  "Application" ("email_address");

