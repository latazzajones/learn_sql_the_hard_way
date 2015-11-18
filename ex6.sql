SELECT pet.id, pet.name, pet.age, pet.dead
  FROM pet, person_pet, person
  WHERE
  pet.id = person_pet.pet_id AND
  person_pet.person_id = person.id AND
  person.first_name = "Zed";

-- Do a query that finds your pets you've added thus far.
-- Change the queries to use your person.id intead of the person.name like I've been doing.
SELECT pet.id, pet.name, pet.age
  FROM pet, person_pet, person
  WHERE
  pet.id = person_pet.pet_id AND
  person_pet.person_id = person.id AND
  person.id = 1;
