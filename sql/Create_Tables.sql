CREATE TABLE "Accident" (
    "Crash_ID" varchar   NOT NULL,
    "Crash_Date" date   NOT NULL,
    "Crash_Time" time   NOT NULL,
    "Day_of_Week" varchar   NOT NULL,
    "Adt_Curnt_Amt" int   NOT NULL,
    "Adt_Curnt_Year" varchar   NOT NULL,
    "Trk_Aadt_Pct" decimal(2)   NOT NULL,
    "Year" varchar   NOT NULL,
    "Top10" int   NOT NULL,
    CONSTRAINT "pk_Accident" PRIMARY KEY (
        "Crash_ID"
     )
);

CREATE TABLE "Accident_Injury" (
    "Crash_ID" varchar   NOT NULL,
    "Crash_Sev_ID" int   NOT NULL,
    "Nonincap_Injry_Cnt" int   NOT NULL,
    "Poss_Injry_Cnt" int   NOT NULL,
    "Non_Injry_Cnt" int   NOT NULL,
    "Unkn_Injry_Cnt" int   NOT NULL,
    "Tot_Injry_Cnt" int   NOT NULL,
    "Death_Cnt" int   NOT NULL,
    CONSTRAINT "pk_Accident_Injury" PRIMARY KEY (
        "Crash_ID"
     )
);

CREATE TABLE "Accident_Vehicle" (
    "Crash_ID" varchar   NOT NULL,
    "Cmv_Involv_Fl" varchar   NOT NULL,
    CONSTRAINT "pk_Accident_Vehicle" PRIMARY KEY (
        "Crash_ID"
     )
);

CREATE TABLE "Accident_Location" (
    "Crash_ID" varchar   NOT NULL,
    "Cnty_ID" int   NOT NULL,
    "City_ID" int   NOT NULL,
    "Latitude" decimal(10)   NOT NULL,
    "Longitude" decimal(10)   NOT NULL,
    "Hwy_Sys" varchar   NOT NULL,
    "Hwy_Nbr" varchar   NOT NULL,
    "Dfo" decimal(4)   NOT NULL,
    "Street_Name" varchar   NOT NULL,
    "Onsys_Fl" varchar   NOT NULL,
    "Rural_Fl" varchar   NOT NULL,
    "Shldr_Width_Left" int   NOT NULL,
    "Shldr_Width_Right" int   NOT NULL,
    "Median_Width" int   NOT NULL,
    "Nbr_Of_Lane" int   NOT NULL,
    "Func_Sys_ID" int   NOT NULL,
    "Curve_Type_ID" int   NOT NULL,
    CONSTRAINT "pk_Accident_Location" PRIMARY KEY (
        "Crash_ID"
     )
);

CREATE TABLE "Accident_Conditions" (
    "Crash_ID" varchar   NOT NULL,
    "Crash_Speed_Limit" int   NOT NULL,
    "Wthr_Cond_ID" int   NOT NULL,
    "Light_Cond_ID" int   NOT NULL,
    "Surf_Cond_ID" int   NOT NULL,
    "Traffic_Cntl_ID" int   NOT NULL,
    "Harm_Evnt_ID" int   NOT NULL,
    "Intrsct_Relat_ID" int   NOT NULL,
    "FHE_Collsn_ID" int   NOT NULL,
    "Road_Relat_ID" int   NOT NULL,
    CONSTRAINT "pk_Accident_Conditions" PRIMARY KEY (
        "Crash_ID"
     )
);

CREATE TABLE "Accident_Top10" (
    "ID" int   NOT NULL,
    "RIA_RTE_ID" varchar   NOT NULL,
    "FRM_DFO" decimal(4)   NOT NULL,
    "TO_DFO" decimal(4)   NOT NULL,
    "HWY" varchar   NOT NULL,
    "HSYS" varchar   NOT NULL,
    "HNUM" int   NOT NULL,
    "DI" int   NOT NULL,
    "CO" int   NOT NULL,
    "CITY" int   NOT NULL,
    "RU" int   NOT NULL,
    "F_SYSTEM" int   NOT NULL,
    "SPD_MAX" int   NOT NULL,
    "HP_MED_W" int   NOT NULL,
    "NUM_LANES" int   NOT NULL,
    "SUR_W" int   NOT NULL,
    "ADT_YEAR" date   NOT NULL,
    "ADT_CUR" int   NOT NULL,
    "ADT_ADJ" int   NOT NULL,
    "TRK_AADT_PCT" decimal(2)   NOT NULL,
    "AADT_TRUCKS" int   NOT NULL,
    "LANE_WIDTH" int   NOT NULL,
    "LEN_SEC" decimal(4)   NOT NULL,
    "LN_MILES" decimal(10)   NOT NULL,
    "DVMT" decimal(10)   NOT NULL,
    "DTRKVMT" decimal(10)   NOT NULL,
    "top10" int   NOT NULL,
    "Corridor_ID" int   NOT NULL,
    "Shape_Length" decimal(10)   NOT NULL,
    CONSTRAINT "pk_Accident_Top10" PRIMARY KEY (
        "ID"
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

