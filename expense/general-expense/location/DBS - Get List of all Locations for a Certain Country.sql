-- Replace XXX with Country Code 

-- Note: you may choose any other select columns. Also, note that this script will give more results than the simple select *columns* from ct_location where ctry_code = 'CZ' as locations may have several labels, this is: Prague, Praha, Praga… 

SELECT LOC.LOC_KEY,LOC.CTRY_CODE,LOC.CTRY_SUB_CODE,LOC.LOC_CODE,LOC.IATA_CODE,LOC.IS_AIRPORT, LOC.TIME_ZONE_OFFSET,LOC.IS_CONCUR_MAINTAINED,NAME.NAME  

FROM CT_LOCATION AS LOC JOIN CT_LOCATION_NAME AS NAME ON LOC.LOC_KEY = NAME.LOC_KEY  

WHERE LOC.CTRY_CODE = 'XXX' AND LOC.IS_DELETED = 'N' 
