CREATE TABLE "Accident" (
    "Crash_ID" varchar   NOT NULL,
    "Crash_Date" date,
    "Crash_Time" time,
    "Day_of_Week" varchar,
    "Adt_Curnt_Amt" int,
    "Adt_Curnt_Year" date,
    "Trk_Aadt_Pct" int,
    "Year" date,
    "Top10" int,
    CONSTRAINT "pk_Accident" PRIMARY KEY (
        "Crash_ID"
     )
);

CREATE TABLE "Accident_Injury" (
    "Crash_ID" varchar   NOT NULL,
    "Crash_Sev_ID" int,
    "Nonincap_Injry_Cnt" int,
    "Poss_Injry_Cnt" int,
    "Non_Injry_Cnt" int,
    "Unkn_Injry_Cnt" int,
    "Tot_Injry_Cnt" int,
    "Death_Cnt" int,
    CONSTRAINT "pk_Accident_Injury" PRIMARY KEY (
        "Crash_ID"
     )
);

CREATE TABLE "Accident_Vehicle" (
    "Crash_ID" varchar   NOT NULL,
    "Cmv_Involv_Fl" varchar,
    CONSTRAINT "pk_Accident_Vehicle" PRIMARY KEY (
        "Crash_ID"
     )
);

CREATE TABLE "Accident_Location" (
    "Crash_ID" varchar   NOT NULL,
    "Cnty_ID" int,
    "City_ID" int,
    "Latitude" int,
    "Longitude" int
    "Hwy_Sys" varchar,
    "Hwy_Nbr" varchar,
    "Dfo" int,
    "Street_Name" varchar,
    "Onsys_Fl" varchar,
    "Rural_Fl" varchar,
    "Shldr_Width_Left" int,
    "Shldr_Width_Right" int,
    "Median_Width" int,
    "Nbr_Of_Lane" int,
    "Func_Sys_ID" int
    "Curve_Type_ID" int,
    "Curve_Lngth" int,
    "Cd_Degr" int,
    CONSTRAINT "pk_Accident_Location" PRIMARY KEY (
        "Crash_ID"
     )
);

CREATE TABLE "Accident_Conditions" (
    "Crash_ID" varchar   NOT NULL,
    "Crash_Speed_Limit" int,
    "Wthr_Cond_ID" int,
    "Light_Cond_ID" int,
    "Surf_Cond_ID" int,
    "Traffic_Cntl_ID" int,
    "Harm_Evnt_ID" int,
    "Intrsct_Relat_ID" int,
    "FHE_Collsn_ID" int,
    "Road_Relat_ID" int,
    CONSTRAINT "pk_Accident_Conditions" PRIMARY KEY (
        "Crash_ID"
     )
);

ALTER TABLE "Accident" ADD CONSTRAINT "fk_Accident_Crash_ID" FOREIGN KEY("Crash_ID")
REFERENCES "Accident_Vehicle" ("Crash_ID");

ALTER TABLE "Accident_Injury" ADD CONSTRAINT "fk_Accident_Injury_Crash_ID" FOREIGN KEY("Crash_ID")
REFERENCES "Accident" ("Crash_ID");

ALTER TABLE "Accident_Location" ADD CONSTRAINT "fk_Accident_Location_Crash_ID" FOREIGN KEY("Crash_ID")
REFERENCES "Accident" ("Crash_ID");

ALTER TABLE "Accident_Conditions" ADD CONSTRAINT "fk_Accident_Conditions_Crash_ID" FOREIGN KEY("Crash_ID")
REFERENCES "Accident" ("Crash_ID");