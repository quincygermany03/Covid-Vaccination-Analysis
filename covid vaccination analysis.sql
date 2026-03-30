

with active_patients as 
(
	select distinct patient
	from encounters as e
	join patients as pat
	on e.patient = pat.id
	where start between '2019-01-01 00:00' AND '2020-12-31 23:59'
	and pat.deathdate is null
	and extract(month from age('2022-12-31',pat.birthdate)) >=6

),

covid19_shot_2019 AS 
(
  SELECT patient, MIN(date) AS earliest_covid19_shot_2019
  FROM immunizations
  WHERE code = '140'
    AND date BETWEEN '2019-01-01 00:00' AND '2020-12-31 23:59'
  GROUP BY patient
)
SELECT
  pat.birthdate,
  pat.race,
  pat.county,
  pat.id,
  pat.first,
  pat.last,
  covid19.patient,
  covid19.earliest_covid19_shot_2019,
  case when covid19.patient is not null then 1
  else 0
  end as covid19_shot_2019
FROM patients AS pat
LEFT JOIN covid19_shot_2019 AS covid19
  ON pat.id = covid19.patient
where 1=1
 	and pat.id in (select patient from active_patients)


