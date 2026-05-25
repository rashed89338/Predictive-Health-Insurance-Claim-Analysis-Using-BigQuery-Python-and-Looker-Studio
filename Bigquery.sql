-- Preview data
SELECT *
FROM `project-ef2a3aed-6b63-4885-9aa.Health_Insurance_Data.Healthinsurance`
LIMIT 10;

-- Summary statistics
SELECT
  COUNT(*) AS total_records,
  ROUND(AVG(age), 2) AS avg_age,
  ROUND(AVG(bmi), 2) AS avg_bmi,
  ROUND(AVG(claim), 2) AS avg_claim,
  ROUND(SUM(claim), 2) AS total_claim
FROM `project-ef2a3aed-6b63-4885-9aa.Health_Insurance_Data.Healthinsurance`;

-- Average claim by smoker
SELECT
  smoker,
  COUNT(*) AS total_people,
  ROUND(AVG(claim), 2) AS avg_claim,
  ROUND(SUM(claim), 2) AS total_claim
FROM `project-ef2a3aed-6b63-4885-9aa.Health_Insurance_Data.Healthinsurance`
GROUP BY smoker
ORDER BY avg_claim DESC;

-- Average claim by diabetes
SELECT
  diabetes,
  COUNT(*) AS total_people,
  ROUND(AVG(claim), 2) AS avg_claim,
  ROUND(SUM(claim), 2) AS total_claim
FROM `project-ef2a3aed-6b63-4885-9aa.Health_Insurance_Data.Healthinsurance`
GROUP BY diabetes
ORDER BY avg_claim DESC;

-- Total claim by city
SELECT
  city,
  COUNT(*) AS total_people,
  ROUND(AVG(claim), 2) AS avg_claim,
  ROUND(SUM(claim), 2) AS total_claim
FROM `project-ef2a3aed-6b63-4885-9aa.Health_Insurance_Data.Healthinsurance`
GROUP BY city
ORDER BY total_claim DESC;

-- Average claim by hereditary disease
SELECT
  hereditary_diseases,
  COUNT(*) AS total_people,
  ROUND(AVG(claim), 2) AS avg_claim
FROM `project-ef2a3aed-6b63-4885-9aa.Health_Insurance_Data.Healthinsurance`
GROUP BY hereditary_diseases
ORDER BY avg_claim DESC;
