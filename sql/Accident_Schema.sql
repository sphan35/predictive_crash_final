CREATE TABLE "Accident" (
    "Crash_ID" int   NOT NULL,
    "Crash_Date" date,
    "Crash_Time" time,
    "Day_of_Week" varchar,
    "Adt_Curnt_Amt" decimal(10),
    "Adt_Curnt_Year" varchar,
    "Trk_Aadt_Pct" decimal(2),
    "Year" varchar,
    CONSTRAINT "pk_Accident" PRIMARY KEY (
        "Crash_ID"
     )
);

CREATE TABLE "Accident_Injury" (
    "Crash_ID" int   NOT NULL,
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
    "Crash_ID" int   NOT NULL,
    "Cmv_Involv_Fl" varchar,
    CONSTRAINT "pk_Accident_Vehicle" PRIMARY KEY (
        "Crash_ID"
     )
);

CREATE TABLE "Accident_Location" (
    "Crash_ID" int   NOT NULL,
    "Cnty_ID" int,
    "City_ID" int,
    "Latitude" decimal(10),
    "Longitude" decimal(10),
    "Hwy_Sys" varchar,
    "Hwy_Nbr" varchar,
    "Dfo" decimal(4),
    "Street_Name" varchar,
    "Onsys_Fl" varchar,
    "Rural_Fl" varchar,
    "Shldr_Width_Left" decimal(10),
    "Shldr_Width_Right" decimal(10),
    "Median_Width" decimal(10),
    "Nbr_Of_Lane" decimal(10),
    "Func_Sys_ID" decimal(10),
    "Curve_Type_ID" decimal(10),
    "HY_1" int,
    "HY_2" int,
    "HY_3" int,
    "HY_4" int,
    "Corridor_ID" int,
    "Road_ID" int,
    "Average_AADT" decimal(10),
    "RLD" int,
    "PED" int,
    "INT" int,
    CONSTRAINT "pk_Accident_Location" PRIMARY KEY (
        "Crash_ID"
     )
);

CREATE TABLE "Accident_Conditions" (
    "Crash_ID" int   NOT NULL,
    "Crash_Speed_Limit" int,
    "Wthr_Cond_ID" int,
    "Light_Cond_ID" int,
    "Surf_Cond_ID" int,
    "Traffic_Cntl_ID" int,
    "Harm_Evnt_ID" int,
    "Intrsct_Relat_ID" decimal(3),
    "FHE_Collsn_ID" int,
    "Road_Relat_ID" decimal(3),
    CONSTRAINT "pk_Accident_Conditions" PRIMARY KEY (
        "Crash_ID"
     )
);

CREATE TABLE "Accident_RINO" (
    "Road_ID" int   NOT NULL,
    "RIA_RTE_ID" varchar,
    "FRM_DFO" decimal(4),
    "TO_DFO" decimal(4),
    "HWY" varchar,
    "HSYS" varchar,
    "HNUM" int,
    "DI" int,
    "CO" int,
    "CITY" int,
    "RU" int,
    "F_SYSTEM" int,
    "SPD_MAX" int,
    "HP_MED_W" int,
    "NUM_LANES" int,
    "SUR_W" int,
    "ADT_YEAR" int,
    "ADT_CUR" int,
    "ADT_ADJ" int,
    "TRK_AADT_PCT" decimal(2),
    "AADT_TRUCKS" int,
    "LANE_WIDTH" int,
    "LEN_SEC" decimal(4),
    "LN_MILES" decimal(10),
    "DVMT" decimal(10),
    "DTRKVMT" decimal(10),
    "Corridor_ID" int,
    "HY_1" int,
    "HY_2" int,
    "HY_3" int,
    "HY_4" int,
    CONSTRAINT "pk_Accident_RINO" PRIMARY KEY (
        "Road_ID"
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
