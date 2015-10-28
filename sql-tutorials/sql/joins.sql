
use sql_tutorials;

# Returns only those people with prescriptions (and no empty prescriptions)
SELECT people.name, prescription.medication_name
FROM people
INNER JOIN prescription
ON prescription.patient_id = people.id;

# Returns all people, even those without prescriptions
SELECT people.name, prescription.medication_name
FROM people
  LEFT JOIN prescription
    ON prescription.patient_id = people.id;

# Returns only those people with prescriptions (and no empty prescriptions)
SELECT people.name, prescription.medication_name
FROM people
  INNER JOIN prescription
    ON prescription.patient_id = people.id;


# Returns number of prescriptions per person
SELECT people.name, COUNT(prescription.id) AS prescriptions
FROM people
  INNER JOIN prescription
    ON prescription.patient_id = people.id
GROUP BY name;

# SELECT people.name, prescription.medication_name
# FROM people
#      FULL OUTER JOIN prescription
# ON prescription.patient_id = people.id
# ORDER BY people.name;

# --> THIS IS THE SAME AS BELOW

# SELECT
#   people.name,people.id,
#   prescription.medication_name
# FROM people
#   LEFT JOIN prescription
#     ON prescription.patient_id = people.id
# UNION
# SELECT
#   people.name,people.id,
#   prescription.medication_name
# FROM people
#   RIGHT JOIN prescription
#     ON prescription.patient_id = people.id
# ORDER BY id

#BELOW does not really prove it tho... unless you count the rows of each join.
SET @q1 := (
  SELECT
#     count(unionA.name) as countA, count(unionB.name) as countB,
#     count(unionA.medication_name) as countA1, count(unionB.medication_name) as countB1,
    unionA.id,
    unionB.id,
    unionA.name, unionA.medication_name,
    unionB.name, unionB.medication_name
  FROM (
         SELECT
           people.name,people.id,
           prescription.medication_name
         FROM people
           LEFT JOIN prescription
             ON prescription.patient_id = people.id
         UNION
         SELECT
           people.name,people.id,
           prescription.medication_name
         FROM people
           RIGHT JOIN prescription
             ON prescription.patient_id = people.id
         ORDER BY id
       ) AS unionA

    INNER JOIN (
                # WHICH SHOULD BE THE SAME AS...
                SELECT
                  people.name,people.id,
                  prescription.medication_name
                FROM people
                  LEFT OUTER JOIN prescription
                    ON prescription.patient_id = people.id
                UNION
                SELECT
                  people.name,people.id,
                  prescription.medication_name
                FROM people
                  RIGHT OUTER JOIN prescription
                    ON prescription.patient_id = people.id
                WHERE prescription.patient_id IS NULL
               ORDER BY id
              ) AS unionB
      ON unionA.medication_name = unionB.medication_name AND unionA.id = unionB.id
WHERE unionB.id IS NULL
);

SELECT  count(unionA.name) FROM unionA;

# ORDER BY people.name;