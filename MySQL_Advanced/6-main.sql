-- Show existing projects and corrections before calling procedure
SELECT * FROM projects;
SELECT * FROM corrections;

-- Call AddBonus procedure for Jeanne
CALL AddBonus((SELECT id FROM users WHERE name = "Jeanne"), "Python is cool", 100);
CALL AddBonus((SELECT id FROM users WHERE name = "Jeanne"), "Bonus project", 100);
CALL AddBonus((SELECT id FROM users WHERE name = "Bob"), "Bonus project", 10);
CALL AddBonus((SELECT id FROM users WHERE name = "Jeanne"), "New bonus", 90);

-- Show updated projects and corrections after calling procedure
SELECT * FROM projects;
SELECT * FROM corrections;
