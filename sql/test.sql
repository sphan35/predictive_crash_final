CREATE TABLE public.crash_analysis
(
    "Crash_ID" integer NOT NULL,
    "Crash_Date" date,
    "Crash_Time" time with time zone,
    "Crash_Speed_Limit" integer,
    "Crash_Fatal_Fl" "char",
    "Rpt_Hwy_Num" "char",
    CONSTRAINT crash_analysis_pkey PRIMARY KEY ("Crash_ID")
)

TABLESPACE pg_default;

ALTER TABLE public.crash_analysis
    OWNER to postgres;