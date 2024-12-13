-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Vhr0ZV
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Contacts" (
    "Contact_id" int   NOT NULL,
    "First_name" varchar   NOT NULL,
    "Last_name" varchar   NOT NULL,
    "Email" varchar   NOT NULL,
    "Primary" key   NOT NULL
);

CREATE TABLE "Category" (
    "Category_id" varchar   NOT NULL,
    "Category" varchar   NOT NULL,
    "category_id" int   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategory" (
    "Subcategory_id" varchar   NOT NULL,
    "Subcategory" varchar   NOT NULL,
    "subcategory_id" int   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Campaign" (
    "Cf_id" varchar   NOT NULL,
    "Contact_id" int   NOT NULL,
    "Company_name" varchar   NOT NULL,
    "Description" varchar   NOT NULL,
    "Goal" float   NOT NULL,
    "Pledged" float   NOT NULL,
    "Outcome" varchar   NOT NULL,
    "Backers_count" int   NOT NULL,
    "Country" varchar   NOT NULL,
    "Currency" varchar   NOT NULL,
    "Launched_date" date   NOT NULL,
    "End_date" date   NOT NULL,
    "Category_id" varchar   NOT NULL,
    "Subcategory_id" varchar   NOT NULL
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Contact_id" FOREIGN KEY("Contact_id")
REFERENCES "Contacts" ("Contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Category_id" FOREIGN KEY("Category_id")
REFERENCES "Category" ("Category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_Subcategory_id" FOREIGN KEY("Subcategory_id")
REFERENCES "Subcategory" ("Subcategory_id");

