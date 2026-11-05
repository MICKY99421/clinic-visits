SELECT count(*) FROM raw_clinic.visits;

SELECT table_name FROM information_schema.tables
WHERE table_schema = 'raw_clinic' ORDER BY table_name;

CREATE TABLE group2b.access_test AS SELECT 1 AS it_works;
SELECT * FROM group2b.access_test;
DROP TABLE group2b.access_test;

SELECT min(visit_date) AS earliest,
       max(visit_date) AS latest
FROM raw_clinic.visits;

SELECT visit_type, count(*) AS rows
FROM raw_clinic.visits
GROUP BY visit_type
ORDER BY rows DESC;

SELECT count(*)                          AS total,
       count(visit_type)                AS have_a_value,
       count(*) - count(visit_type)     AS missing
FROM raw_clinic.visits;

SELECT count(*)                      AS rows,
       count(DISTINCT visit_id)       AS unique_ids,
       count(*) - count(DISTINCT visit_id) AS extras
FROM raw_clinic.visits;

SELECT departments.department_name,
       count(*) AS rows
FROM raw_clinic.visits
JOIN raw_clinic.departments
  ON visits.department_id = departments.department_id
GROUP BY departments.department_name
ORDER BY rows DESC;

SELECT
    ROUND(AVG(wait_minutes)::numeric, 2) AS average_wait
FROM group2b.visits_clean;


SELECT
    ROUND(
        PERCENTILE_CONT(0.5)
        WITHIN GROUP (ORDER BY wait_minutes)::numeric,
        2
    ) AS median_wait
FROM group2b.visits_clean;

SELECT COUNT(*) AS total_visits
FROM group2b.visits_clean;

SELECT
    visit_type,
    COUNT(*) AS visit_count
FROM group2b.visits_clean
GROUP BY visit_type
ORDER BY visit_type;



SELECT
    ROUND(SUM(consultation_fee)::numeric, 2) AS fee_revenue
FROM group2b.visits_clean;

SELECT
    ROUND(
        100.0 * COUNT(*) FILTER (
            WHERE visit_type = 'Emergency'
        ) / NULLIF(COUNT(*), 0),
        2
    ) AS emergency_percentage
FROM group2b.visits_clean;