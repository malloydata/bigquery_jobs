-- Inside Google information_schema is large, make a copy

DECLARE MAX_TIME TIMESTAMP DEFAULT TIMESTAMP('2023-03-16');
SET MAX_TIME =  (SELECT TIMESTAMP_ADD(MAX(creation_time), INTERVAL -10 minute) from malloytest.info_schema_jobs);

merge into `malloy-303216.malloytest.info_schema_jobs` as j
USING (select * from `region-us`.INFORMATION_SCHEMA.JOBS WHERE creation_time > MAX_TIME) as i
ON 
  concat(cast(j.creation_time as string), j.job_id) = 
    concat(cast(i.creation_time as string), i.job_id)
WHEN NOT MATCHED THEN
  INSERT ROW